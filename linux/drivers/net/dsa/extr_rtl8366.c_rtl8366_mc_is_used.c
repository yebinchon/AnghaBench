
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct realtek_smi {int num_ports; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_mc_index ) (struct realtek_smi*,int,int*) ;} ;


 int stub1 (struct realtek_smi*,int,int*) ;

int rtl8366_mc_is_used(struct realtek_smi *smi, int mc_index, int *used)
{
 int ret;
 int i;

 *used = 0;
 for (i = 0; i < smi->num_ports; i++) {
  int index = 0;

  ret = smi->ops->get_mc_index(smi, i, &index);
  if (ret)
   return ret;

  if (mc_index == index) {
   *used = 1;
   break;
  }
 }

 return 0;
}
