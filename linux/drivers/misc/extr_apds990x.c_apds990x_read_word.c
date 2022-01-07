
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct i2c_client {int dummy; } ;
struct apds990x_chip {struct i2c_client* client; } ;
typedef scalar_t__ s32 ;


 int APDS990x_CMD ;
 int APDS990x_CMD_TYPE_INC ;
 int APDS990x_CMD_TYPE_MASK ;
 scalar_t__ i2c_smbus_read_word_data (struct i2c_client*,int) ;

__attribute__((used)) static int apds990x_read_word(struct apds990x_chip *chip, u8 reg, u16 *data)
{
 struct i2c_client *client = chip->client;
 s32 ret;

 reg &= ~APDS990x_CMD_TYPE_MASK;
 reg |= APDS990x_CMD | APDS990x_CMD_TYPE_INC;

 ret = i2c_smbus_read_word_data(client, reg);
 *data = ret;
 return (int)ret;
}
