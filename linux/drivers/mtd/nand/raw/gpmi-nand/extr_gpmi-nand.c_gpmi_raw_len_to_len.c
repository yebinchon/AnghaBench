
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ecc_chunk_size; } ;
struct gpmi_nand_data {TYPE_1__ bch_geometry; scalar_t__ bch; } ;


 int ALIGN_DOWN (int,int ) ;

__attribute__((used)) static int gpmi_raw_len_to_len(struct gpmi_nand_data *this, int raw_len)
{




 if (this->bch)
  return ALIGN_DOWN(raw_len, this->bch_geometry.ecc_chunk_size);
 else
  return raw_len;
}
