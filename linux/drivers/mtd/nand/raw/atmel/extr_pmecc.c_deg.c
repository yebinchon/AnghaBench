
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fls (unsigned int) ;

__attribute__((used)) static inline int deg(unsigned int poly)
{

 return fls(poly) - 1;
}
