
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int bah; int bal; int len; int tail; int head; } ;
struct TYPE_4__ {int asq_mutex; TYPE_1__ asq; } ;
struct iavf_hw {TYPE_2__ aq; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_ERR_NOT_READY ;
 int iavf_free_asq_bufs (struct iavf_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wr32 (struct iavf_hw*,int ,int ) ;

__attribute__((used)) static enum iavf_status iavf_shutdown_asq(struct iavf_hw *hw)
{
 enum iavf_status ret_code = 0;

 mutex_lock(&hw->aq.asq_mutex);

 if (hw->aq.asq.count == 0) {
  ret_code = IAVF_ERR_NOT_READY;
  goto shutdown_asq_out;
 }


 wr32(hw, hw->aq.asq.head, 0);
 wr32(hw, hw->aq.asq.tail, 0);
 wr32(hw, hw->aq.asq.len, 0);
 wr32(hw, hw->aq.asq.bal, 0);
 wr32(hw, hw->aq.asq.bah, 0);

 hw->aq.asq.count = 0;


 iavf_free_asq_bufs(hw);

shutdown_asq_out:
 mutex_unlock(&hw->aq.asq_mutex);
 return ret_code;
}
