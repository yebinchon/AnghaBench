
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int card_send_command (int const*,char const*,unsigned char const*,unsigned char*) ;
 int sb1000_start_get_set_command (int const*,char const*) ;
 int ssleep (int) ;
 int udelay (int) ;

__attribute__((used)) static int
sb1000_activate(const int ioaddr[], const char* name)
{
 static const unsigned char Command0[6] = {0x80, 0x11, 0x00, 0x00, 0x00, 0x00};
 static const unsigned char Command1[6] = {0x80, 0x16, 0x00, 0x00, 0x00, 0x00};

 unsigned char st[7];
 int status;

 ssleep(1);
 status = card_send_command(ioaddr, name, Command0, st);
 if (status)
  return status;
 status = card_send_command(ioaddr, name, Command1, st);
 if (status)
  return status;
 if (st[3] != 0xf1) {
  status = sb1000_start_get_set_command(ioaddr, name);
  if (status)
   return status;
  return -EIO;
 }
 udelay(1000);
 return sb1000_start_get_set_command(ioaddr, name);
}
