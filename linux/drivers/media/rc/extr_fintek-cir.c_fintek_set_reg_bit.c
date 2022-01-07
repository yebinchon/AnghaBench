
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fintek_dev {int dummy; } ;


 int fintek_cr_read (struct fintek_dev*,int) ;
 int fintek_cr_write (struct fintek_dev*,int,int) ;

__attribute__((used)) static inline void fintek_set_reg_bit(struct fintek_dev *fintek, u8 val, u8 reg)
{
 u8 tmp = fintek_cr_read(fintek, reg) | val;
 fintek_cr_write(fintek, tmp, reg);
}
