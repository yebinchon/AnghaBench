
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx231xx {int dummy; } ;


 int DIF_AGC_IF_REF ;
 int FLD_DIF_K_AGC_IF ;
 int FLD_DIF_K_AGC_RF ;
 int vid_blk_read_word (struct cx231xx*,int ,int*) ;
 int vid_blk_write_word (struct cx231xx*,int ,int) ;

int cx231xx_tuner_pre_channel_change(struct cx231xx *dev)
{
 int status = 0;
 u32 dwval;


 status = vid_blk_read_word(dev, DIF_AGC_IF_REF, &dwval);
 dwval &= ~(FLD_DIF_K_AGC_RF | FLD_DIF_K_AGC_IF);
 dwval |= 0x33000000;

 status = vid_blk_write_word(dev, DIF_AGC_IF_REF, dwval);

 return status;
}
