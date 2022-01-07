
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sm_oob {int dummy; } ;


 int memcmp (struct sm_oob*,int const*,int) ;

__attribute__((used)) static inline int sm_block_erased(struct sm_oob *oob)
{
 static const uint32_t erased_pattern[4] = {
  0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF };


 if (!memcmp(oob, erased_pattern, sizeof(*oob)))
  return 1;
 return 0;
}
