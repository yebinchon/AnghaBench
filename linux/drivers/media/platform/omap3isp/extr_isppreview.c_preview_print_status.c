
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_prev_device {int dummy; } ;
struct isp_device {int dev; } ;


 int AVE ;
 int BLKADJOFF ;
 int CDC_THR0 ;
 int CDC_THR1 ;
 int CDC_THR2 ;
 int CDC_THR3 ;
 int CFA ;
 int CNT_BRT ;
 int CSC0 ;
 int CSC1 ;
 int CSC2 ;
 int CSC_OFFSET ;
 int CSUP ;
 int DRKF_OFFSET ;
 int DSDR_ADDR ;
 int HMED ;
 int HORZ_INFO ;
 int NF ;
 int PCR ;
 int PREV_PRINT_REGISTER (struct isp_device*,int ) ;
 int RADR_OFFSET ;
 int RGB_MAT1 ;
 int RGB_MAT2 ;
 int RGB_MAT3 ;
 int RGB_MAT4 ;
 int RGB_MAT5 ;
 int RGB_OFF1 ;
 int RGB_OFF2 ;
 int RSDR_ADDR ;
 int SETUP_YC ;
 int SET_TBL_ADDR ;
 int VERT_INFO ;
 int WADD_OFFSET ;
 int WBGAIN ;
 int WBSEL ;
 int WB_DGAIN ;
 int WSDR_ADDR ;
 int dev_dbg (int ,char*) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_print_status(struct isp_prev_device *prev)
{
 struct isp_device *isp = to_isp_device(prev);

 dev_dbg(isp->dev, "-------------Preview Register dump----------\n");

 PREV_PRINT_REGISTER(isp, PCR);
 PREV_PRINT_REGISTER(isp, HORZ_INFO);
 PREV_PRINT_REGISTER(isp, VERT_INFO);
 PREV_PRINT_REGISTER(isp, RSDR_ADDR);
 PREV_PRINT_REGISTER(isp, RADR_OFFSET);
 PREV_PRINT_REGISTER(isp, DSDR_ADDR);
 PREV_PRINT_REGISTER(isp, DRKF_OFFSET);
 PREV_PRINT_REGISTER(isp, WSDR_ADDR);
 PREV_PRINT_REGISTER(isp, WADD_OFFSET);
 PREV_PRINT_REGISTER(isp, AVE);
 PREV_PRINT_REGISTER(isp, HMED);
 PREV_PRINT_REGISTER(isp, NF);
 PREV_PRINT_REGISTER(isp, WB_DGAIN);
 PREV_PRINT_REGISTER(isp, WBGAIN);
 PREV_PRINT_REGISTER(isp, WBSEL);
 PREV_PRINT_REGISTER(isp, CFA);
 PREV_PRINT_REGISTER(isp, BLKADJOFF);
 PREV_PRINT_REGISTER(isp, RGB_MAT1);
 PREV_PRINT_REGISTER(isp, RGB_MAT2);
 PREV_PRINT_REGISTER(isp, RGB_MAT3);
 PREV_PRINT_REGISTER(isp, RGB_MAT4);
 PREV_PRINT_REGISTER(isp, RGB_MAT5);
 PREV_PRINT_REGISTER(isp, RGB_OFF1);
 PREV_PRINT_REGISTER(isp, RGB_OFF2);
 PREV_PRINT_REGISTER(isp, CSC0);
 PREV_PRINT_REGISTER(isp, CSC1);
 PREV_PRINT_REGISTER(isp, CSC2);
 PREV_PRINT_REGISTER(isp, CSC_OFFSET);
 PREV_PRINT_REGISTER(isp, CNT_BRT);
 PREV_PRINT_REGISTER(isp, CSUP);
 PREV_PRINT_REGISTER(isp, SETUP_YC);
 PREV_PRINT_REGISTER(isp, SET_TBL_ADDR);
 PREV_PRINT_REGISTER(isp, CDC_THR0);
 PREV_PRINT_REGISTER(isp, CDC_THR1);
 PREV_PRINT_REGISTER(isp, CDC_THR2);
 PREV_PRINT_REGISTER(isp, CDC_THR3);

 dev_dbg(isp->dev, "--------------------------------------------\n");
}
