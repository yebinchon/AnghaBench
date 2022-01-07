
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_MC5_DB_DBGI_REQ_CMD ;
 int A_MC5_DB_DBGI_RSP_STATUS ;
 int F_DBGIRSPVALID ;
 int MAX_WRITE_ATTEMPTS ;
 int t3_wait_op_done (struct adapter*,int ,int ,int,int ,int) ;
 int t3_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int mc5_cmd_write(struct adapter *adapter, u32 cmd)
{
 t3_write_reg(adapter, A_MC5_DB_DBGI_REQ_CMD, cmd);
 return t3_wait_op_done(adapter, A_MC5_DB_DBGI_RSP_STATUS,
          F_DBGIRSPVALID, 1, MAX_WRITE_ATTEMPTS, 1);
}
