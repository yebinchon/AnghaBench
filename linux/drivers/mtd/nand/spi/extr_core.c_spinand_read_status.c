
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int REG_STATUS ;
 int spinand_read_reg_op (struct spinand_device*,int ,int *) ;

__attribute__((used)) static int spinand_read_status(struct spinand_device *spinand, u8 *status)
{
 return spinand_read_reg_op(spinand, REG_STATUS, status);
}
