
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {scalar_t__ erasing; int frame_blank; } ;


 int SOLO_VO_DISP_ERASE ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

__attribute__((used)) static inline int erase_off(struct solo_dev *solo_dev)
{
 if (!solo_dev->erasing)
  return 0;


 if (!solo_dev->frame_blank)
  solo_reg_write(solo_dev, SOLO_VO_DISP_ERASE, 0);

 if (solo_dev->frame_blank++ >= 8)
  solo_dev->erasing = 0;

 return 1;
}
