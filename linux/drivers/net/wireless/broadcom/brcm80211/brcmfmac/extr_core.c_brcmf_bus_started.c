
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cfg80211_ops {int dummy; } ;
struct TYPE_6__ {int notifier_call; } ;
struct TYPE_7__ {int notifier_call; } ;
struct brcmf_pub {TYPE_1__* settings; struct brcmf_if** iflist; int * config; int bus_reset; TYPE_2__ inetaddr_notifier; TYPE_4__ inet6addr_notifier; struct brcmf_bus* bus_if; } ;
struct brcmf_if {int ndev; } ;
struct brcmf_bus {int dummy; } ;
struct TYPE_5__ {scalar_t__ ignore_probe_fail; scalar_t__ p2p_enable; } ;


 int BRCMF_BUS_UP ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct brcmf_if*) ;
 int PTR_ERR (struct brcmf_if*) ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 struct brcmf_if* brcmf_add_if (struct brcmf_pub*,int ,int ,int,char*,int *) ;
 int brcmf_bus_change_state (struct brcmf_bus*,int ) ;
 int brcmf_bus_debugfs_create (struct brcmf_bus*) ;
 int brcmf_bus_preinit (struct brcmf_bus*) ;
 int brcmf_c_preinit_dcmds (struct brcmf_if*) ;
 int * brcmf_cfg80211_attach (struct brcmf_pub*,struct cfg80211_ops*,scalar_t__) ;
 int brcmf_cfg80211_detach (int *) ;
 int brcmf_core_bus_reset ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_debugfs_add_entry (struct brcmf_pub*,char*,int ) ;
 int brcmf_debugfs_get_devdir (struct brcmf_pub*) ;
 int brcmf_feat_attach (struct brcmf_pub*) ;
 int brcmf_feat_debugfs_create (struct brcmf_pub*) ;
 int brcmf_inet6addr_changed ;
 int brcmf_inetaddr_changed ;
 int brcmf_net_attach (struct brcmf_if*,int) ;
 int brcmf_net_detach (int ,int) ;
 int brcmf_net_p2p_attach (struct brcmf_if*) ;
 int brcmf_proto_add_if (struct brcmf_pub*,struct brcmf_if*) ;
 int brcmf_proto_debugfs_create (struct brcmf_pub*) ;
 int brcmf_proto_init_done (struct brcmf_pub*) ;
 int brcmf_revinfo_read ;
 int bus_reset_fops ;
 int debugfs_create_file (char*,int,int ,struct brcmf_pub*,int *) ;
 int register_inet6addr_notifier (TYPE_4__*) ;
 int register_inetaddr_notifier (TYPE_2__*) ;
 int unregister_inetaddr_notifier (TYPE_2__*) ;

__attribute__((used)) static int brcmf_bus_started(struct brcmf_pub *drvr, struct cfg80211_ops *ops)
{
 int ret = -1;
 struct brcmf_bus *bus_if = drvr->bus_if;
 struct brcmf_if *ifp;
 struct brcmf_if *p2p_ifp;

 brcmf_dbg(TRACE, "\n");


 ifp = brcmf_add_if(drvr, 0, 0, 0, "wlan%d", ((void*)0));
 if (IS_ERR(ifp))
  return PTR_ERR(ifp);

 p2p_ifp = ((void*)0);


 brcmf_bus_change_state(bus_if, BRCMF_BUS_UP);


 ret = brcmf_bus_preinit(bus_if);
 if (ret < 0)
  goto fail;


 ret = brcmf_c_preinit_dcmds(ifp);
 if (ret < 0)
  goto fail;

 brcmf_feat_attach(drvr);

 ret = brcmf_proto_init_done(drvr);
 if (ret < 0)
  goto fail;

 brcmf_proto_add_if(drvr, ifp);

 drvr->config = brcmf_cfg80211_attach(drvr, ops,
          drvr->settings->p2p_enable);
 if (drvr->config == ((void*)0)) {
  ret = -ENOMEM;
  goto fail;
 }

 ret = brcmf_net_attach(ifp, 0);

 if ((!ret) && (drvr->settings->p2p_enable)) {
  p2p_ifp = drvr->iflist[1];
  if (p2p_ifp)
   ret = brcmf_net_p2p_attach(p2p_ifp);
 }

 if (ret)
  goto fail;
 INIT_WORK(&drvr->bus_reset, brcmf_core_bus_reset);


 brcmf_debugfs_add_entry(drvr, "revinfo", brcmf_revinfo_read);
 debugfs_create_file("reset", 0600, brcmf_debugfs_get_devdir(drvr), drvr,
       &bus_reset_fops);
 brcmf_feat_debugfs_create(drvr);
 brcmf_proto_debugfs_create(drvr);
 brcmf_bus_debugfs_create(bus_if);

 return 0;

fail:
 bphy_err(drvr, "failed: %d\n", ret);
 if (drvr->config) {
  brcmf_cfg80211_detach(drvr->config);
  drvr->config = ((void*)0);
 }
 brcmf_net_detach(ifp->ndev, 0);
 if (p2p_ifp)
  brcmf_net_detach(p2p_ifp->ndev, 0);
 drvr->iflist[0] = ((void*)0);
 drvr->iflist[1] = ((void*)0);
 if (drvr->settings->ignore_probe_fail)
  ret = 0;

 return ret;
}
