
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_uart_params {int parity; int baud_rate; } ;
struct mantis_pci {int dummy; } ;


 int EINVAL ;





 int MANTIS_UART_BAUD ;
 int MANTIS_UART_CTL ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;

__attribute__((used)) static int mantis_uart_setup(struct mantis_pci *mantis,
        struct mantis_uart_params *params)
{
 u32 reg;

 mmwrite((mmread(MANTIS_UART_CTL) | (params->parity & 0x3)), MANTIS_UART_CTL);

 reg = mmread(MANTIS_UART_BAUD);

 switch (params->baud_rate) {
 case 128:
  reg |= 0xd8;
  break;
 case 131:
  reg |= 0x6c;
  break;
 case 130:
  reg |= 0x36;
  break;
 case 129:
  reg |= 0x23;
  break;
 case 132:
  reg |= 0x11;
  break;
 default:
  return -EINVAL;
 }

 mmwrite(reg, MANTIS_UART_BAUD);

 return 0;
}
