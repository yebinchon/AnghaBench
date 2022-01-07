
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int erasing; scalar_t__ frame_blank; } ;


 int SOLO_VO_DISP_ERASE ;
 int SOLO_VO_DISP_ERASE_ON ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

__attribute__((used)) static inline void erase_on(struct solo_dev *solo_dev)
{
 solo_reg_write(solo_dev, SOLO_VO_DISP_ERASE, SOLO_VO_DISP_ERASE_ON);
 solo_dev->erasing = 1;
 solo_dev->frame_blank = 0;
}
