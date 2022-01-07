
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__ asq; } ;
struct iavf_hw {TYPE_2__ aq; } ;


 int IAVF_VF_ATQLEN1_ATQENABLE_MASK ;
 int rd32 (struct iavf_hw*,scalar_t__) ;

bool iavf_check_asq_alive(struct iavf_hw *hw)
{
 if (hw->aq.asq.len)
  return !!(rd32(hw, hw->aq.asq.len) &
     IAVF_VF_ATQLEN1_ATQENABLE_MASK);
 else
  return 0;
}
