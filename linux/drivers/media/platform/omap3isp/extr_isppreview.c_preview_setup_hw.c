
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct preview_update {int (* enable ) (struct isp_prev_device*,int) ;int (* config ) (struct isp_prev_device*,struct prev_params*) ;} ;
struct prev_params {unsigned int features; } ;
struct TYPE_2__ {struct prev_params* params; } ;
struct isp_prev_device {TYPE_1__ params; } ;


 unsigned int ARRAY_SIZE (struct preview_update*) ;
 int stub1 (struct isp_prev_device*,struct prev_params*) ;
 int stub2 (struct isp_prev_device*,int) ;
 int stub3 (struct isp_prev_device*,int) ;
 struct preview_update* update_attrs ;

__attribute__((used)) static void preview_setup_hw(struct isp_prev_device *prev, u32 update,
        u32 active)
{
 unsigned int i;

 if (update == 0)
  return;

 for (i = 0; i < ARRAY_SIZE(update_attrs); i++) {
  const struct preview_update *attr = &update_attrs[i];
  struct prev_params *params;
  unsigned int bit = 1 << i;

  if (!(update & bit))
   continue;

  params = &prev->params.params[!(active & bit)];

  if (params->features & bit) {
   if (attr->config)
    attr->config(prev, params);
   if (attr->enable)
    attr->enable(prev, 1);
  } else {
   if (attr->enable)
    attr->enable(prev, 0);
  }
 }
}
