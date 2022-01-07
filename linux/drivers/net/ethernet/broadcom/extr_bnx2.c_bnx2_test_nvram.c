
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2 {int dummy; } ;
typedef int __be32 ;


 int CRC32_RESIDUAL ;
 int ENODEV ;
 int NVRAM_SIZE ;
 int be32_to_cpu (int ) ;
 int bnx2_nvram_read (struct bnx2*,int,int *,int) ;
 int ether_crc_le (int,int *) ;

__attribute__((used)) static int
bnx2_test_nvram(struct bnx2 *bp)
{
 __be32 buf[NVRAM_SIZE / 4];
 u8 *data = (u8 *) buf;
 int rc = 0;
 u32 magic, csum;

 if ((rc = bnx2_nvram_read(bp, 0, data, 4)) != 0)
  goto test_nvram_done;

        magic = be32_to_cpu(buf[0]);
 if (magic != 0x669955aa) {
  rc = -ENODEV;
  goto test_nvram_done;
 }

 if ((rc = bnx2_nvram_read(bp, 0x100, data, NVRAM_SIZE)) != 0)
  goto test_nvram_done;

 csum = ether_crc_le(0x100, data);
 if (csum != CRC32_RESIDUAL) {
  rc = -ENODEV;
  goto test_nvram_done;
 }

 csum = ether_crc_le(0x100, data + 0x100);
 if (csum != CRC32_RESIDUAL) {
  rc = -ENODEV;
 }

test_nvram_done:
 return rc;
}
