
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vcap_data {scalar_t__ action_offset; int action; } ;


 int vcap_data_set (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void vcap_action_set(struct vcap_data *data, u32 offset, u32 width,
       u32 value)
{
 vcap_data_set(data->action, offset + data->action_offset, width, value);
}
