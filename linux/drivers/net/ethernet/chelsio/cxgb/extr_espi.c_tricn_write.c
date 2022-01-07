
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int name; scalar_t__ regs; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_ESPI_CMD_ADDR ;
 scalar_t__ A_ESPI_GOSTAT ;
 int F_ESPI_CMD_BUSY ;
 int TRICN_CMD_ATTEMPTS ;
 int TRICN_CMD_WRITE ;
 int V_BUNDLE_ADDR (int) ;
 int V_CHANNEL_ADDR (int) ;
 int V_MODULE_ADDR (int) ;
 int V_REGISTER_OFFSET (int) ;
 int V_SPI4_COMMAND (int ) ;
 int V_WRITE_DATA (int ) ;
 int pr_err (char*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int tricn_write(adapter_t *adapter, int bundle_addr, int module_addr,
         int ch_addr, int reg_offset, u32 wr_data)
{
 int busy, attempts = TRICN_CMD_ATTEMPTS;

 writel(V_WRITE_DATA(wr_data) |
        V_REGISTER_OFFSET(reg_offset) |
        V_CHANNEL_ADDR(ch_addr) | V_MODULE_ADDR(module_addr) |
        V_BUNDLE_ADDR(bundle_addr) |
        V_SPI4_COMMAND(TRICN_CMD_WRITE),
        adapter->regs + A_ESPI_CMD_ADDR);
 writel(0, adapter->regs + A_ESPI_GOSTAT);

 do {
  busy = readl(adapter->regs + A_ESPI_GOSTAT) & F_ESPI_CMD_BUSY;
 } while (busy && --attempts);

 if (busy)
  pr_err("%s: TRICN write timed out\n", adapter->name);

 return busy;
}
