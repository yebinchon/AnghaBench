
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sge_params {int sge_ingress_rx_threshold; int sge_timer_value_4_and_5; int sge_timer_value_2_and_3; int sge_timer_value_0_and_1; } ;
struct sge {int * counter_val; void** timer_val; } ;
struct TYPE_5__ {scalar_t__ pmask; scalar_t__ nvi; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_6__ {TYPE_2__ vfres; TYPE_1__ rss; struct sge_params sge; } ;
struct adapter {int flags; int pdev_dev; TYPE_3__ params; struct sge sge; } ;


 int CXGB4VF_FW_OK ;
 int EINVAL ;
 int FW_PARAMS_MNEM_PFVF ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_PFVF_CPLFW4MSG_ENCAP ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ;
 int THRESHOLD_0_G (int ) ;
 int THRESHOLD_1_G (int ) ;
 int THRESHOLD_2_G (int ) ;
 int THRESHOLD_3_G (int ) ;
 int TIMERVALUE0_G (int ) ;
 int TIMERVALUE1_G (int ) ;
 void* core_ticks_to_us (struct adapter*,int ) ;
 int dev_err (int ,char*,...) ;
 int size_nports_qsets (struct adapter*) ;
 int t4vf_fw_reset (struct adapter*) ;
 int t4vf_get_dev_params (struct adapter*) ;
 int t4vf_get_rss_glb_config (struct adapter*) ;
 int t4vf_get_sge_params (struct adapter*) ;
 int t4vf_get_vfres (struct adapter*) ;
 int t4vf_get_vpd_params (struct adapter*) ;
 int t4vf_set_params (struct adapter*,int,int*,int*) ;
 int t4vf_sge_init (struct adapter*) ;

__attribute__((used)) static int adap_init0(struct adapter *adapter)
{
 struct sge_params *sge_params = &adapter->params.sge;
 struct sge *s = &adapter->sge;
 int err;
 u32 param, val = 0;
 err = t4vf_fw_reset(adapter);
 if (err < 0) {
  dev_err(adapter->pdev_dev, "FW reset failed: err=%d\n", err);
  return err;
 }
 err = t4vf_get_dev_params(adapter);
 if (err) {
  dev_err(adapter->pdev_dev, "unable to retrieve adapter"
   " device parameters: err=%d\n", err);
  return err;
 }
 err = t4vf_get_vpd_params(adapter);
 if (err) {
  dev_err(adapter->pdev_dev, "unable to retrieve adapter"
   " VPD parameters: err=%d\n", err);
  return err;
 }
 err = t4vf_get_sge_params(adapter);
 if (err) {
  dev_err(adapter->pdev_dev, "unable to retrieve adapter"
   " SGE parameters: err=%d\n", err);
  return err;
 }
 err = t4vf_get_rss_glb_config(adapter);
 if (err) {
  dev_err(adapter->pdev_dev, "unable to retrieve adapter"
   " RSS parameters: err=%d\n", err);
  return err;
 }
 if (adapter->params.rss.mode !=
     FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL) {
  dev_err(adapter->pdev_dev, "unable to operate with global RSS"
   " mode %d\n", adapter->params.rss.mode);
  return -EINVAL;
 }
 err = t4vf_sge_init(adapter);
 if (err) {
  dev_err(adapter->pdev_dev, "unable to use adapter parameters:"
   " err=%d\n", err);
  return err;
 }






 param = FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_PFVF) |
  FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_PFVF_CPLFW4MSG_ENCAP);
 val = 1;
 (void) t4vf_set_params(adapter, 1, &param, &val);





 s->timer_val[0] = core_ticks_to_us(adapter,
  TIMERVALUE0_G(sge_params->sge_timer_value_0_and_1));
 s->timer_val[1] = core_ticks_to_us(adapter,
  TIMERVALUE1_G(sge_params->sge_timer_value_0_and_1));
 s->timer_val[2] = core_ticks_to_us(adapter,
  TIMERVALUE0_G(sge_params->sge_timer_value_2_and_3));
 s->timer_val[3] = core_ticks_to_us(adapter,
  TIMERVALUE1_G(sge_params->sge_timer_value_2_and_3));
 s->timer_val[4] = core_ticks_to_us(adapter,
  TIMERVALUE0_G(sge_params->sge_timer_value_4_and_5));
 s->timer_val[5] = core_ticks_to_us(adapter,
  TIMERVALUE1_G(sge_params->sge_timer_value_4_and_5));

 s->counter_val[0] = THRESHOLD_0_G(sge_params->sge_ingress_rx_threshold);
 s->counter_val[1] = THRESHOLD_1_G(sge_params->sge_ingress_rx_threshold);
 s->counter_val[2] = THRESHOLD_2_G(sge_params->sge_ingress_rx_threshold);
 s->counter_val[3] = THRESHOLD_3_G(sge_params->sge_ingress_rx_threshold);






 err = t4vf_get_vfres(adapter);
 if (err) {
  dev_err(adapter->pdev_dev, "unable to get virtual interface"
   " resources: err=%d\n", err);
  return err;
 }


 if (adapter->params.vfres.pmask == 0) {
  dev_err(adapter->pdev_dev, "no port access configured\n"
   "usable!\n");
  return -EINVAL;
 }
 if (adapter->params.vfres.nvi == 0) {
  dev_err(adapter->pdev_dev, "no virtual interfaces configured/"
   "usable!\n");
  return -EINVAL;
 }




 size_nports_qsets(adapter);

 adapter->flags |= CXGB4VF_FW_OK;
 return 0;
}
