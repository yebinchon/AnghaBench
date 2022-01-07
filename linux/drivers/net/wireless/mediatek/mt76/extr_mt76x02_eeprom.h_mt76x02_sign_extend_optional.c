
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (unsigned int) ;
 int mt76x02_sign_extend (int,unsigned int) ;

__attribute__((used)) static inline int
mt76x02_sign_extend_optional(u32 val, unsigned int size)
{
 bool enable = val & BIT(size);

 return enable ? mt76x02_sign_extend(val, size) : 0;
}
