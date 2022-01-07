
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int bah; int bal; int len; int tail; int head; } ;
struct TYPE_4__ {int asq_mutex; TYPE_1__ asq; } ;
struct i40e_hw {TYPE_2__ aq; } ;
typedef int i40e_status ;


 int I40E_ERR_NOT_READY ;
 int i40e_free_asq_bufs (struct i40e_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static i40e_status i40e_shutdown_asq(struct i40e_hw *hw)
{
 i40e_status ret_code = 0;

 mutex_lock(&hw->aq.asq_mutex);

 if (hw->aq.asq.count == 0) {
  ret_code = I40E_ERR_NOT_READY;
  goto shutdown_asq_out;
 }


 wr32(hw, hw->aq.asq.head, 0);
 wr32(hw, hw->aq.asq.tail, 0);
 wr32(hw, hw->aq.asq.len, 0);
 wr32(hw, hw->aq.asq.bal, 0);
 wr32(hw, hw->aq.asq.bah, 0);

 hw->aq.asq.count = 0;


 i40e_free_asq_bufs(hw);

shutdown_asq_out:
 mutex_unlock(&hw->aq.asq_mutex);
 return ret_code;
}
