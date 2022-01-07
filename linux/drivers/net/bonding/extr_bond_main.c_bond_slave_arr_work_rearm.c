
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int slave_arr_work; int wq; } ;


 int queue_delayed_work (int ,int *,unsigned long) ;

void bond_slave_arr_work_rearm(struct bonding *bond, unsigned long delay)
{
 queue_delayed_work(bond->wq, &bond->slave_arr_work, delay);
}
