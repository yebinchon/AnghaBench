
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netxen_adapter {scalar_t__ portnum; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;




 int NETXEN_ULA_KEY ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static void netxen_read_ula_info(struct netxen_adapter *adapter)
{
 u32 temp;


 if (adapter->portnum != 0)
  return;

 temp = NXRD32(adapter, NETXEN_ULA_KEY);
 switch (temp) {
 case 128:
  dev_info(&adapter->pdev->dev, "ULA adapter");
  break;
 case 129:
  dev_info(&adapter->pdev->dev, "non ULA adapter");
  break;
 default:
  break;
 }

 return;
}
