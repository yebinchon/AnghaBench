
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_mailbox {int status; int completion; } ;


 int QLC_83XX_MBX_READY ;
 int reinit_completion (int *) ;
 int set_bit (int ,int *) ;

void qlcnic_83xx_reinit_mbx_work(struct qlcnic_mailbox *mbx)
{
 reinit_completion(&mbx->completion);
 set_bit(QLC_83XX_MBX_READY, &mbx->status);
}
