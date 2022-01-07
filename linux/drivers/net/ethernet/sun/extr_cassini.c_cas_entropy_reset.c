
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int cas_flags; scalar_t__ regs; } ;


 int BIM_LOCAL_DEV_EXT ;
 int BIM_LOCAL_DEV_PAD ;
 int BIM_LOCAL_DEV_PROM ;
 int CAS_FLAG_ENTROPY_DEV ;
 int ENTROPY_RESET_STC_MODE ;
 scalar_t__ REG_BIM_LOCAL_DEV_EN ;
 scalar_t__ REG_ENTROPY_RAND_REG ;
 scalar_t__ REG_ENTROPY_RESET ;
 scalar_t__ readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void cas_entropy_reset(struct cas *cp)
{
}
