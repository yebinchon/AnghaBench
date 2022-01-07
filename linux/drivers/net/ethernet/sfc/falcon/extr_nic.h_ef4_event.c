
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct ef4_channel {unsigned int eventq_mask; TYPE_2__ eventq; } ;
typedef int ef4_qword_t ;



__attribute__((used)) static inline ef4_qword_t *ef4_event(struct ef4_channel *channel,
         unsigned int index)
{
 return ((ef4_qword_t *) (channel->eventq.buf.addr)) +
  (index & channel->eventq_mask);
}
