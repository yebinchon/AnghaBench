
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ddb {scalar_t__ regs; } ;


 int memcpy_fromio (void*,scalar_t__,long) ;

__attribute__((used)) static inline void ddbcpyfrom(struct ddb *dev, void *dst, u32 adr, long count)
{
 memcpy_fromio(dst, dev->regs + adr, count);
}
