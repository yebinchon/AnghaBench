
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int * dev_addr; } ;
struct TYPE_3__ {int command; int config1; int config2; } ;
struct TYPE_4__ {int rx_head; TYPE_1__ regs; scalar_t__ tx_tail; scalar_t__ tx_head; } ;


 int CFG1_BUFSELSTAT0 ;
 int CFG1_LOCBUFMEM ;
 int CFG1_TRANSEND ;
 int CFG2_CTRLO ;
 int CFG2_RESET ;
 int CMD_ENINTRX ;
 int CMD_ENINTTX ;
 int CMD_RXOFF ;
 int CMD_RXON ;
 int CMD_TXOFF ;
 int REG_BUFWIN ;
 int REG_COMMAND ;
 int REG_CONFIG1 ;
 int REG_CONFIG2 ;
 int REG_RECVEND ;
 int REG_RECVPTR ;
 int REG_STATUS ;
 int REG_TRANSMITPTR ;
 int RX_START ;
 int STAT_RXON ;
 int STAT_TXON ;
 int TX_END ;
 int barrier () ;
 int buffer_write ;
 int ether3_inw (int ) ;
 int ether3_outb (int ,int ) ;
 int ether3_outw (int,int ) ;
 int ether3_setbuffer (struct net_device*,int ,int ) ;
 int ether3_writelong (struct net_device*,int ) ;
 TYPE_2__* priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static void
ether3_init_for_open(struct net_device *dev)
{
 int i;


 ether3_outw(CFG2_RESET, REG_CONFIG2);
 udelay(4);

 priv(dev)->regs.command = 0;
 ether3_outw(CMD_RXOFF|CMD_TXOFF, REG_COMMAND);
 while (ether3_inw(REG_STATUS) & (STAT_RXON|STAT_TXON))
  barrier();

 ether3_outw(priv(dev)->regs.config1 | CFG1_BUFSELSTAT0, REG_CONFIG1);
 for (i = 0; i < 6; i++)
  ether3_outb(dev->dev_addr[i], REG_BUFWIN);

 priv(dev)->tx_head = 0;
 priv(dev)->tx_tail = 0;
 priv(dev)->regs.config2 |= CFG2_CTRLO;
 priv(dev)->rx_head = RX_START;

 ether3_outw(priv(dev)->regs.config1 | CFG1_TRANSEND, REG_CONFIG1);
 ether3_outw((TX_END>>8) - 1, REG_BUFWIN);
 ether3_outw(priv(dev)->rx_head, REG_RECVPTR);
 ether3_outw(priv(dev)->rx_head >> 8, REG_RECVEND);
 ether3_outw(0, REG_TRANSMITPTR);
 ether3_outw(priv(dev)->regs.config2, REG_CONFIG2);
 ether3_outw(priv(dev)->regs.config1 | CFG1_LOCBUFMEM, REG_CONFIG1);

 ether3_setbuffer(dev, buffer_write, 0);
 ether3_writelong(dev, 0);

 priv(dev)->regs.command = CMD_ENINTRX | CMD_ENINTTX;
 ether3_outw(priv(dev)->regs.command | CMD_RXON, REG_COMMAND);
}
