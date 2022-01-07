
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int oobsize; } ;
struct bch_geometry {int metadata_size; int gf_len; int ecc_chunk_count; } ;
struct gpmi_nand_data {int nand; struct bch_geometry bch_geometry; } ;


 struct mtd_info* nand_to_mtd (int *) ;
 int round_down (int,int) ;

__attribute__((used)) static inline int get_ecc_strength(struct gpmi_nand_data *this)
{
 struct bch_geometry *geo = &this->bch_geometry;
 struct mtd_info *mtd = nand_to_mtd(&this->nand);
 int ecc_strength;

 ecc_strength = ((mtd->oobsize - geo->metadata_size) * 8)
   / (geo->gf_len * geo->ecc_chunk_count);


 return round_down(ecc_strength, 2);
}
