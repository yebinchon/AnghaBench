
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;


 int REG_BLOCK_LOCK ;
 int spinand_write_reg_op (struct spinand_device*,int ,int ) ;

__attribute__((used)) static int spinand_lock_block(struct spinand_device *spinand, u8 lock)
{
 return spinand_write_reg_op(spinand, REG_BLOCK_LOCK, lock);
}
