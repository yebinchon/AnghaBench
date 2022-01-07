
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_mailbox {int completion; int rsp_status; } ;


 int QLC_83XX_MBX_RESPONSE_ARRIVED ;
 int complete (int *) ;

__attribute__((used)) static inline void qlcnic_83xx_notify_mbx_response(struct qlcnic_mailbox *mbx)
{
 mbx->rsp_status = QLC_83XX_MBX_RESPONSE_ARRIVED;
 complete(&mbx->completion);
}
