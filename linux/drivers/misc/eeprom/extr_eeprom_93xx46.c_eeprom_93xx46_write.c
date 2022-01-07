
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eeprom_93xx46_dev {unsigned int size; int addrlen; int lock; TYPE_2__* pdata; TYPE_1__* spi; } ;
struct TYPE_4__ {int (* finish ) (struct eeprom_93xx46_dev*) ;int (* prepare ) (struct eeprom_93xx46_dev*) ;} ;
struct TYPE_3__ {int dev; } ;


 int EFBIG ;
 int dev_err (int *,char*,int,int) ;
 int eeprom_93xx46_ew (struct eeprom_93xx46_dev*,int) ;
 int eeprom_93xx46_write_word (struct eeprom_93xx46_dev*,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct eeprom_93xx46_dev*) ;
 int stub2 (struct eeprom_93xx46_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int eeprom_93xx46_write(void *priv, unsigned int off,
       void *val, size_t count)
{
 struct eeprom_93xx46_dev *edev = priv;
 char *buf = val;
 int i, ret, step = 1;

 if (unlikely(off >= edev->size))
  return -EFBIG;
 if ((off + count) > edev->size)
  count = edev->size - off;
 if (unlikely(!count))
  return count;


 if (edev->addrlen == 6) {
  step = 2;
  count &= ~1;
 }


 ret = eeprom_93xx46_ew(edev, 1);
 if (ret)
  return ret;

 mutex_lock(&edev->lock);

 if (edev->pdata->prepare)
  edev->pdata->prepare(edev);

 for (i = 0; i < count; i += step) {
  ret = eeprom_93xx46_write_word(edev, &buf[i], off + i);
  if (ret) {
   dev_err(&edev->spi->dev, "write failed at %d: %d\n",
    (int)off + i, ret);
   break;
  }
 }

 if (edev->pdata->finish)
  edev->pdata->finish(edev);

 mutex_unlock(&edev->lock);


 eeprom_93xx46_ew(edev, 0);
 return ret;
}
