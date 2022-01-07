
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tmio_nand {TYPE_1__* dev; scalar_t__ fcr; int comp; } ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ FCR_IMR ;
 scalar_t__ FCR_ISR ;
 int dev_warn (int *,char*) ;
 int msecs_to_jiffies (long) ;
 struct tmio_nand* mtd_to_tmio (int ) ;
 int nand_status_op (struct nand_chip*,int*) ;
 int nand_to_mtd (struct nand_chip*) ;
 int reinit_completion (int *) ;
 int tmio_iowrite8 (int,scalar_t__) ;
 int tmio_nand_dev_ready (struct nand_chip*) ;
 scalar_t__ unlikely (int) ;
 long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int tmio_nand_wait(struct nand_chip *nand_chip)
{
 struct tmio_nand *tmio = mtd_to_tmio(nand_to_mtd(nand_chip));
 long timeout;
 u8 status;



 tmio_iowrite8(0x0f, tmio->fcr + FCR_ISR);
 reinit_completion(&tmio->comp);
 tmio_iowrite8(0x81, tmio->fcr + FCR_IMR);

 timeout = 400;
 timeout = wait_for_completion_timeout(&tmio->comp,
           msecs_to_jiffies(timeout));

 if (unlikely(!tmio_nand_dev_ready(nand_chip))) {
  tmio_iowrite8(0x00, tmio->fcr + FCR_IMR);
  dev_warn(&tmio->dev->dev, "still busy after 400 ms\n");

 } else if (unlikely(!timeout)) {
  tmio_iowrite8(0x00, tmio->fcr + FCR_IMR);
  dev_warn(&tmio->dev->dev, "timeout waiting for interrupt\n");
 }

 nand_status_op(nand_chip, &status);
 return status;
}
