
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* data; int len; int l2_len; int l4_len; int flag; int l3_len; int type; void* first; } ;
struct TYPE_3__ {int* data; int len; int type; void* first; } ;
union sub_crq {TYPE_2__ hdr; TYPE_1__ hdr_ext; } ;
typedef int u8 ;
typedef int u16 ;
typedef int hdr_desc ;


 void* IBMVNIC_CRQ_CMD ;
 int IBMVNIC_HDR_DESC ;
 int IBMVNIC_HDR_EXT_DESC ;
 int cpu_to_be16 (int ) ;
 int memcpy (int*,int*,int) ;
 int memset (union sub_crq*,int ,int) ;

__attribute__((used)) static int create_hdr_descs(u8 hdr_field, u8 *hdr_data, int len, int *hdr_len,
       union sub_crq *scrq_arr)
{
 union sub_crq hdr_desc;
 int tmp_len = len;
 int num_descs = 0;
 u8 *data, *cur;
 int tmp;

 while (tmp_len > 0) {
  cur = hdr_data + len - tmp_len;

  memset(&hdr_desc, 0, sizeof(hdr_desc));
  if (cur != hdr_data) {
   data = hdr_desc.hdr_ext.data;
   tmp = tmp_len > 29 ? 29 : tmp_len;
   hdr_desc.hdr_ext.first = IBMVNIC_CRQ_CMD;
   hdr_desc.hdr_ext.type = IBMVNIC_HDR_EXT_DESC;
   hdr_desc.hdr_ext.len = tmp;
  } else {
   data = hdr_desc.hdr.data;
   tmp = tmp_len > 24 ? 24 : tmp_len;
   hdr_desc.hdr.first = IBMVNIC_CRQ_CMD;
   hdr_desc.hdr.type = IBMVNIC_HDR_DESC;
   hdr_desc.hdr.len = tmp;
   hdr_desc.hdr.l2_len = (u8)hdr_len[0];
   hdr_desc.hdr.l3_len = cpu_to_be16((u16)hdr_len[1]);
   hdr_desc.hdr.l4_len = (u8)hdr_len[2];
   hdr_desc.hdr.flag = hdr_field << 1;
  }
  memcpy(data, cur, tmp);
  tmp_len -= tmp;
  *scrq_arr = hdr_desc;
  scrq_arr++;
  num_descs++;
 }

 return num_descs;
}
