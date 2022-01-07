
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;


 int SOLO_VO_CURSOR_CLR ;
 int SOLO_VO_CURSOR_CLR2 ;
 int SOLO_VO_CURSOR_MASK (int) ;
 int SOLO_VO_CURSOR_POS ;
 int solo_reg_write (struct solo_dev*,int ,int) ;

__attribute__((used)) static void solo_vout_config_cursor(struct solo_dev *dev)
{
 int i;


 for (i = 0; i < 20; i++)
  solo_reg_write(dev, SOLO_VO_CURSOR_MASK(i), 0);

 solo_reg_write(dev, SOLO_VO_CURSOR_POS, 0);

 solo_reg_write(dev, SOLO_VO_CURSOR_CLR,
         (0x80 << 24) | (0x80 << 16) | (0x10 << 8) | 0x80);
 solo_reg_write(dev, SOLO_VO_CURSOR_CLR2, (0xe0 << 8) | 0x80);
}
