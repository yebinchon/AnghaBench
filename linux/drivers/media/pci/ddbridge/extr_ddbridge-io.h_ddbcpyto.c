
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ddb {scalar_t__ regs; } ;


 int memcpy_toio (scalar_t__,void*,long) ;

__attribute__((used)) static inline void ddbcpyto(struct ddb *dev, u32 adr, void *src, long count)
{
 memcpy_toio(dev->regs + adr, src, count);
}
