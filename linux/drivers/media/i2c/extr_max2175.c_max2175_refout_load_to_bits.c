
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int max2175_refout_load_to_bits(struct i2c_client *client, u32 load,
           u32 *bits)
{
 if (load <= 40)
  *bits = load / 10;
 else if (load >= 60 && load <= 70)
  *bits = load / 10 - 1;
 else
  return -EINVAL;

 return 0;
}
