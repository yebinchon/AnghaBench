
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct i2c_client {int dev; } ;
typedef int int32_t ;


 int dev_err (int *,char*) ;

__attribute__((used)) static uint32_t float_to_u32_mul_1000000(struct i2c_client *client,
      uint32_t phloat)
{
 int32_t exp;
 uint64_t man;

 if (phloat >= 0x80000000) {
  dev_err(&client->dev, "this is a negative number\n");
  return 0;
 }

 if (phloat == 0x7f800000)
  return ~0;

 if ((phloat & 0x7f800000) == 0x7f800000) {
  dev_err(&client->dev, "NaN or other special number\n");
  return 0;
 }


 if (phloat == 0)
  return 0;

 if (phloat > 0x4f800000)
  return ~0;





 exp = ((int32_t)phloat >> 23) - 127;


 man = ((phloat & 0x7fffff) | 0x800000) * 1000000ULL;

 if (exp < 0)
  man >>= -exp;
 else
  man <<= exp;

 man >>= 23;

 return man & 0xffffffff;
}
