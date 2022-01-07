
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crq; int csq; } ;
struct hclge_hw {TYPE_1__ cmq; } ;


 int hclge_cmd_config_regs (int *) ;

__attribute__((used)) static void hclge_cmd_init_regs(struct hclge_hw *hw)
{
 hclge_cmd_config_regs(&hw->cmq.csq);
 hclge_cmd_config_regs(&hw->cmq.crq);
}
