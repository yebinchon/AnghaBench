
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw68_dev {int slock; int lock; } ;


 int TW68_ACNTL ;
 int TW68_AGCGAIN ;
 int TW68_BRIGHT ;
 int TW68_CAP_CTL ;
 int TW68_CKILL ;
 int TW68_CLCNTL1 ;
 int TW68_CLMD ;
 int TW68_CLMPG ;
 int TW68_CLMPL ;
 int TW68_CNTRL1 ;
 int TW68_CNTRL2 ;
 int TW68_COMB ;
 int TW68_CONTRAST ;
 int TW68_CORING ;
 int TW68_CROP_HI ;
 int TW68_DMAC ;
 int TW68_GPDATA ;
 int TW68_GPIOC ;
 int TW68_GPOE ;
 int TW68_HACTIVE_LO ;
 int TW68_HDELAY_LO ;
 int TW68_HSCALE_LO ;
 int TW68_HSYNC ;
 int TW68_HUE ;
 int TW68_IAGC ;
 int TW68_IDCNTL ;
 int TW68_INFORM ;
 int TW68_INTMASK ;
 int TW68_INTSTAT ;
 int TW68_LDLY ;
 int TW68_LOOP ;
 int TW68_MISC1 ;
 int TW68_MISC2 ;
 int TW68_MISSCNT ;
 int TW68_MVSN ;
 int TW68_OPFORM ;
 int TW68_PCLAMP ;
 int TW68_PEAKWT ;
 int TW68_SAT_U ;
 int TW68_SAT_V ;
 int TW68_SCALE_HI ;
 int TW68_SDT ;
 int TW68_SDTR ;
 int TW68_SHARP2 ;
 int TW68_SHARPNESS ;
 int TW68_SYNCT ;
 int TW68_TESTREG ;
 int TW68_VACTIVE_LO ;
 int TW68_VBIC ;
 int TW68_VCNTL1 ;
 int TW68_VCNTL2 ;
 int TW68_VDELAY_LO ;
 int TW68_VSCALE_LO ;
 int TW68_VSHARP ;
 int msleep (int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tw68_video_init1 (struct tw68_dev*) ;
 int tw_writeb (int ,int) ;
 int tw_writel (int ,int) ;

__attribute__((used)) static int tw68_hw_init1(struct tw68_dev *dev)
{

 tw_writel(TW68_INTMASK, 0);

 tw_writel(TW68_INTSTAT, 0xffffffff);

 tw_writel(TW68_DMAC, 0x1600);

 tw_writeb(TW68_ACNTL, 0x80);
 msleep(100);

 tw_writeb(TW68_INFORM, 0x40);
 tw_writeb(TW68_OPFORM, 0x04);
 tw_writeb(TW68_HSYNC, 0);
 tw_writeb(TW68_ACNTL, 0x42);

 tw_writeb(TW68_CROP_HI, 0x02);
 tw_writeb(TW68_VDELAY_LO, 0x12);
 tw_writeb(TW68_VACTIVE_LO, 0xf0);
 tw_writeb(TW68_HDELAY_LO, 0x0f);
 tw_writeb(TW68_HACTIVE_LO, 0xd0);

 tw_writeb(TW68_CNTRL1, 0xcd);



 tw_writeb(TW68_VSCALE_LO, 0);
 tw_writeb(TW68_SCALE_HI, 0x11);
 tw_writeb(TW68_HSCALE_LO, 0);
 tw_writeb(TW68_BRIGHT, 0);
 tw_writeb(TW68_CONTRAST, 0x5c);
 tw_writeb(TW68_SHARPNESS, 0x51);
 tw_writeb(TW68_SAT_U, 0x80);
 tw_writeb(TW68_SAT_V, 0x80);
 tw_writeb(TW68_HUE, 0x00);


 tw_writeb(TW68_SHARP2, 0x53);
 tw_writeb(TW68_VSHARP, 0x80);
 tw_writeb(TW68_CORING, 0x44);
 tw_writeb(TW68_CNTRL2, 0x00);
 tw_writeb(TW68_SDT, 0x07);
 tw_writeb(TW68_SDTR, 0x7f);
 tw_writeb(TW68_CLMPG, 0x50);
 tw_writeb(TW68_IAGC, 0x22);
 tw_writeb(TW68_AGCGAIN, 0xf0);
 tw_writeb(TW68_PEAKWT, 0xd8);
 tw_writeb(TW68_CLMPL, 0x3c);

 tw_writeb(TW68_SYNCT, 0x30);
 tw_writeb(TW68_MISSCNT, 0x44);
 tw_writeb(TW68_PCLAMP, 0x28);

 tw_writeb(TW68_VCNTL1, 0x04);
 tw_writeb(TW68_VCNTL2, 0);
 tw_writeb(TW68_CKILL, 0x68);
 tw_writeb(TW68_COMB, 0x44);
 tw_writeb(TW68_LDLY, 0x30);
 tw_writeb(TW68_MISC1, 0x14);
 tw_writeb(TW68_LOOP, 0xa5);
 tw_writeb(TW68_MISC2, 0xe0);
 tw_writeb(TW68_MVSN, 0);
 tw_writeb(TW68_CLMD, 0x05);
 tw_writeb(TW68_IDCNTL, 0);






 tw_writeb(TW68_CLCNTL1, 0);
 tw_writel(TW68_VBIC, 0x03);
 tw_writel(TW68_CAP_CTL, 0x03);
 tw_writel(TW68_DMAC, 0x2000);
 tw_writel(TW68_TESTREG, 0);
 tw_writel(TW68_GPIOC, 0);
 tw_writel(TW68_GPOE, 0x0f);
 tw_writel(TW68_GPDATA, 0);


 mutex_init(&dev->lock);
 spin_lock_init(&dev->slock);


 tw68_video_init1(dev);
 return 0;
}
