
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stmmac_safety_stats {int dummy; } ;
struct TYPE_5__ {TYPE_1__* desc; } ;
struct TYPE_4__ {char* desc; int valid; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 TYPE_2__* dwmac5_all_errors ;

int dwmac5_safety_feat_dump(struct stmmac_safety_stats *stats,
   int index, unsigned long *count, const char **desc)
{
 int module = index / 32, offset = index % 32;
 unsigned long *ptr = (unsigned long *)stats;

 if (module >= ARRAY_SIZE(dwmac5_all_errors))
  return -EINVAL;
 if (!dwmac5_all_errors[module].desc[offset].valid)
  return -EINVAL;
 if (count)
  *count = *(ptr + index);
 if (desc)
  *desc = dwmac5_all_errors[module].desc[offset].desc;
 return 0;
}
