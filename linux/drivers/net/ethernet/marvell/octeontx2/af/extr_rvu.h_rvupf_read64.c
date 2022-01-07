
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rvu {scalar_t__ pfreg_base; } ;


 scalar_t__ readq (scalar_t__) ;

__attribute__((used)) static inline u64 rvupf_read64(struct rvu *rvu, u64 offset)
{
 return readq(rvu->pfreg_base + offset);
}
