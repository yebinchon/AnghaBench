
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cx231xx {int dummy; } ;


 int ITVC_READ_DIR ;
 int ITVC_WRITE_DIR ;
 int MCI_MODE_REGISTER_READ ;
 int MCI_REGISTER_ADDRESS_BYTE0 ;
 int MCI_REGISTER_ADDRESS_BYTE1 ;
 int MCI_REGISTER_DATA_BYTE0 ;
 int MCI_REGISTER_DATA_BYTE1 ;
 int MCI_REGISTER_DATA_BYTE2 ;
 int MCI_REGISTER_DATA_BYTE3 ;
 int MCI_REGISTER_MODE ;
 int get_itvc_reg (struct cx231xx*,int ,int*) ;
 int set_itvc_reg (struct cx231xx*,int ,int) ;
 int wait_for_mci_complete (struct cx231xx*) ;

__attribute__((used)) static int mc417_register_read(struct cx231xx *dev, u16 address, u32 *value)
{

 u32 temp;
 u32 return_value = 0;
 int ret = 0;

 temp = 0x82 | MCI_REGISTER_ADDRESS_BYTE0 | ((address & 0x00FF) << 8);
 temp = temp << 10;
 set_itvc_reg(dev, ITVC_WRITE_DIR, temp);
 temp = temp | ((0x05) << 10);
 set_itvc_reg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82 | MCI_REGISTER_ADDRESS_BYTE1 | (address & 0xFF00);
 temp = temp << 10;
 set_itvc_reg(dev, ITVC_WRITE_DIR, temp);
 temp = temp | ((0x05) << 10);
 set_itvc_reg(dev, ITVC_WRITE_DIR, temp);


 temp = 0x82 | MCI_REGISTER_MODE | MCI_MODE_REGISTER_READ;
 temp = temp << 10;
 set_itvc_reg(dev, ITVC_WRITE_DIR, temp);
 temp = temp | ((0x05) << 10);
 set_itvc_reg(dev, ITVC_WRITE_DIR, temp);



 ret = wait_for_mci_complete(dev);




 temp = (0x82 | MCI_REGISTER_DATA_BYTE0) << 10;
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 temp = ((0x81 | MCI_REGISTER_DATA_BYTE0) << 10);
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 get_itvc_reg(dev, ITVC_READ_DIR, &temp);
 return_value |= ((temp & 0x03FC0000) >> 18);
 set_itvc_reg(dev, ITVC_READ_DIR, (0x87 << 10));


 temp = (0x82 | MCI_REGISTER_DATA_BYTE1) << 10;
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 temp = ((0x81 | MCI_REGISTER_DATA_BYTE1) << 10);
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 get_itvc_reg(dev, ITVC_READ_DIR, &temp);

 return_value |= ((temp & 0x03FC0000) >> 10);
 set_itvc_reg(dev, ITVC_READ_DIR, (0x87 << 10));


 temp = (0x82 | MCI_REGISTER_DATA_BYTE2) << 10;
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 temp = ((0x81 | MCI_REGISTER_DATA_BYTE2) << 10);
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 get_itvc_reg(dev, ITVC_READ_DIR, &temp);
 return_value |= ((temp & 0x03FC0000) >> 2);
 set_itvc_reg(dev, ITVC_READ_DIR, (0x87 << 10));


 temp = (0x82 | MCI_REGISTER_DATA_BYTE3) << 10;
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 temp = ((0x81 | MCI_REGISTER_DATA_BYTE3) << 10);
 set_itvc_reg(dev, ITVC_READ_DIR, temp);
 get_itvc_reg(dev, ITVC_READ_DIR, &temp);
 return_value |= ((temp & 0x03FC0000) << 6);
 set_itvc_reg(dev, ITVC_READ_DIR, (0x87 << 10));

 *value = return_value;
 return ret;
}
