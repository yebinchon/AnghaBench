
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ mbox_off; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;
struct nfp_abm_link {TYPE_3__* abm; struct nfp_net* vnic; } ;
struct TYPE_6__ {unsigned int prio_map_len; TYPE_2__* app; } ;
struct TYPE_5__ {int cpp; } ;


 scalar_t__ NFP_NET_ABM_MBOX_DATA ;
 scalar_t__ NFP_NET_ABM_MBOX_DATALEN ;
 int NFP_NET_CFG_MBOX_CMD_PCI_DSCP_PRIOMAP_SET ;
 int nfp_err (int ,char*,int) ;
 int nfp_net_mbox_lock (struct nfp_net*,unsigned int) ;
 int nfp_net_mbox_reconfig_and_unlock (struct nfp_net*,int const) ;
 int nn_writel (struct nfp_net*,scalar_t__,int ) ;
 int nn_writeq (struct nfp_net*,scalar_t__,unsigned int) ;

int nfp_abm_ctrl_prio_map_update(struct nfp_abm_link *alink, u32 *packed)
{
 const u32 cmd = NFP_NET_CFG_MBOX_CMD_PCI_DSCP_PRIOMAP_SET;
 struct nfp_net *nn = alink->vnic;
 unsigned int i;
 int err;

 err = nfp_net_mbox_lock(nn, alink->abm->prio_map_len);
 if (err)
  return err;


 nn_writeq(nn, nn->tlv_caps.mbox_off + NFP_NET_ABM_MBOX_DATALEN,
    alink->abm->prio_map_len);

 for (i = 0; i < alink->abm->prio_map_len; i += sizeof(u32))
  nn_writel(nn, nn->tlv_caps.mbox_off + NFP_NET_ABM_MBOX_DATA + i,
     packed[i / sizeof(u32)]);

 err = nfp_net_mbox_reconfig_and_unlock(nn, cmd);
 if (err)
  nfp_err(alink->abm->app->cpp,
   "setting DSCP -> VQ map failed with error %d\n", err);
 return err;
}
