
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmcoredd_data {int size; int vmcoredd_callback; int dump_name; } ;
struct cudbg_hdr {int dummy; } ;
struct cudbg_entity_hdr {int dummy; } ;
struct adapter {char* name; struct vmcoredd_data vmcoredd; } ;


 scalar_t__ CUDBG_DUMP_BUFF_SIZE ;
 int CUDBG_MAX_ENTITY ;
 int cxgb4_cudbg_vmcoredd_collect ;
 char* cxgb4_driver_name ;
 int snprintf (int ,int,char*,char*,char*) ;
 int vmcore_add_device_dump (struct vmcoredd_data*) ;

int cxgb4_cudbg_vmcore_add_dump(struct adapter *adap)
{
 struct vmcoredd_data *data = &adap->vmcoredd;
 u32 len;

 len = sizeof(struct cudbg_hdr) +
       sizeof(struct cudbg_entity_hdr) * CUDBG_MAX_ENTITY;
 len += CUDBG_DUMP_BUFF_SIZE;

 data->size = len;
 snprintf(data->dump_name, sizeof(data->dump_name), "%s_%s",
   cxgb4_driver_name, adap->name);
 data->vmcoredd_callback = cxgb4_cudbg_vmcoredd_collect;

 return vmcore_add_device_dump(data);
}
