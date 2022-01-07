
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {unsigned int sf_size; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int EIO ;
 int SF_OP_A ;
 unsigned int SF_PAGE_SIZE ;
 unsigned int SF_PROG_PAGE ;
 unsigned int SF_WR_ENABLE ;
 int dev_err (int ,char*,unsigned int) ;
 int flash_wait_op (struct adapter*,int,int) ;
 scalar_t__ memcmp (int const*,int *,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int sf1_write (struct adapter*,unsigned int,int,int,unsigned int) ;
 unsigned int swab32 (unsigned int) ;
 int t4_read_flash (struct adapter*,unsigned int,int ,int *,int) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int t4_write_flash(struct adapter *adapter, unsigned int addr,
     unsigned int n, const u8 *data)
{
 int ret;
 u32 buf[64];
 unsigned int i, c, left, val, offset = addr & 0xff;

 if (addr >= adapter->params.sf_size || offset + n > SF_PAGE_SIZE)
  return -EINVAL;

 val = swab32(addr) | SF_PROG_PAGE;

 if ((ret = sf1_write(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
     (ret = sf1_write(adapter, 4, 1, 1, val)) != 0)
  goto unlock;

 for (left = n; left; left -= c) {
  c = min(left, 4U);
  for (val = 0, i = 0; i < c; ++i)
   val = (val << 8) + *data++;

  ret = sf1_write(adapter, c, c != left, 1, val);
  if (ret)
   goto unlock;
 }
 ret = flash_wait_op(adapter, 8, 1);
 if (ret)
  goto unlock;

 t4_write_reg(adapter, SF_OP_A, 0);


 ret = t4_read_flash(adapter, addr & ~0xff, ARRAY_SIZE(buf), buf, 1);
 if (ret)
  return ret;

 if (memcmp(data - n, (u8 *)buf + offset, n)) {
  dev_err(adapter->pdev_dev,
   "failed to correctly write the flash page at %#x\n",
   addr);
  return -EIO;
 }
 return 0;

unlock:
 t4_write_reg(adapter, SF_OP_A, 0);
 return ret;
}
