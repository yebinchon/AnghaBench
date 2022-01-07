
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rc_scancode_filter {int mask; int data; } ;
struct rc_dev {int wakeup_protocol; scalar_t__ encode_wakeup; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_3__ {int scancode_bits; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* protocols ;
 int rc_validate_scancode (int,int ) ;

__attribute__((used)) static int rc_validate_filter(struct rc_dev *dev,
         struct rc_scancode_filter *filter)
{
 u32 mask, s = filter->data;
 enum rc_proto protocol = dev->wakeup_protocol;

 if (protocol >= ARRAY_SIZE(protocols))
  return -EINVAL;

 mask = protocols[protocol].scancode_bits;

 if (!rc_validate_scancode(protocol, s))
  return -EINVAL;

 filter->data &= mask;
 filter->mask &= mask;




 if (dev->encode_wakeup && filter->mask != 0 && filter->mask != mask)
  return -EINVAL;

 return 0;
}
