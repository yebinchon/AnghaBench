
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct bnx2x {int dummy; } ;


 int BP_PORT (struct bnx2x*) ;
 scalar_t__ COMMAND_REG_SIMD_MASK ;
 scalar_t__ HC_REG_COMMAND_REG ;
 scalar_t__ REG_RD (struct bnx2x*,scalar_t__) ;
 int barrier () ;

__attribute__((used)) static inline u16 bnx2x_hc_ack_int(struct bnx2x *bp)
{
 u32 hc_addr = (HC_REG_COMMAND_REG + BP_PORT(bp)*32 +
         COMMAND_REG_SIMD_MASK);
 u32 result = REG_RD(bp, hc_addr);

 barrier();
 return result;
}
