
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_go7007 {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;
struct go7007 {int interrupt_available; int interrupt_data; int interrupt_value; struct saa7134_go7007* hpi_context; } ;


 int HPI_ADDR_INTR_RET_DATA ;
 int HPI_ADDR_INTR_RET_VALUE ;
 int gpio_read (struct saa7134_dev*,int ,int *) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int saa7134_go7007_read_interrupt(struct go7007 *go)
{
 struct saa7134_go7007 *saa = go->hpi_context;
 struct saa7134_dev *dev = saa->dev;


 go->interrupt_available = 1;
 gpio_read(dev, HPI_ADDR_INTR_RET_VALUE, &go->interrupt_value);
 gpio_read(dev, HPI_ADDR_INTR_RET_DATA, &go->interrupt_data);




 return 0;
}
