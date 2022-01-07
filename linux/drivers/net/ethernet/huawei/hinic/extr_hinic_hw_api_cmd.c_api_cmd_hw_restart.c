
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int chain_type; struct hinic_hwif* hwif; } ;


 int API_CMD_TIMEOUT ;
 int ETIMEDOUT ;
 int HINIC_API_CMD_CHAIN_REQ_CLEAR (int ,int ) ;
 int HINIC_API_CMD_CHAIN_REQ_GET (int ,int ) ;
 int HINIC_API_CMD_CHAIN_REQ_SET (int,int ) ;
 int HINIC_CSR_API_CMD_CHAIN_REQ_ADDR (int ) ;
 int RESTART ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int api_cmd_hw_restart(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 int err = -ETIMEDOUT;
 unsigned long end;
 u32 reg_addr, val;


 reg_addr = HINIC_CSR_API_CMD_CHAIN_REQ_ADDR(chain->chain_type);
 val = hinic_hwif_read_reg(hwif, reg_addr);

 val = HINIC_API_CMD_CHAIN_REQ_CLEAR(val, RESTART);
 val |= HINIC_API_CMD_CHAIN_REQ_SET(1, RESTART);

 hinic_hwif_write_reg(hwif, reg_addr, val);

 end = jiffies + msecs_to_jiffies(API_CMD_TIMEOUT);
 do {
  val = hinic_hwif_read_reg(hwif, reg_addr);

  if (!HINIC_API_CMD_CHAIN_REQ_GET(val, RESTART)) {
   err = 0;
   break;
  }

  msleep(20);
 } while (time_before(jiffies, end));

 return err;
}
