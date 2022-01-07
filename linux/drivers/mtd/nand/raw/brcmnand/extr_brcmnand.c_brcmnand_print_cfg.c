
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_host {int ctrl; } ;
struct brcmnand_cfg {int block_size; int page_size; int ecc_level; scalar_t__ sector_size_1k; int device_width; int spare_area_size; scalar_t__ device_size; } ;


 scalar_t__ is_hamming_ecc (int ,struct brcmnand_cfg*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void brcmnand_print_cfg(struct brcmnand_host *host,
          char *buf, struct brcmnand_cfg *cfg)
{
 buf += sprintf(buf,
  "%lluMiB total, %uKiB blocks, %u%s pages, %uB OOB, %u-bit",
  (unsigned long long)cfg->device_size >> 20,
  cfg->block_size >> 10,
  cfg->page_size >= 1024 ? cfg->page_size >> 10 : cfg->page_size,
  cfg->page_size >= 1024 ? "KiB" : "B",
  cfg->spare_area_size, cfg->device_width);


 if (is_hamming_ecc(host->ctrl, cfg))
  sprintf(buf, ", Hamming ECC");
 else if (cfg->sector_size_1k)
  sprintf(buf, ", BCH-%u (1KiB sector)", cfg->ecc_level << 1);
 else
  sprintf(buf, ", BCH-%u", cfg->ecc_level);
}
