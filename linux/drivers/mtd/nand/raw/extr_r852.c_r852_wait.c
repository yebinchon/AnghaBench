
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r852_device {scalar_t__ dma_error; } ;
struct TYPE_2__ {scalar_t__ (* dev_ready ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;


 int NAND_STATUS_FAIL ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 struct r852_device* nand_get_controller_data (struct nand_chip*) ;
 int nand_status_op (struct nand_chip*,int*) ;
 scalar_t__ stub1 (struct nand_chip*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int r852_wait(struct nand_chip *chip)
{
 struct r852_device *dev = nand_get_controller_data(chip);

 unsigned long timeout;
 u8 status;

 timeout = jiffies + msecs_to_jiffies(400);

 while (time_before(jiffies, timeout))
  if (chip->legacy.dev_ready(chip))
   break;

 nand_status_op(chip, &status);


 if (dev->dma_error) {
  status |= NAND_STATUS_FAIL;
  dev->dma_error = 0;
 }
 return status;
}
