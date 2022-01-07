
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int io_lines; TYPE_1__** resource; } ;
struct TYPE_2__ {int flags; } ;


 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_8 ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int pcan_conf_check(struct pcmcia_device *pdev, void *priv_data)
{
 pdev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
 pdev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;
 pdev->io_lines = 10;


 return pcmcia_request_io(pdev);
}
