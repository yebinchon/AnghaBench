
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cpsw_slave {scalar_t__ regs; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void slave_write(struct cpsw_slave *slave, u32 val, u32 offset)
{
 writel_relaxed(val, slave->regs + offset);
}
