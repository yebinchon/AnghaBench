
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct adapter {scalar_t__ regs; } ;


 int readq (scalar_t__) ;

__attribute__((used)) static inline u64 t4_read_reg64(struct adapter *adap, u32 reg_addr)
{
 return readq(adap->regs + reg_addr);
}
