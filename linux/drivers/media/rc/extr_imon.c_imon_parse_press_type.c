
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct imon_context {scalar_t__ kc; scalar_t__ last_keycode; unsigned char rc_toggle; int kc_lock; scalar_t__ release_code; } ;


 int EINVAL ;
 scalar_t__ IMON_KEY_MCE ;
 scalar_t__ KEY_RESERVED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int imon_parse_press_type(struct imon_context *ictx,
     unsigned char *buf, u8 ktype)
{
 int press_type = 0;
 unsigned long flags;

 spin_lock_irqsave(&ictx->kc_lock, flags);


 if (ictx->kc == KEY_RESERVED && buf[0] == 0x02 && buf[3] == 0x00)
  ictx->kc = ictx->last_keycode;


 else if (ictx->kc == KEY_RESERVED && buf[0] == 0x68 && buf[1] == 0x82 &&
   buf[2] == 0x81 && buf[3] == 0xb7)
  ictx->kc = ictx->last_keycode;


 else if (ictx->kc == KEY_RESERVED && buf[0] == 0x01 && buf[1] == 0x00 &&
   buf[2] == 0x81 && buf[3] == 0xb7)
  ictx->kc = ictx->last_keycode;


 else if (ktype == IMON_KEY_MCE) {
  ictx->rc_toggle = buf[2];
  press_type = 1;


 } else if (ictx->kc == KEY_RESERVED)
  press_type = -EINVAL;


 else if (ictx->release_code)
  press_type = 0;


 else
  press_type = 1;

 spin_unlock_irqrestore(&ictx->kc_lock, flags);

 return press_type;
}
