
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ssbi {scalar_t__ controller_type; } ;


 scalar_t__ MSM_SBI_CTRL_SSBI2 ;
 int SET_SSBI_MODE2_REG_ADDR_15_8 (int,int) ;
 int SSBI2_CMD ;
 int SSBI2_MODE2 ;
 int SSBI_STATUS_MCHN_BUSY ;
 int SSBI_STATUS_READY ;
 int ssbi_readl (struct ssbi*,int ) ;
 int ssbi_wait_mask (struct ssbi*,int ,int ) ;
 int ssbi_writel (struct ssbi*,int,int ) ;

__attribute__((used)) static int
ssbi_write_bytes(struct ssbi *ssbi, u16 addr, const u8 *buf, int len)
{
 int ret = 0;

 if (ssbi->controller_type == MSM_SBI_CTRL_SSBI2) {
  u32 mode2 = ssbi_readl(ssbi, SSBI2_MODE2);
  mode2 = SET_SSBI_MODE2_REG_ADDR_15_8(mode2, addr);
  ssbi_writel(ssbi, mode2, SSBI2_MODE2);
 }

 while (len) {
  ret = ssbi_wait_mask(ssbi, SSBI_STATUS_READY, 0);
  if (ret)
   goto err;

  ssbi_writel(ssbi, ((addr & 0xff) << 16) | *buf, SSBI2_CMD);
  ret = ssbi_wait_mask(ssbi, 0, SSBI_STATUS_MCHN_BUSY);
  if (ret)
   goto err;
  buf++;
  len--;
 }

err:
 return ret;
}
