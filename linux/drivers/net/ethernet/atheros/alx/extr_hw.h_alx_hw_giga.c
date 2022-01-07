
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_hw {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;



__attribute__((used)) static inline bool alx_hw_giga(struct alx_hw *hw)
{
 return hw->pdev->device & 1;
}
