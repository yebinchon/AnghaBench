
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at24_data {int flags; struct at24_client* client; } ;
struct at24_client {int dummy; } ;


 int AT24_FLAG_ADDR16 ;

__attribute__((used)) static struct at24_client *at24_translate_offset(struct at24_data *at24,
       unsigned int *offset)
{
 unsigned int i;

 if (at24->flags & AT24_FLAG_ADDR16) {
  i = *offset >> 16;
  *offset &= 0xffff;
 } else {
  i = *offset >> 8;
  *offset &= 0xff;
 }

 return &at24->client[i];
}
