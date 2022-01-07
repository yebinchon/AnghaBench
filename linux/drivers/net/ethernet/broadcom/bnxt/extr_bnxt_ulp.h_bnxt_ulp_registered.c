
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_en_dev {TYPE_1__* ulp_tbl; } ;
struct TYPE_2__ {int ulp_ops; } ;


 scalar_t__ rcu_access_pointer (int ) ;

__attribute__((used)) static inline bool bnxt_ulp_registered(struct bnxt_en_dev *edev, int ulp_id)
{
 if (edev && rcu_access_pointer(edev->ulp_tbl[ulp_id].ulp_ops))
  return 1;
 return 0;
}
