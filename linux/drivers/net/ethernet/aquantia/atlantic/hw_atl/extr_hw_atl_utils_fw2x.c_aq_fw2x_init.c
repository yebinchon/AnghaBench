
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {unsigned int mbox_addr; unsigned int rpc_addr; } ;


 int aq_fw2x_mbox_get ;
 int aq_fw2x_rpc_get ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,unsigned int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int aq_fw2x_init(struct aq_hw_s *self)
{
 int err = 0;


 err = readx_poll_timeout_atomic(aq_fw2x_mbox_get,
     self, self->mbox_addr,
     self->mbox_addr != 0U,
     1000U, 10000U);

 err = readx_poll_timeout_atomic(aq_fw2x_rpc_get,
     self, self->rpc_addr,
     self->rpc_addr != 0U,
     1000U, 100000U);

 return err;
}
