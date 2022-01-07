
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcafrm_handle {int init; int state; } ;


 int QCAFRM_WAIT_AA1 ;

__attribute__((used)) static inline void qcafrm_fsm_init_uart(struct qcafrm_handle *handle)
{
 handle->init = QCAFRM_WAIT_AA1;
 handle->state = handle->init;
}
