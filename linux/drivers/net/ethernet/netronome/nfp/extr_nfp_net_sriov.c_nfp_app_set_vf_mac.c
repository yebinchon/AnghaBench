
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cpp; scalar_t__ vfcfg_tbl2; } ;


 int EINVAL ;
 scalar_t__ NFP_NET_VF_CFG_MAC_LO ;
 int NFP_NET_VF_CFG_MB_CAP_MAC ;
 int NFP_NET_VF_CFG_MB_SZ ;
 int NFP_NET_VF_CFG_MB_UPD_MAC ;
 int NFP_NET_VF_CFG_SZ ;
 int get_unaligned_be16 (int *) ;
 int get_unaligned_be32 (int *) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 struct nfp_app* nfp_app_from_netdev (struct net_device*) ;
 int nfp_info (int ,char*,int *,int) ;
 int nfp_net_sriov_check (struct nfp_app*,int,int ,char*) ;
 int nfp_net_sriov_update (struct nfp_app*,int,int ,char*) ;
 int nfp_warn (int ,char*,int *,int) ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

int nfp_app_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
{
 struct nfp_app *app = nfp_app_from_netdev(netdev);
 unsigned int vf_offset;
 int err;

 err = nfp_net_sriov_check(app, vf, NFP_NET_VF_CFG_MB_CAP_MAC, "mac");
 if (err)
  return err;

 if (is_multicast_ether_addr(mac)) {
  nfp_warn(app->pf->cpp,
    "invalid Ethernet address %pM for VF id %d\n",
    mac, vf);
  return -EINVAL;
 }


 vf_offset = NFP_NET_VF_CFG_MB_SZ + vf * NFP_NET_VF_CFG_SZ;
 writel(get_unaligned_be32(mac), app->pf->vfcfg_tbl2 + vf_offset);
 writew(get_unaligned_be16(mac + 4),
        app->pf->vfcfg_tbl2 + vf_offset + NFP_NET_VF_CFG_MAC_LO);

 err = nfp_net_sriov_update(app, vf, NFP_NET_VF_CFG_MB_UPD_MAC, "MAC");
 if (!err)
  nfp_info(app->pf->cpp,
    "MAC %pM set on VF %d, reload the VF driver to make this change effective.\n",
    mac, vf);

 return err;
}
