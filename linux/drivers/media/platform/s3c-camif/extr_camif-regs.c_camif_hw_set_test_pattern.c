
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct camif_dev {int dummy; } ;


 unsigned int CIGCTRL_TESTPATTERN_MASK ;
 int S3C_CAMIF_REG_CIGCTRL ;
 unsigned int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,unsigned int) ;

void camif_hw_set_test_pattern(struct camif_dev *camif, unsigned int pattern)
{
 u32 cfg = camif_read(camif, S3C_CAMIF_REG_CIGCTRL);
 cfg &= ~CIGCTRL_TESTPATTERN_MASK;
 cfg |= (pattern << 27);
 camif_write(camif, S3C_CAMIF_REG_CIGCTRL, cfg);
}
