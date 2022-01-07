
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_device {int base_addr; size_t if_port; int name; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct corkscrew_private {int available_media; int default_media; int lock; TYPE_2__ timer; struct net_device* our_dev; } ;
typedef int __u32 ;
struct TYPE_3__ {int mask; size_t next; int media_bits; int name; scalar_t__ wait; } ;


 int EL3WINDOW (int) ;
 scalar_t__ EL3_CMD ;
 int Media_10TP ;
 int Media_LnkBeat ;
 int Media_SQE ;
 int StartCoax ;
 int StopCoax ;
 scalar_t__ Wn3_Config ;
 scalar_t__ Wn4_Media ;
 int Xcvr ;
 int Xcvr_shift ;
 int add_timer (TYPE_2__*) ;
 int corkscrew_debug ;
 struct corkscrew_private* from_timer (int ,struct timer_list*,int ) ;
 int inl (scalar_t__) ;
 int inw (scalar_t__) ;
 scalar_t__ jiffies ;
 TYPE_1__* media_tbl ;
 int outl (int,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pr_debug (char*,int ,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 struct corkscrew_private* vp ;

__attribute__((used)) static void corkscrew_timer(struct timer_list *t)
{
}
