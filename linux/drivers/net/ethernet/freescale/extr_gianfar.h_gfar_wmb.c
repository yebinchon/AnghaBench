
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eieio () ;
 int wmb () ;

__attribute__((used)) static inline void gfar_wmb(void)
{
 wmb();

}
