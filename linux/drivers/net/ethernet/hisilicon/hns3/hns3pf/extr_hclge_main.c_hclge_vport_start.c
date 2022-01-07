
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int last_active_jiffies; int state; } ;


 int HCLGE_VPORT_STATE_ALIVE ;
 int jiffies ;
 int set_bit (int ,int *) ;

int hclge_vport_start(struct hclge_vport *vport)
{
 set_bit(HCLGE_VPORT_STATE_ALIVE, &vport->state);
 vport->last_active_jiffies = jiffies;
 return 0;
}
