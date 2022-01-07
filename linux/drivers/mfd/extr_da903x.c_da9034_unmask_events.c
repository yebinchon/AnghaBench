
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da903x_chip {unsigned int events_mask; int client; } ;


 int DA9034_IRQ_MASK_A ;
 int __da903x_writes (int ,int ,int,int*) ;

__attribute__((used)) static int da9034_unmask_events(struct da903x_chip *chip, unsigned int events)
{
 uint8_t v[4];

 chip->events_mask &= ~events;

 v[0] = (chip->events_mask & 0xff);
 v[1] = (chip->events_mask >> 8) & 0xff;
 v[2] = (chip->events_mask >> 16) & 0xff;
 v[3] = (chip->events_mask >> 24) & 0xff;

 return __da903x_writes(chip->client, DA9034_IRQ_MASK_A, 4, v);
}
