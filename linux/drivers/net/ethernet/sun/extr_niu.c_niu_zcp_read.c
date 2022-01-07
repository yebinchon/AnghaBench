
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct niu {int dev; int port; } ;


 int ZCP_RAM_ACC ;
 int ZCP_RAM_ACC_BUSY ;
 int ZCP_RAM_ACC_RAM_SEL_SHIFT ;
 int ZCP_RAM_ACC_READ ;
 int ZCP_RAM_ACC_ZFCID_SHIFT ;
 int ZCP_RAM_DATA0 ;
 int ZCP_RAM_DATA1 ;
 int ZCP_RAM_DATA2 ;
 int ZCP_RAM_DATA3 ;
 int ZCP_RAM_DATA4 ;
 int ZCP_RAM_SEL_CFIFO (int ) ;
 int netdev_err (int ,char*,unsigned long long) ;
 int niu_wait_bits_clear (struct niu*,int ,int ,int,int) ;
 scalar_t__ nr64 (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_zcp_read(struct niu *np, int index, u64 *data)
{
 int err;

 err = niu_wait_bits_clear(np, ZCP_RAM_ACC, ZCP_RAM_ACC_BUSY,
      1000, 100);
 if (err) {
  netdev_err(np->dev, "ZCP read busy won't clear, ZCP_RAM_ACC[%llx]\n",
      (unsigned long long)nr64(ZCP_RAM_ACC));
  return err;
 }

 nw64(ZCP_RAM_ACC,
      (ZCP_RAM_ACC_READ |
       (0 << ZCP_RAM_ACC_ZFCID_SHIFT) |
       (ZCP_RAM_SEL_CFIFO(np->port) << ZCP_RAM_ACC_RAM_SEL_SHIFT)));

 err = niu_wait_bits_clear(np, ZCP_RAM_ACC, ZCP_RAM_ACC_BUSY,
      1000, 100);
 if (err) {
  netdev_err(np->dev, "ZCP read busy2 won't clear, ZCP_RAM_ACC[%llx]\n",
      (unsigned long long)nr64(ZCP_RAM_ACC));
  return err;
 }

 data[0] = nr64(ZCP_RAM_DATA0);
 data[1] = nr64(ZCP_RAM_DATA1);
 data[2] = nr64(ZCP_RAM_DATA2);
 data[3] = nr64(ZCP_RAM_DATA3);
 data[4] = nr64(ZCP_RAM_DATA4);

 return 0;
}
