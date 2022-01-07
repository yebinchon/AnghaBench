
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memstick_device_id {int match_flags; scalar_t__ type; scalar_t__ category; scalar_t__ class; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ category; scalar_t__ class; } ;
struct memstick_dev {TYPE_1__ id; } ;


 int MEMSTICK_MATCH_ALL ;

__attribute__((used)) static int memstick_dev_match(struct memstick_dev *card,
         struct memstick_device_id *id)
{
 if (id->match_flags & MEMSTICK_MATCH_ALL) {
  if ((id->type == card->id.type)
      && (id->category == card->id.category)
      && (id->class == card->id.class))
   return 1;
 }

 return 0;
}
