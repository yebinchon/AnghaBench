
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtd_info {int dummy; } ;
struct bcm963xx_nvram {scalar_t__ psi_size; } ;


 scalar_t__ BCM963XX_DEFAULT_PSI_SIZE ;
 int BCM963XX_NVRAM_OFFSET ;
 int BCM963XX_NVRAM_V5_SIZE ;
 int bcm963xx_nvram_checksum (struct bcm963xx_nvram*,int *,int *) ;
 int mtd_read (struct mtd_info*,int ,int ,size_t*,void*) ;
 int pr_warn (char*,int ,int ) ;

__attribute__((used)) static int bcm63xx_read_nvram(struct mtd_info *master,
 struct bcm963xx_nvram *nvram)
{
 u32 actual_crc, expected_crc;
 size_t retlen;
 int ret;


 ret = mtd_read(master, BCM963XX_NVRAM_OFFSET, BCM963XX_NVRAM_V5_SIZE,
   &retlen, (void *)nvram);
 if (ret)
  return ret;

 ret = bcm963xx_nvram_checksum(nvram, &expected_crc, &actual_crc);
 if (ret)
  pr_warn("nvram checksum failed, contents may be invalid (expected %08x, got %08x)\n",
   expected_crc, actual_crc);

 if (!nvram->psi_size)
  nvram->psi_size = BCM963XX_DEFAULT_PSI_SIZE;

 return 0;
}
