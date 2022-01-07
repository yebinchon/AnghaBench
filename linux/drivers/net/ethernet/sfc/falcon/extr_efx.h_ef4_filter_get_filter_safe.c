
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ef4_nic {TYPE_1__* type; } ;
struct ef4_filter_spec {int dummy; } ;
typedef enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;
struct TYPE_2__ {int (* filter_get_safe ) (struct ef4_nic*,int,int ,struct ef4_filter_spec*) ;} ;


 int stub1 (struct ef4_nic*,int,int ,struct ef4_filter_spec*) ;

__attribute__((used)) static inline int
ef4_filter_get_filter_safe(struct ef4_nic *efx,
      enum ef4_filter_priority priority,
      u32 filter_id, struct ef4_filter_spec *spec)
{
 return efx->type->filter_get_safe(efx, priority, filter_id, spec);
}
