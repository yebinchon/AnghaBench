
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ vfcfg_tbl2; } ;


 int EINVAL ;
 int FIELD_PREP (int ,int) ;



 int NFP_NET_VF_CFG_CTRL ;
 int NFP_NET_VF_CFG_CTRL_LINK_STATE ;
 int NFP_NET_VF_CFG_MB_CAP_LINK_STATE ;
 int NFP_NET_VF_CFG_MB_SZ ;
 int NFP_NET_VF_CFG_MB_UPD_LINK_STATE ;
 int NFP_NET_VF_CFG_SZ ;
 struct nfp_app* nfp_app_from_netdev (struct net_device*) ;
 int nfp_net_sriov_check (struct nfp_app*,int,int ,char*) ;
 int nfp_net_sriov_update (struct nfp_app*,int,int ,char*) ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

int nfp_app_set_vf_link_state(struct net_device *netdev, int vf,
         int link_state)
{
 struct nfp_app *app = nfp_app_from_netdev(netdev);
 unsigned int vf_offset;
 u8 vf_ctrl;
 int err;

 err = nfp_net_sriov_check(app, vf, NFP_NET_VF_CFG_MB_CAP_LINK_STATE,
      "link_state");
 if (err)
  return err;

 switch (link_state) {
 case 130:
 case 128:
 case 129:
  break;
 default:
  return -EINVAL;
 }


 vf_offset = NFP_NET_VF_CFG_MB_SZ + vf * NFP_NET_VF_CFG_SZ +
  NFP_NET_VF_CFG_CTRL;
 vf_ctrl = readb(app->pf->vfcfg_tbl2 + vf_offset);
 vf_ctrl &= ~NFP_NET_VF_CFG_CTRL_LINK_STATE;
 vf_ctrl |= FIELD_PREP(NFP_NET_VF_CFG_CTRL_LINK_STATE, link_state);
 writeb(vf_ctrl, app->pf->vfcfg_tbl2 + vf_offset);

 return nfp_net_sriov_update(app, vf, NFP_NET_VF_CFG_MB_UPD_LINK_STATE,
        "link state");
}
