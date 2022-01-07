
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;
typedef int __be32 ;


 int t4_memory_rw (struct adapter*,int ,int,int ,int ,int *,int ) ;

__attribute__((used)) static inline int t4_memory_write(struct adapter *adap, int mtype, u32 addr,
      u32 len, __be32 *buf)
{
 return t4_memory_rw(adap, 0, mtype, addr, len, buf, 0);
}
