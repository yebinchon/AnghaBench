
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vcap_data {scalar_t__ key_offset; int mask; int entry; } ;


 int vcap_data_set (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void vcap_key_set(struct vcap_data *data, u32 offset, u32 width,
    u32 value, u32 mask)
{
 vcap_data_set(data->entry, offset + data->key_offset, width, value);
 vcap_data_set(data->mask, offset + data->key_offset, width, mask);
}
