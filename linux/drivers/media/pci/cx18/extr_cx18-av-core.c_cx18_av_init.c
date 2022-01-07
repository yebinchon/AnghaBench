
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int CXADEC_AUX_PLL_FRAC ;
 int CXADEC_I2S_MCLK ;
 int CXADEC_PLL_CTRL1 ;
 int CXADEC_VID_PLL_FRAC ;
 int cx18_av_write (struct cx18*,int ,int) ;
 int cx18_av_write4 (struct cx18*,int ,int) ;

__attribute__((used)) static void cx18_av_init(struct cx18 *cx)
{
 cx18_av_write4(cx, CXADEC_PLL_CTRL1, 0x160e040f);



 cx18_av_write4(cx, CXADEC_VID_PLL_FRAC, 0x002be2fe);



 cx18_av_write4(cx, CXADEC_AUX_PLL_FRAC, 0x005227ad);


 cx18_av_write(cx, CXADEC_I2S_MCLK, 0x56);
}
