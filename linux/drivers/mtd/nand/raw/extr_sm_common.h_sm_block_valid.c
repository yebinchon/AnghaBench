
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_oob {int block_status; } ;


 int hweight16 (int ) ;

__attribute__((used)) static inline int sm_block_valid(struct sm_oob *oob)
{
 return hweight16(oob->block_status) >= 7;
}
