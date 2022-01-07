
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int i2c_mutex; } ;


 int EAGAIN ;
 int EREMOTEIO ;
 int I2C_ADDR_24C16 ;
 int I2C_ADDR_24C64 ;
 int eth_zero_addr (int*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pctv452e_i2c_msg (struct dvb_usb_device*,int ,int const*,int,int*,int) ;
 int ttpci_eeprom_decode_mac (int*,int*) ;

__attribute__((used)) static int pctv452e_read_mac_address(struct dvb_usb_device *d, u8 mac[6])
{
 const u8 mem_addr[] = { 0x1f, 0xcc };
 u8 encoded_mac[20];
 int ret;

 ret = -EAGAIN;
 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  goto failed;

 ret = pctv452e_i2c_msg(d, I2C_ADDR_24C16,
    mem_addr + 1, 1,
    encoded_mac, 20);
 if (-EREMOTEIO == ret)


  ret = pctv452e_i2c_msg(d, I2C_ADDR_24C64,
     mem_addr, 2,
     encoded_mac, 20);

 mutex_unlock(&d->i2c_mutex);

 if (20 != ret)
  goto failed;

 ret = ttpci_eeprom_decode_mac(mac, encoded_mac);
 if (0 != ret)
  goto failed;

 return 0;

failed:
 eth_zero_addr(mac);

 return ret;
}
