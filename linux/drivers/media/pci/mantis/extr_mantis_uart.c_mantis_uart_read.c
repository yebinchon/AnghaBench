
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int bytes; } ;


 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int MANTIS_UART_RXD ;
 int dprintk (int ,int,char*,...) ;
 int mantis_input_process (struct mantis_pci*,int) ;
 int mmread (int ) ;

__attribute__((used)) static void mantis_uart_read(struct mantis_pci *mantis)
{
 struct mantis_hwconfig *config = mantis->hwconfig;
 int i, scancode = 0, err = 0;


 dprintk(MANTIS_DEBUG, 1, "UART Reading ...");
 for (i = 0; i < (config->bytes + 1); i++) {
  int data = mmread(MANTIS_UART_RXD);

  dprintk(MANTIS_DEBUG, 0, " <%02x>", data);

  scancode = (scancode << 8) | (data & 0x3f);
  err |= data;

  if (data & (1 << 7))
   dprintk(MANTIS_ERROR, 1, "UART framing error");

  if (data & (1 << 6))
   dprintk(MANTIS_ERROR, 1, "UART parity error");
 }
 dprintk(MANTIS_DEBUG, 0, "\n");

 if ((err & 0xC0) == 0)
  mantis_input_process(mantis, scancode);
}
