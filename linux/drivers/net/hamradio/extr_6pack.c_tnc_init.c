
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sixpack {int resync_t; TYPE_2__* tty; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write ) (TYPE_2__*,unsigned char*,int) ;} ;


 scalar_t__ SIXP_RESYNC_TIMEOUT ;
 int TNC_UNSYNC_STARTUP ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int stub1 (TYPE_2__*,unsigned char*,int) ;
 int tnc_set_sync_state (struct sixpack*,int ) ;

__attribute__((used)) static inline int tnc_init(struct sixpack *sp)
{
 unsigned char inbyte = 0xe8;

 tnc_set_sync_state(sp, TNC_UNSYNC_STARTUP);

 sp->tty->ops->write(sp->tty, &inbyte, 1);

 mod_timer(&sp->resync_t, jiffies + SIXP_RESYNC_TIMEOUT);

 return 0;
}
