
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct airo_info {int aux_lock; TYPE_1__* dev; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;


 scalar_t__ DATA0 ;
 int IN4500 (struct airo_info*,scalar_t__) ;
 int SUCCESS ;
 scalar_t__ SWS0 ;
 scalar_t__ SWS2 ;
 int aux_setup (struct airo_info*,int,int,int*) ;
 int do8bitIO ;
 int insb (scalar_t__,int *,int) ;
 int insw (scalar_t__,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int aux_bap_read(struct airo_info *ai, __le16 *pu16Dst,
   int bytelen, int whichbap)
{
 u16 len;
 u16 page;
 u16 offset;
 u16 next;
 int words;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&ai->aux_lock, flags);
 page = IN4500(ai, SWS0+whichbap);
 offset = IN4500(ai, SWS2+whichbap);
 next = aux_setup(ai, page, offset, &len);
 words = (bytelen+1)>>1;

 for (i=0; i<words;) {
  int count;
  count = (len>>1) < (words-i) ? (len>>1) : (words-i);
  if ( !do8bitIO )
   insw( ai->dev->base_addr+DATA0+whichbap,
         pu16Dst+i,count );
  else
   insb( ai->dev->base_addr+DATA0+whichbap,
         pu16Dst+i, count << 1 );
  i += count;
  if (i<words) {
   next = aux_setup(ai, next, 4, &len);
  }
 }
 spin_unlock_irqrestore(&ai->aux_lock, flags);
 return SUCCESS;
}
