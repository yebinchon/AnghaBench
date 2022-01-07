
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rc_map_table {int scancode; } ;



__attribute__((used)) static inline u8 rc5_data(struct rc_map_table *key)
{
 return key->scancode & 0xff;
}
