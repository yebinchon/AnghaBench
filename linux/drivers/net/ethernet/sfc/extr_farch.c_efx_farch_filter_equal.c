
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_farch_filter_spec {scalar_t__ type; int flags; scalar_t__ dmaq_id; int data; } ;


 int EFX_FILTER_FLAG_TX ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static bool efx_farch_filter_equal(const struct efx_farch_filter_spec *left,
       const struct efx_farch_filter_spec *right)
{
 if (left->type != right->type ||
     memcmp(left->data, right->data, sizeof(left->data)))
  return 0;

 if (left->flags & EFX_FILTER_FLAG_TX &&
     left->dmaq_id != right->dmaq_id)
  return 0;

 return 1;
}
