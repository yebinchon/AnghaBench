
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_cfg {int fm_ctl2_disp_tsh; int fm_ctl1_disp_tsh; int qmi_deq_disp_tsh; int qmi_enq_disp_tsh; int bmi_disp_tsh; int kg_disp_tsh; int plcr_disp_tsh; int prs_disp_tsh; int disp_limit_tsh; int dma_watchdog; int dma_sos_emergency; int dma_dbg_cnt_mode; int dma_cam_num_of_entries; int dma_cache_override; int dma_comm_qtsh_asrt_emer; int dma_comm_qtsh_clr_emer; int dma_aid_mode; int dma_err; int catastrophic_err; } ;


 int DEFAULT_AID_MODE ;
 int DEFAULT_BMI_DISP_TH ;
 int DEFAULT_CACHE_OVERRIDE ;
 int DEFAULT_CATASTROPHIC_ERR ;
 int DEFAULT_DISP_LIMIT ;
 int DEFAULT_DMA_CAM_NUM_OF_ENTRIES ;
 int DEFAULT_DMA_COMM_Q_HIGH ;
 int DEFAULT_DMA_COMM_Q_LOW ;
 int DEFAULT_DMA_DBG_CNT_MODE ;
 int DEFAULT_DMA_ERR ;
 int DEFAULT_DMA_SOS_EMERGENCY ;
 int DEFAULT_DMA_WATCHDOG ;
 int DEFAULT_FM_CTL1_DISP_TH ;
 int DEFAULT_FM_CTL2_DISP_TH ;
 int DEFAULT_KG_DISP_TH ;
 int DEFAULT_PLCR_DISP_TH ;
 int DEFAULT_PRS_DISP_TH ;
 int DEFAULT_QMI_DEQ_DISP_TH ;
 int DEFAULT_QMI_ENQ_DISP_TH ;
 int memset (struct fman_cfg*,int ,int) ;

__attribute__((used)) static void fman_defconfig(struct fman_cfg *cfg)
{
 memset(cfg, 0, sizeof(struct fman_cfg));

 cfg->catastrophic_err = DEFAULT_CATASTROPHIC_ERR;
 cfg->dma_err = DEFAULT_DMA_ERR;
 cfg->dma_aid_mode = DEFAULT_AID_MODE;
 cfg->dma_comm_qtsh_clr_emer = DEFAULT_DMA_COMM_Q_LOW;
 cfg->dma_comm_qtsh_asrt_emer = DEFAULT_DMA_COMM_Q_HIGH;
 cfg->dma_cache_override = DEFAULT_CACHE_OVERRIDE;
 cfg->dma_cam_num_of_entries = DEFAULT_DMA_CAM_NUM_OF_ENTRIES;
 cfg->dma_dbg_cnt_mode = DEFAULT_DMA_DBG_CNT_MODE;
 cfg->dma_sos_emergency = DEFAULT_DMA_SOS_EMERGENCY;
 cfg->dma_watchdog = DEFAULT_DMA_WATCHDOG;
 cfg->disp_limit_tsh = DEFAULT_DISP_LIMIT;
 cfg->prs_disp_tsh = DEFAULT_PRS_DISP_TH;
 cfg->plcr_disp_tsh = DEFAULT_PLCR_DISP_TH;
 cfg->kg_disp_tsh = DEFAULT_KG_DISP_TH;
 cfg->bmi_disp_tsh = DEFAULT_BMI_DISP_TH;
 cfg->qmi_enq_disp_tsh = DEFAULT_QMI_ENQ_DISP_TH;
 cfg->qmi_deq_disp_tsh = DEFAULT_QMI_DEQ_DISP_TH;
 cfg->fm_ctl1_disp_tsh = DEFAULT_FM_CTL1_DISP_TH;
 cfg->fm_ctl2_disp_tsh = DEFAULT_FM_CTL2_DISP_TH;
}
