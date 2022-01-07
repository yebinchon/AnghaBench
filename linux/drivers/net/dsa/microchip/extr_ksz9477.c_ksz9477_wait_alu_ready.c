
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int * regmap; } ;


 unsigned int ALU_START ;
 int REG_SW_ALU_CTRL__4 ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;

__attribute__((used)) static int ksz9477_wait_alu_ready(struct ksz_device *dev)
{
 unsigned int val;

 return regmap_read_poll_timeout(dev->regmap[2], REG_SW_ALU_CTRL__4,
     val, !(val & ALU_START), 10, 1000);
}
