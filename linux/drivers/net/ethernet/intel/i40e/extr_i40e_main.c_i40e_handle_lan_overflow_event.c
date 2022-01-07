
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct i40e_vf {int dummy; } ;
struct TYPE_8__ {scalar_t__ vf_base_id; } ;
struct i40e_hw {TYPE_4__ func_caps; } ;
struct i40e_pf {struct i40e_vf* vf; TYPE_3__* pdev; struct i40e_hw hw; } ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {TYPE_1__ params; } ;
struct i40e_arq_event_info {TYPE_2__ desc; } ;
struct i40e_aqc_lan_overflow {int otx_ctl; int prtdcb_rupto; } ;
struct TYPE_7__ {int dev; } ;


 int I40E_QTX_CTL_PFVF_Q_MASK ;
 int I40E_QTX_CTL_PFVF_Q_SHIFT ;
 int I40E_QTX_CTL_VFVM_INDX_MASK ;
 int I40E_QTX_CTL_VFVM_INDX_SHIFT ;
 int I40E_QTX_CTL_VF_QUEUE ;
 int dev_dbg (int *,char*,int,int) ;
 int i40e_reset_vf (struct i40e_vf*,int) ;
 int i40e_vc_notify_vf_reset (struct i40e_vf*) ;
 int le32_to_cpu (int ) ;
 int msleep (int) ;

__attribute__((used)) static void i40e_handle_lan_overflow_event(struct i40e_pf *pf,
        struct i40e_arq_event_info *e)
{
 struct i40e_aqc_lan_overflow *data =
  (struct i40e_aqc_lan_overflow *)&e->desc.params.raw;
 u32 queue = le32_to_cpu(data->prtdcb_rupto);
 u32 qtx_ctl = le32_to_cpu(data->otx_ctl);
 struct i40e_hw *hw = &pf->hw;
 struct i40e_vf *vf;
 u16 vf_id;

 dev_dbg(&pf->pdev->dev, "overflow Rx Queue Number = %d QTX_CTL=0x%08x\n",
  queue, qtx_ctl);


 if (((qtx_ctl & I40E_QTX_CTL_PFVF_Q_MASK)
     >> I40E_QTX_CTL_PFVF_Q_SHIFT) == I40E_QTX_CTL_VF_QUEUE) {
  vf_id = (u16)((qtx_ctl & I40E_QTX_CTL_VFVM_INDX_MASK)
    >> I40E_QTX_CTL_VFVM_INDX_SHIFT);
  vf_id -= hw->func_caps.vf_base_id;
  vf = &pf->vf[vf_id];
  i40e_vc_notify_vf_reset(vf);

  msleep(20);
  i40e_reset_vf(vf, 0);
 }
}
