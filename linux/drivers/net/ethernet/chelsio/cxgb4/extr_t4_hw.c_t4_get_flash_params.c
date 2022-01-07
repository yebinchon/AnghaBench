
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct flash_desc {int member_0; int member_1; int vendor_and_model_id; unsigned int size_mb; } ;
struct TYPE_2__ {unsigned int sf_size; unsigned int sf_nsec; } ;
struct adapter {TYPE_1__ params; int pdev_dev; } ;


 unsigned int ARRAY_SIZE (struct flash_desc*) ;
 unsigned int FLASH_MIN_SIZE ;
 int SF_OP_A ;
 int SF_RD_ID ;
 unsigned int SF_SEC_SIZE ;
 int dev_warn (int ,char*,int,...) ;
 int sf1_read (struct adapter*,int,int ,int,int*) ;
 int sf1_write (struct adapter*,int,int,int ,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int t4_get_flash_params(struct adapter *adap)
{



 static struct flash_desc supported_flash[] = {
  { 0x150201, 4 << 20 },
 };

 unsigned int part, manufacturer;
 unsigned int density, size = 0;
 u32 flashid = 0;
 int ret;







 ret = sf1_write(adap, 1, 1, 0, SF_RD_ID);
 if (!ret)
  ret = sf1_read(adap, 3, 0, 1, &flashid);
 t4_write_reg(adap, SF_OP_A, 0);
 if (ret)
  return ret;



 for (part = 0; part < ARRAY_SIZE(supported_flash); part++)
  if (supported_flash[part].vendor_and_model_id == flashid) {
   adap->params.sf_size = supported_flash[part].size_mb;
   adap->params.sf_nsec =
    adap->params.sf_size / SF_SEC_SIZE;
   goto found;
  }
 manufacturer = flashid & 0xff;
 switch (manufacturer) {
 case 0x20: {



  density = (flashid >> 16) & 0xff;
  switch (density) {
  case 0x14:
   size = 1 << 20;
   break;
  case 0x15:
   size = 1 << 21;
   break;
  case 0x16:
   size = 1 << 22;
   break;
  case 0x17:
   size = 1 << 23;
   break;
  case 0x18:
   size = 1 << 24;
   break;
  case 0x19:
   size = 1 << 25;
   break;
  case 0x20:
   size = 1 << 26;
   break;
  case 0x21:
   size = 1 << 27;
   break;
  case 0x22:
   size = 1 << 28;
   break;
  }
  break;
 }
 case 0x9d: {



  density = (flashid >> 16) & 0xff;
  switch (density) {
  case 0x16:
   size = 1 << 25;
   break;
  case 0x17:
   size = 1 << 26;
   break;
  }
  break;
 }
 case 0xc2: {



  density = (flashid >> 16) & 0xff;
  switch (density) {
  case 0x17:
   size = 1 << 23;
   break;
  case 0x18:
   size = 1 << 24;
   break;
  }
  break;
 }
 case 0xef: {



  density = (flashid >> 16) & 0xff;
  switch (density) {
  case 0x17:
   size = 1 << 23;
   break;
  case 0x18:
   size = 1 << 24;
   break;
  }
  break;
 }
 }







 if (size == 0) {
  dev_warn(adap->pdev_dev, "Unknown Flash Part, ID = %#x, assuming 4MB\n",
    flashid);
  size = 1 << 22;
 }


 adap->params.sf_size = size;
 adap->params.sf_nsec = size / SF_SEC_SIZE;

found:
 if (adap->params.sf_size < FLASH_MIN_SIZE)
  dev_warn(adap->pdev_dev, "WARNING: Flash Part ID %#x, size %#x < %#x\n",
    flashid, adap->params.sf_size, FLASH_MIN_SIZE);
 return 0;
}
