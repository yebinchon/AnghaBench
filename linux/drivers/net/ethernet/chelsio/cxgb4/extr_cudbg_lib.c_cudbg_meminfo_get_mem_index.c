
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cudbg_meminfo {int avail_c; TYPE_1__* avail; } ;
struct TYPE_4__ {int chip; } ;
struct adapter {TYPE_2__ params; } ;
struct TYPE_3__ {int idx; } ;


 int CUDBG_STATUS_ENTITY_NOT_FOUND ;
 int EDC0_FLAG ;
 int EDC1_FLAG ;
 int HMA_FLAG ;
 int MC0_FLAG ;
 int MC1_FLAG ;
 int MC_FLAG ;





 int is_t5 (int ) ;

__attribute__((used)) static int cudbg_meminfo_get_mem_index(struct adapter *padap,
           struct cudbg_meminfo *mem_info,
           u8 mem_type, u8 *idx)
{
 u8 i, flag;

 switch (mem_type) {
 case 132:
  flag = EDC0_FLAG;
  break;
 case 131:
  flag = EDC1_FLAG;
  break;
 case 129:

  flag = is_t5(padap->params.chip) ? MC0_FLAG : MC_FLAG;
  break;
 case 128:
  flag = MC1_FLAG;
  break;
 case 130:
  flag = HMA_FLAG;
  break;
 default:
  return CUDBG_STATUS_ENTITY_NOT_FOUND;
 }

 for (i = 0; i < mem_info->avail_c; i++) {
  if (mem_info->avail[i].idx == flag) {
   *idx = i;
   return 0;
  }
 }

 return CUDBG_STATUS_ENTITY_NOT_FOUND;
}
