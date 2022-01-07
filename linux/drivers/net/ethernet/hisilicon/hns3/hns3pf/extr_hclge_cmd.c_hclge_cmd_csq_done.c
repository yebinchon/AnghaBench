
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ next_to_use; } ;
struct TYPE_4__ {TYPE_1__ csq; } ;
struct hclge_hw {TYPE_2__ cmq; } ;


 int HCLGE_NIC_CSQ_HEAD_REG ;
 scalar_t__ hclge_read_dev (struct hclge_hw*,int ) ;

__attribute__((used)) static int hclge_cmd_csq_done(struct hclge_hw *hw)
{
 u32 head = hclge_read_dev(hw, HCLGE_NIC_CSQ_HEAD_REG);
 return head == hw->cmq.csq.next_to_use;
}
