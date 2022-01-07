
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int state; } ;


 int HCLGE_VPORT_STATE_ALIVE ;
 int clear_bit (int ,int *) ;

void hclge_vport_stop(struct hclge_vport *vport)
{
 clear_bit(HCLGE_VPORT_STATE_ALIVE, &vport->state);
}
