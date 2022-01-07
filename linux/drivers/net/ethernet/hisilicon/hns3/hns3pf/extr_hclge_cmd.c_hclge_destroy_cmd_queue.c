
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crq; int csq; } ;
struct hclge_hw {TYPE_1__ cmq; } ;


 int hclge_destroy_queue (int *) ;

__attribute__((used)) static void hclge_destroy_cmd_queue(struct hclge_hw *hw)
{
 hclge_destroy_queue(&hw->cmq.csq);
 hclge_destroy_queue(&hw->cmq.crq);
}
