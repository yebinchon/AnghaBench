
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dev; } ;
struct isp_ccdc_device {int dummy; } ;


 int ALAW ;
 int BLKCMP ;
 int CCDC_PRINT_REGISTER (struct isp_device*,int ) ;
 int CFG ;
 int CLAMP ;
 int COLPTN ;
 int CULLING ;
 int DCSUB ;
 int FMTCFG ;
 int FMT_HORZ ;
 int FMT_VERT ;
 int FPC ;
 int FPC_ADDR ;
 int HD_VD_WID ;
 int HORZ_INFO ;
 int HSIZE_OFF ;
 int LSC_CONFIG ;
 int LSC_INITIAL ;
 int LSC_TABLE_BASE ;
 int LSC_TABLE_OFFSET ;
 int PCR ;
 int PIX_LINES ;
 int PRGEVEN0 ;
 int PRGEVEN1 ;
 int PRGODD0 ;
 int PRGODD1 ;
 int REC656IF ;
 int SDOFST ;
 int SDR_ADDR ;
 int SYN_MODE ;
 int VDINT ;
 int VERT_LINES ;
 int VERT_START ;
 int VP_OUT ;
 int dev_dbg (int ,char*) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_print_status(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);

 dev_dbg(isp->dev, "-------------CCDC Register dump-------------\n");

 CCDC_PRINT_REGISTER(isp, PCR);
 CCDC_PRINT_REGISTER(isp, SYN_MODE);
 CCDC_PRINT_REGISTER(isp, HD_VD_WID);
 CCDC_PRINT_REGISTER(isp, PIX_LINES);
 CCDC_PRINT_REGISTER(isp, HORZ_INFO);
 CCDC_PRINT_REGISTER(isp, VERT_START);
 CCDC_PRINT_REGISTER(isp, VERT_LINES);
 CCDC_PRINT_REGISTER(isp, CULLING);
 CCDC_PRINT_REGISTER(isp, HSIZE_OFF);
 CCDC_PRINT_REGISTER(isp, SDOFST);
 CCDC_PRINT_REGISTER(isp, SDR_ADDR);
 CCDC_PRINT_REGISTER(isp, CLAMP);
 CCDC_PRINT_REGISTER(isp, DCSUB);
 CCDC_PRINT_REGISTER(isp, COLPTN);
 CCDC_PRINT_REGISTER(isp, BLKCMP);
 CCDC_PRINT_REGISTER(isp, FPC);
 CCDC_PRINT_REGISTER(isp, FPC_ADDR);
 CCDC_PRINT_REGISTER(isp, VDINT);
 CCDC_PRINT_REGISTER(isp, ALAW);
 CCDC_PRINT_REGISTER(isp, REC656IF);
 CCDC_PRINT_REGISTER(isp, CFG);
 CCDC_PRINT_REGISTER(isp, FMTCFG);
 CCDC_PRINT_REGISTER(isp, FMT_HORZ);
 CCDC_PRINT_REGISTER(isp, FMT_VERT);
 CCDC_PRINT_REGISTER(isp, PRGEVEN0);
 CCDC_PRINT_REGISTER(isp, PRGEVEN1);
 CCDC_PRINT_REGISTER(isp, PRGODD0);
 CCDC_PRINT_REGISTER(isp, PRGODD1);
 CCDC_PRINT_REGISTER(isp, VP_OUT);
 CCDC_PRINT_REGISTER(isp, LSC_CONFIG);
 CCDC_PRINT_REGISTER(isp, LSC_INITIAL);
 CCDC_PRINT_REGISTER(isp, LSC_TABLE_BASE);
 CCDC_PRINT_REGISTER(isp, LSC_TABLE_OFFSET);

 dev_dbg(isp->dev, "--------------------------------------------\n");
}
