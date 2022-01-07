
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef int t ;
struct spi_transfer {int* tx_buf; int len; int bits_per_word; } ;
struct spi_message {int dummy; } ;
struct eeprom_93xx46_platform_data {int (* finish ) (struct eeprom_93xx46_dev*) ;int (* prepare ) (struct eeprom_93xx46_dev*) ;} ;
struct eeprom_93xx46_dev {int addrlen; int lock; TYPE_1__* spi; struct eeprom_93xx46_platform_data* pdata; } ;
struct TYPE_2__ {int dev; } ;


 int ADDR_ERAL ;
 int OP_START ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ has_quirk_instruction_length (struct eeprom_93xx46_dev*) ;
 int mdelay (int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;
 int stub1 (struct eeprom_93xx46_dev*) ;
 int stub2 (struct eeprom_93xx46_dev*) ;

__attribute__((used)) static int eeprom_93xx46_eral(struct eeprom_93xx46_dev *edev)
{
 struct eeprom_93xx46_platform_data *pd = edev->pdata;
 struct spi_message m;
 struct spi_transfer t;
 int bits, ret;
 u16 cmd_addr;

 cmd_addr = OP_START << edev->addrlen;
 if (edev->addrlen == 7) {
  cmd_addr |= ADDR_ERAL << 1;
  bits = 10;
 } else {
  cmd_addr |= ADDR_ERAL;
  bits = 9;
 }

 if (has_quirk_instruction_length(edev)) {
  cmd_addr <<= 2;
  bits += 2;
 }

 dev_dbg(&edev->spi->dev, "eral cmd 0x%04x, %d bits\n", cmd_addr, bits);

 spi_message_init(&m);
 memset(&t, 0, sizeof(t));

 t.tx_buf = &cmd_addr;
 t.len = 2;
 t.bits_per_word = bits;
 spi_message_add_tail(&t, &m);

 mutex_lock(&edev->lock);

 if (edev->pdata->prepare)
  edev->pdata->prepare(edev);

 ret = spi_sync(edev->spi, &m);
 if (ret)
  dev_err(&edev->spi->dev, "erase error %d\n", ret);

 mdelay(6);

 if (pd->finish)
  pd->finish(edev);

 mutex_unlock(&edev->lock);
 return ret;
}
