
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BIT_ULL (int) ;

__attribute__((used)) static inline u64 enable_mask(int count)
{
 return (((count) < 64) ? ~(BIT_ULL(count) - 1) : (0x00ULL));
}
