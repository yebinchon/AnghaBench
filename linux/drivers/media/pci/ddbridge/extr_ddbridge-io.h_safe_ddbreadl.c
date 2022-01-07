
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ddb {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ddbreadl (struct ddb*,int ) ;
 int dev_err (int *,char*,int ) ;

__attribute__((used)) static inline u32 safe_ddbreadl(struct ddb *dev, u32 adr)
{
 u32 val = ddbreadl(dev, adr);


 if (val == ~0) {
  dev_err(&dev->pdev->dev, "ddbreadl failure, adr=%08x\n", adr);
  return 0;
 }

 return val;
}
