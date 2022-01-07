
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int dummy; } ;


 int CLK_RST ;
 int DEV_CNTRL2 ;
 int FLD_CFG_RCB_CK_EN ;
 int FLD_USE_ALT_PLL_REF ;
 int FLD_VID_I_CLK_NOE ;
 int FLD_VID_J_CLK_NOE ;
 int PCI_INT_MSK ;
 int PLL_A_INT_FRAC ;
 int PLL_A_POST_STAT_BIST ;
 int PLL_B_INT_FRAC ;
 int PLL_B_POST_STAT_BIST ;
 int PLL_C_INT_FRAC ;
 int PLL_C_POST_STAT_BIST ;
 int PLL_D_INT_FRAC ;
 int PLL_D_POST_STAT_BIST ;
 int RDR_TLCTL0 ;
 int VID_CH_CLK_SEL ;
 int VID_CH_MODE_SEL ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void cx25821_registers_init(struct cx25821_dev *dev)
{
 u32 tmp;


 cx_write(DEV_CNTRL2, 0x20);




 cx_write(PCI_INT_MSK, 0x2001FFFF);

 tmp = cx_read(RDR_TLCTL0);
 tmp &= ~FLD_CFG_RCB_CK_EN;
 cx_write(RDR_TLCTL0, tmp);


 cx_write(PLL_A_INT_FRAC, 0x9807A58B);


 cx_write(PLL_A_POST_STAT_BIST, 0x8000019C);


 tmp = cx_read(PLL_A_INT_FRAC);
 cx_write(PLL_A_INT_FRAC, tmp & 0x7FFFFFFF);


 cx_write(PLL_B_INT_FRAC, 0x9883A86F);


 cx_write(PLL_B_POST_STAT_BIST, 0x8000018D);


 tmp = cx_read(PLL_B_INT_FRAC);
 cx_write(PLL_B_INT_FRAC, tmp & 0x7FFFFFFF);


 cx_write(PLL_C_INT_FRAC, 0x96A0EA3F);


 cx_write(PLL_C_POST_STAT_BIST, 0x80000103);


 tmp = cx_read(PLL_C_INT_FRAC);
 cx_write(PLL_C_INT_FRAC, tmp & 0x7FFFFFFF);


 cx_write(PLL_D_INT_FRAC, 0x98757F5B);


 cx_write(PLL_D_POST_STAT_BIST, 0x80000113);


 tmp = cx_read(PLL_D_INT_FRAC);
 cx_write(PLL_D_INT_FRAC, tmp & 0x7FFFFFFF);



 tmp = cx_read(VID_CH_CLK_SEL);
 cx_write(VID_CH_CLK_SEL, (tmp & 0x00FFFFFF) | 0x24000000);




 tmp = cx_read(VID_CH_MODE_SEL);

 cx_write(VID_CH_MODE_SEL, tmp & 0xFFFFFE00);


 tmp = cx_read(CLK_RST);

 tmp |= FLD_USE_ALT_PLL_REF;
 cx_write(CLK_RST, tmp & ~(FLD_VID_I_CLK_NOE | FLD_VID_J_CLK_NOE));

 msleep(100);
}
