
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int hbm_state; scalar_t__ init_clients_timer; } ;


 int MEI_HBM_IDLE ;

void mei_hbm_idle(struct mei_device *dev)
{
 dev->init_clients_timer = 0;
 dev->hbm_state = MEI_HBM_IDLE;
}
