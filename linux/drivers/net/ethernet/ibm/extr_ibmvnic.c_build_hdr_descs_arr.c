
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ibmvnic_tx_buff {scalar_t__ indir_arr; int * hdr_data; int skb; } ;


 int build_hdr_data (int ,int ,int*,int *) ;
 scalar_t__ create_hdr_descs (int ,int *,int,int*,scalar_t__) ;

__attribute__((used)) static void build_hdr_descs_arr(struct ibmvnic_tx_buff *txbuff,
    int *num_entries, u8 hdr_field)
{
 int hdr_len[3] = {0, 0, 0};
 int tot_len;
 u8 *hdr_data = txbuff->hdr_data;

 tot_len = build_hdr_data(hdr_field, txbuff->skb, hdr_len,
     txbuff->hdr_data);
 *num_entries += create_hdr_descs(hdr_field, hdr_data, tot_len, hdr_len,
    txbuff->indir_arr + 1);
}
