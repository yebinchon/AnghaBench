
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum lp8788_int_id { ____Placeholder_lp8788_int_id } lp8788_int_id ;


 int SIZE_REG ;

__attribute__((used)) static inline u8 _irq_to_addr(enum lp8788_int_id id)
{
 return id / SIZE_REG;
}
