
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int card_send_command (int const*,char const*,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int
sb1000_check_CRC(const int ioaddr[], const char* name)
{
 static const unsigned char Command0[6] = {0x80, 0x1f, 0x00, 0x00, 0x00, 0x00};

 unsigned char st[7];
 int status;


 if ((status = card_send_command(ioaddr, name, Command0, st)))
  return status;
 if (st[1] != st[3] || st[2] != st[4])
  return -EIO;
 return 0;
}
