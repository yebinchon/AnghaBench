
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;


 scalar_t__ CX25840_PAD_VRESET ;
 int v4l_err (struct i2c_client*,char*,unsigned int) ;

__attribute__((used)) static u8 cx25840_function_to_pad(struct i2c_client *client, u8 function)
{
 if (function > CX25840_PAD_VRESET) {
  v4l_err(client, "invalid function %u, assuming default\n",
   (unsigned int)function);
  return 0;
 }

 return function;
}
