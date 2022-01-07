
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ngene {int * ngenetohost; int * hosttongene; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int * HOST_TO_NGENE ;
 int * NGENE_TO_HOST ;
 int dev_err (struct device*,char*,int *,int,int *) ;
 int ngcpyfrom (int *,int *,int) ;

__attribute__((used)) static void dump_command_io(struct ngene *dev)
{
 struct device *pdev = &dev->pci_dev->dev;
 u8 buf[8], *b;

 ngcpyfrom(buf, HOST_TO_NGENE, 8);
 dev_err(pdev, "host_to_ngene (%04x): %*ph\n", HOST_TO_NGENE, 8, buf);

 ngcpyfrom(buf, NGENE_TO_HOST, 8);
 dev_err(pdev, "ngene_to_host (%04x): %*ph\n", NGENE_TO_HOST, 8, buf);

 b = dev->hosttongene;
 dev_err(pdev, "dev->hosttongene (%p): %*ph\n", b, 8, b);

 b = dev->ngenetohost;
 dev_err(pdev, "dev->ngenetohost (%p): %*ph\n", b, 8, b);
}
