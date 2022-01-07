
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ssbi {int dummy; } ;


 int SSBI_PA_CMD_ADDR_MASK ;
 int SSBI_PA_CMD_RDWRN ;
 int ssbi_pa_transfer (struct ssbi*,int,int *) ;

__attribute__((used)) static int
ssbi_pa_read_bytes(struct ssbi *ssbi, u16 addr, u8 *buf, int len)
{
 u32 cmd;
 int ret = 0;

 cmd = SSBI_PA_CMD_RDWRN | (addr & SSBI_PA_CMD_ADDR_MASK) << 8;

 while (len) {
  ret = ssbi_pa_transfer(ssbi, cmd, buf);
  if (ret)
   goto err;
  buf++;
  len--;
 }

err:
 return ret;
}
