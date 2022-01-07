
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
 int SSBI2_RD ;
 int SSBI_CMD_RDWRN ;
 int SSBI_STATUS_RD_READY ;
 int SSBI_STATUS_READY ;
 int ssbi_readl (struct ssbi*,int ) ;
 int ssbi_wait_mask (struct ssbi*,int ,int ) ;
 int ssbi_writel (struct ssbi*,int,int ) ;

__attribute__((used)) static int
ssbi_read_bytes(struct ssbi *ssbi, u16 addr, u8 *buf, int len)
{
 u32 cmd = SSBI_CMD_RDWRN | ((addr & 0xff) << 16);
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

  ssbi_writel(ssbi, cmd, SSBI2_CMD);
  ret = ssbi_wait_mask(ssbi, SSBI_STATUS_RD_READY, 0);
  if (ret)
   goto err;
  *buf++ = ssbi_readl(ssbi, SSBI2_RD) & 0xff;
  len--;
 }

err:
 return ret;
}
