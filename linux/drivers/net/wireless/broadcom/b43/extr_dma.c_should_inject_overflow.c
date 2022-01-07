
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_dmaring {unsigned long last_injected_overflow; int index; TYPE_1__* dev; } ;
struct TYPE_2__ {int wl; } ;


 int B43_DBG_DMAOVERFLOW ;
 unsigned long HZ ;
 int b43_debug (TYPE_1__*,int ) ;
 int b43dbg (int ,char*,int ) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int should_inject_overflow(struct b43_dmaring *ring)
{
 return 0;
}
