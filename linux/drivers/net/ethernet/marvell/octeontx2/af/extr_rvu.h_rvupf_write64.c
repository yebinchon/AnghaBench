
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rvu {scalar_t__ pfreg_base; } ;


 int writeq (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void rvupf_write64(struct rvu *rvu, u64 offset, u64 val)
{
 writeq(val, rvu->pfreg_base + offset);
}
