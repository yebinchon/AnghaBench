
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmi_transfer {int dummy; } ;
struct gpmi_nand_data {size_t ntransfers; struct gpmi_transfer* transfers; } ;


 size_t GPMI_MAX_TRANSFERS ;

__attribute__((used)) static struct gpmi_transfer *get_next_transfer(struct gpmi_nand_data *this)
{
 struct gpmi_transfer *transfer = &this->transfers[this->ntransfers];

 this->ntransfers++;

 if (this->ntransfers == GPMI_MAX_TRANSFERS)
  return ((void*)0);

 return transfer;
}
