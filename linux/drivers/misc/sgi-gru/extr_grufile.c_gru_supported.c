
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hub_revision; } ;


 scalar_t__ UV3_HUB_REVISION_BASE ;
 scalar_t__ is_uv_system () ;
 TYPE_1__* uv_hub_info ;

__attribute__((used)) static int gru_supported(void)
{
 return is_uv_system() &&
  (uv_hub_info->hub_revision < UV3_HUB_REVISION_BASE);
}
