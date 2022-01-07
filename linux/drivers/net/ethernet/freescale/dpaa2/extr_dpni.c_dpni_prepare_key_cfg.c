
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct dpni_ext_set_rx_tc_dist {int num_extracts; struct dpni_dist_extract* extracts; } ;
struct dpni_dist_extract {TYPE_5__* masks; int extract_type; int num_of_byte_masks; int offset; int size; int hdr_index; int field; int efh_type; int prot; } ;
struct dpkg_profile_cfg {int num_extracts; TYPE_7__* extracts; } ;
struct TYPE_10__ {int offset; int size; } ;
struct TYPE_9__ {int offset; int size; } ;
struct TYPE_8__ {int type; int hdr_index; int field; int offset; int size; int prot; } ;
struct TYPE_11__ {TYPE_3__ from_parse; TYPE_2__ from_data; TYPE_1__ from_hdr; } ;
struct TYPE_14__ {int type; TYPE_6__* masks; int num_of_byte_masks; TYPE_4__ extract; } ;
struct TYPE_13__ {int offset; int mask; } ;
struct TYPE_12__ {int offset; int mask; } ;





 int DPKG_MAX_NUM_OF_EXTRACTS ;
 int DPKG_NUM_OF_MASKS ;
 int EFH_TYPE ;
 int EINVAL ;
 int EXTRACT_TYPE ;
 int cpu_to_le32 (int ) ;
 int dpni_set_field (int ,int ,int) ;

int dpni_prepare_key_cfg(const struct dpkg_profile_cfg *cfg, u8 *key_cfg_buf)
{
 int i, j;
 struct dpni_ext_set_rx_tc_dist *dpni_ext;
 struct dpni_dist_extract *extr;

 if (cfg->num_extracts > DPKG_MAX_NUM_OF_EXTRACTS)
  return -EINVAL;

 dpni_ext = (struct dpni_ext_set_rx_tc_dist *)key_cfg_buf;
 dpni_ext->num_extracts = cfg->num_extracts;

 for (i = 0; i < cfg->num_extracts; i++) {
  extr = &dpni_ext->extracts[i];

  switch (cfg->extracts[i].type) {
  case 129:
   extr->prot = cfg->extracts[i].extract.from_hdr.prot;
   dpni_set_field(extr->efh_type, EFH_TYPE,
           cfg->extracts[i].extract.from_hdr.type);
   extr->size = cfg->extracts[i].extract.from_hdr.size;
   extr->offset = cfg->extracts[i].extract.from_hdr.offset;
   extr->field = cpu_to_le32(
    cfg->extracts[i].extract.from_hdr.field);
   extr->hdr_index =
    cfg->extracts[i].extract.from_hdr.hdr_index;
   break;
  case 130:
   extr->size = cfg->extracts[i].extract.from_data.size;
   extr->offset =
    cfg->extracts[i].extract.from_data.offset;
   break;
  case 128:
   extr->size = cfg->extracts[i].extract.from_parse.size;
   extr->offset =
    cfg->extracts[i].extract.from_parse.offset;
   break;
  default:
   return -EINVAL;
  }

  extr->num_of_byte_masks = cfg->extracts[i].num_of_byte_masks;
  dpni_set_field(extr->extract_type, EXTRACT_TYPE,
          cfg->extracts[i].type);

  for (j = 0; j < DPKG_NUM_OF_MASKS; j++) {
   extr->masks[j].mask = cfg->extracts[i].masks[j].mask;
   extr->masks[j].offset =
    cfg->extracts[i].masks[j].offset;
  }
 }

 return 0;
}
