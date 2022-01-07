
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_smbus_read_byte (void*) ;

__attribute__((used)) static int read_d8(void *client)
{
 return i2c_smbus_read_byte(client);
}
