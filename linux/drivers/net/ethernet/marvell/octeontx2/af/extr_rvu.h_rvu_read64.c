
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {scalar_t__ afreg_base; } ;


 int readq (scalar_t__) ;

__attribute__((used)) static inline u64 rvu_read64(struct rvu *rvu, u64 block, u64 offset)
{
 return readq(rvu->afreg_base + ((block << 28) | offset));
}
