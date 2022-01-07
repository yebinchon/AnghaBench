
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ max_data_size; scalar_t__ max_cmd_size; int cmd_buf; } ;
struct ath6kl {TYPE_1__ bmi; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int kzalloc (scalar_t__,int ) ;

int ath6kl_bmi_init(struct ath6kl *ar)
{
 if (WARN_ON(ar->bmi.max_data_size == 0))
  return -EINVAL;


 ar->bmi.max_cmd_size = ar->bmi.max_data_size + (sizeof(u32) * 3);

 ar->bmi.cmd_buf = kzalloc(ar->bmi.max_cmd_size, GFP_KERNEL);
 if (!ar->bmi.cmd_buf)
  return -ENOMEM;

 return 0;
}
