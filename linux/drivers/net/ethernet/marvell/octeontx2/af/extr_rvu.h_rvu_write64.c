
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {scalar_t__ afreg_base; } ;


 int writeq (int,scalar_t__) ;

__attribute__((used)) static inline void rvu_write64(struct rvu *rvu, u64 block, u64 offset, u64 val)
{
 writeq(val, rvu->afreg_base + ((block << 28) | offset));
}
