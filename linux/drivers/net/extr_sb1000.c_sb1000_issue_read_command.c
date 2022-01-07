
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int const) ;
 int sb1000_send_command (int const*,char const*,unsigned char const*) ;
 int sb1000_wait_for_ready_clear (int const*,char const*) ;

__attribute__((used)) static void
sb1000_issue_read_command(const int ioaddr[], const char* name)
{
 static const unsigned char Command0[6] = {0x20, 0x00, 0x00, 0x01, 0x00, 0x00};

 sb1000_wait_for_ready_clear(ioaddr, name);
 outb(0xa0, ioaddr[0] + 6);
 sb1000_send_command(ioaddr, name, Command0);
}
