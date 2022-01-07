
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vcap_data {int dummy; } ;
typedef enum ocelot_vcap_bit { ____Placeholder_ocelot_vcap_bit } ocelot_vcap_bit ;


 int OCELOT_VCAP_BIT_1 ;
 int OCELOT_VCAP_BIT_ANY ;
 int vcap_key_set (struct vcap_data*,int ,int,int,int) ;

__attribute__((used)) static void vcap_key_bit_set(struct vcap_data *data, u32 offset,
        enum ocelot_vcap_bit val)
{
 vcap_key_set(data, offset, 1, val == OCELOT_VCAP_BIT_1 ? 1 : 0,
       val == OCELOT_VCAP_BIT_ANY ? 0 : 1);
}
