
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int card_send_command (int const*,char const*,unsigned char const*,unsigned char*) ;
 int sb1000_end_get_set_command (int const*,char const*) ;
 int sb1000_start_get_set_command (int const*,char const*) ;
 int udelay (int) ;

__attribute__((used)) static int
sb1000_get_frequency(const int ioaddr[], const char* name, int* frequency)
{
 static const unsigned char Command0[6] = {0x80, 0x44, 0x00, 0x00, 0x00, 0x00};

 unsigned char st[7];
 int status;

 udelay(1000);
 if ((status = sb1000_start_get_set_command(ioaddr, name)))
  return status;
 if ((status = card_send_command(ioaddr, name, Command0, st)))
  return status;
 *frequency = ((st[1] << 8 | st[2]) << 8 | st[3]) << 8 | st[4];
 return sb1000_end_get_set_command(ioaddr, name);
}
