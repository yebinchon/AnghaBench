
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct i2c_adapter {int timeout; int retries; TYPE_1__ dev; int * algo_data; int * algo; int owner; int name; } ;
struct mantis_pci {int i2c_rc; int i2c_lock; int i2c_wq; struct pci_dev* pdev; struct i2c_adapter adapter; } ;


 int MANTIS_DEBUG ;
 int MANTIS_INT_I2CDONE ;
 int MANTIS_INT_MASK ;
 int MANTIS_INT_STAT ;
 int THIS_MODULE ;
 int dprintk (int ,int,char*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct mantis_pci*) ;
 int init_waitqueue_head (int *) ;
 int mantis_algo ;
 int mantis_mask_ints (struct mantis_pci*,int ) ;
 int mmread (int ) ;
 int mmwrite (int ,int ) ;
 int mutex_init (int *) ;
 int strscpy (int ,char*,int) ;

int mantis_i2c_init(struct mantis_pci *mantis)
{
 u32 intstat;
 struct i2c_adapter *i2c_adapter = &mantis->adapter;
 struct pci_dev *pdev = mantis->pdev;

 init_waitqueue_head(&mantis->i2c_wq);
 mutex_init(&mantis->i2c_lock);
 strscpy(i2c_adapter->name, "Mantis I2C", sizeof(i2c_adapter->name));
 i2c_set_adapdata(i2c_adapter, mantis);

 i2c_adapter->owner = THIS_MODULE;
 i2c_adapter->algo = &mantis_algo;
 i2c_adapter->algo_data = ((void*)0);
 i2c_adapter->timeout = 500;
 i2c_adapter->retries = 3;
 i2c_adapter->dev.parent = &pdev->dev;

 mantis->i2c_rc = i2c_add_adapter(i2c_adapter);
 if (mantis->i2c_rc < 0)
  return mantis->i2c_rc;

 dprintk(MANTIS_DEBUG, 1, "Initializing I2C ..");

 intstat = mmread(MANTIS_INT_STAT);
 mmread(MANTIS_INT_MASK);
 mmwrite(intstat, MANTIS_INT_STAT);
 dprintk(MANTIS_DEBUG, 1, "Disabling I2C interrupt");
 mantis_mask_ints(mantis, MANTIS_INT_I2CDONE);

 return 0;
}
