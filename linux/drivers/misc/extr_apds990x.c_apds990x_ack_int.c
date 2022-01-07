
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct apds990x_chip {struct i2c_client* client; } ;
typedef scalar_t__ s32 ;


 int APDS990X_INT_ACK_ALS ;
 int APDS990X_INT_ACK_BOTH ;
 int APDS990X_INT_ACK_PS ;


 int APDS990x_CMD ;
 int APDS990x_CMD_TYPE_SPE ;
 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int apds990x_ack_int(struct apds990x_chip *chip, u8 mode)
{
 struct i2c_client *client = chip->client;
 s32 ret;
 u8 reg = APDS990x_CMD | APDS990x_CMD_TYPE_SPE;

 switch (mode & (129 | 128)) {
 case 129:
  reg |= APDS990X_INT_ACK_ALS;
  break;
 case 128:
  reg |= APDS990X_INT_ACK_PS;
  break;
 default:
  reg |= APDS990X_INT_ACK_BOTH;
  break;
 }

 ret = i2c_smbus_read_byte_data(client, reg);
 return (int)ret;
}
