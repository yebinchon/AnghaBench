
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alchemy_get_cputype () ;

__attribute__((used)) static inline int has_dbdma(void)
{
 switch (alchemy_get_cputype()) {
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
