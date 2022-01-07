
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cpsw_slave {scalar_t__ regs; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 slave_read(struct cpsw_slave *slave, u32 offset)
{
 return readl_relaxed(slave->regs + offset);
}
