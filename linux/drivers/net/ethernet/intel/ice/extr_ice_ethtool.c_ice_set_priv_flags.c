
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct ice_priv_flag {int bitno; } ;
struct ice_pf {int flags; TYPE_1__* pdev; int hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {int dev; } ;


 size_t BIT (size_t) ;
 int DECLARE_BITMAP (int ,int ) ;
 int EINVAL ;
 int ICE_FLAG_ETHTOOL_CTXT ;
 int ICE_FLAG_FW_LLDP_AGENT ;
 int ICE_PF_FLAGS_NBITS ;
 size_t ICE_PRIV_FLAG_ARRAY_SIZE ;
 int bitmap_copy (int ,int ,int ) ;
 int bitmap_xor (int ,int ,int ,int ) ;
 int change_flags ;
 int clear_bit (int ,int ) ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int ice_aq_start_lldp (int *,int,int *) ;
 int ice_aq_start_stop_dcbx (int *,int,int*,int *) ;
 int ice_aq_stop_lldp (int *,int,int,int *) ;
 int ice_cfg_lldp_mib_change (int *,int) ;
 int ice_cfg_sw_lldp (struct ice_vsi*,int,int) ;
 struct ice_priv_flag* ice_gstrings_priv_flags ;
 int ice_init_pf_dcb (struct ice_pf*,int) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int orig_flags ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 DECLARE_BITMAP(change_flags, ICE_PF_FLAGS_NBITS);
 DECLARE_BITMAP(orig_flags, ICE_PF_FLAGS_NBITS);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 int ret = 0;
 u32 i;

 if (flags > BIT(ICE_PRIV_FLAG_ARRAY_SIZE))
  return -EINVAL;

 set_bit(ICE_FLAG_ETHTOOL_CTXT, pf->flags);

 bitmap_copy(orig_flags, pf->flags, ICE_PF_FLAGS_NBITS);
 for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++) {
  const struct ice_priv_flag *priv_flag;

  priv_flag = &ice_gstrings_priv_flags[i];

  if (flags & BIT(i))
   set_bit(priv_flag->bitno, pf->flags);
  else
   clear_bit(priv_flag->bitno, pf->flags);
 }

 bitmap_xor(change_flags, pf->flags, orig_flags, ICE_PF_FLAGS_NBITS);

 if (test_bit(ICE_FLAG_FW_LLDP_AGENT, change_flags)) {
  if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
   enum ice_status status;


   status = ice_cfg_lldp_mib_change(&pf->hw, 0);





   if (status)
    dev_info(&pf->pdev->dev,
      "Failed to unreg for LLDP events\n");




   status = ice_aq_stop_lldp(&pf->hw, 1, 1, ((void*)0));
   if (status)
    dev_warn(&pf->pdev->dev,
      "Fail to stop LLDP agent\n");




   status = ice_init_pf_dcb(pf, 1);
   if (status)
    dev_warn(&pf->pdev->dev, "Fail to init DCB\n");




   ice_cfg_sw_lldp(vsi, 0, 1);
  } else {
   enum ice_status status;
   bool dcbx_agent_status;




   status = ice_aq_start_lldp(&pf->hw, 1, ((void*)0));
   if (status)
    dev_warn(&pf->pdev->dev,
      "Fail to start LLDP Agent\n");




   status = ice_aq_start_stop_dcbx(&pf->hw, 1,
       &dcbx_agent_status,
       ((void*)0));
   if (status)
    dev_dbg(&pf->pdev->dev,
     "Failed to start FW DCBX\n");

   dev_info(&pf->pdev->dev, "FW DCBX agent is %s\n",
     dcbx_agent_status ? "ACTIVE" : "DISABLED");






   status = ice_init_pf_dcb(pf, 1);
   if (status)
    dev_dbg(&pf->pdev->dev, "Fail to init DCB\n");




   ice_cfg_sw_lldp(vsi, 0, 0);


   status = ice_cfg_lldp_mib_change(&pf->hw, 1);
   if (status)
    dev_dbg(&pf->pdev->dev,
     "Fail to enable MIB change events\n");
  }
 }
 clear_bit(ICE_FLAG_ETHTOOL_CTXT, pf->flags);
 return ret;
}
