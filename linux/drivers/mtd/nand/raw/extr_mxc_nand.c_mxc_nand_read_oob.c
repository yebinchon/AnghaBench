
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int oob_poi; } ;
struct mxc_nand_host {TYPE_1__* devtype_data; } ;
struct TYPE_2__ {int (* read_page ) (struct nand_chip*,int *,int ,int ,int) ;} ;


 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int *,int ,int ,int) ;

__attribute__((used)) static int mxc_nand_read_oob(struct nand_chip *chip, int page)
{
 struct mxc_nand_host *host = nand_get_controller_data(chip);

 return host->devtype_data->read_page(chip, ((void*)0), chip->oob_poi, 0,
          page);
}
