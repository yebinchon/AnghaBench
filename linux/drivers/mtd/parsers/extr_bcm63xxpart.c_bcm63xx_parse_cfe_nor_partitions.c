
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {char* name; unsigned int offset; unsigned int size; int types; } ;
struct mtd_info {unsigned int size; int erasesize; } ;
struct bcm963xx_nvram {unsigned int psi_size; } ;


 int BCM963XX_CFE_BLOCK_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int SZ_1K ;
 int bcm63xx_cfe_part_types ;
 struct mtd_partition* kzalloc (int,int ) ;
 unsigned int max_t (int ,int ,int ) ;
 int pr_info (char*,int,char*,unsigned int,unsigned int) ;
 unsigned int roundup (unsigned int,unsigned int) ;
 int uint32_t ;

__attribute__((used)) static int bcm63xx_parse_cfe_nor_partitions(struct mtd_info *master,
 const struct mtd_partition **pparts, struct bcm963xx_nvram *nvram)
{
 struct mtd_partition *parts;
 int nrparts = 3, curpart = 0;
 unsigned int cfelen, nvramlen;
 unsigned int cfe_erasesize;
 int i;

 cfe_erasesize = max_t(uint32_t, master->erasesize,
         BCM963XX_CFE_BLOCK_SIZE);

 cfelen = cfe_erasesize;
 nvramlen = nvram->psi_size * SZ_1K;
 nvramlen = roundup(nvramlen, cfe_erasesize);

 parts = kzalloc(sizeof(*parts) * nrparts + 10 * nrparts, GFP_KERNEL);
 if (!parts)
  return -ENOMEM;


 parts[curpart].name = "CFE";
 parts[curpart].offset = 0;
 parts[curpart].size = cfelen;
 curpart++;

 parts[curpart].name = "nvram";
 parts[curpart].offset = master->size - nvramlen;
 parts[curpart].size = nvramlen;
 curpart++;


 parts[curpart].name = "linux";
 parts[curpart].offset = cfelen;
 parts[curpart].size = master->size - cfelen - nvramlen;
 parts[curpart].types = bcm63xx_cfe_part_types;

 for (i = 0; i < nrparts; i++)
  pr_info("Partition %d is %s offset %llx and length %llx\n", i,
   parts[i].name, parts[i].offset, parts[i].size);

 *pparts = parts;

 return nrparts;
}
