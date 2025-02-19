
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int EINVAL ;
 scalar_t__ I2C_WA_PWR_ITER ;
 scalar_t__ I2C_WA_RETRY_CNT ;
 int NETIF_MSG_LINK ;
 scalar_t__ SFP_EEPROM_PAGE_SIZE ;
 int bnx2x_bsc_read (struct link_params*,struct bnx2x*,scalar_t__,int,int ,scalar_t__,int *) ;
 int bnx2x_warpcore_power_module (struct link_params*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_warpcore_read_sfp_module_eeprom(struct bnx2x_phy *phy,
       struct link_params *params,
       u8 dev_addr,
       u16 addr, u8 byte_cnt,
       u8 *o_buf, u8 is_init)
{
 int rc = 0;
 u8 i, j = 0, cnt = 0;
 u32 data_array[4];
 u16 addr32;
 struct bnx2x *bp = params->bp;

 if (byte_cnt > SFP_EEPROM_PAGE_SIZE) {
  DP(NETIF_MSG_LINK,
     "Reading from eeprom is limited to 16 bytes\n");
  return -EINVAL;
 }


 addr32 = addr & (~0x3);
 do {
  if ((!is_init) && (cnt == I2C_WA_PWR_ITER)) {
   bnx2x_warpcore_power_module(params, 0);

   usleep_range(1000, 2000);
   bnx2x_warpcore_power_module(params, 1);
  }
  rc = bnx2x_bsc_read(params, bp, dev_addr, addr32, 0, byte_cnt,
        data_array);
 } while ((rc != 0) && (++cnt < I2C_WA_RETRY_CNT));

 if (rc == 0) {
  for (i = (addr - addr32); i < byte_cnt + (addr - addr32); i++) {
   o_buf[j] = *((u8 *)data_array + i);
   j++;
  }
 }

 return rc;
}
