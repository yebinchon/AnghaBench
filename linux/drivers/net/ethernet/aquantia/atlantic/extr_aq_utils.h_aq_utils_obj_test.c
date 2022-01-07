
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int atomic_t ;


 int atomic_read (int *) ;

__attribute__((used)) static inline bool aq_utils_obj_test(atomic_t *flags, u32 mask)
{
 return atomic_read(flags) & mask;
}
