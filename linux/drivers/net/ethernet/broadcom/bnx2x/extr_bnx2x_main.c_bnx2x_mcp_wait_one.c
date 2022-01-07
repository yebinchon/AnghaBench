
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int MCP_ONE_TIMEOUT ;
 int msleep (int) ;

__attribute__((used)) static void bnx2x_mcp_wait_one(struct bnx2x *bp)
{


 if (CHIP_REV_IS_SLOW(bp))
  msleep(MCP_ONE_TIMEOUT*10);
 else
  msleep(MCP_ONE_TIMEOUT);
}
