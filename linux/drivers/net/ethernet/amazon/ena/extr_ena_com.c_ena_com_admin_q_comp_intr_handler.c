
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int admin_queue; } ;


 int ena_com_handle_admin_completion (int *) ;

void ena_com_admin_q_comp_intr_handler(struct ena_com_dev *ena_dev)
{
 ena_com_handle_admin_completion(&ena_dev->admin_queue);
}
