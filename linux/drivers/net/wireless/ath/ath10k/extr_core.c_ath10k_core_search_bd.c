
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k_fw_ie {int * data; int len; int id; } ;
struct ath10k {int dummy; } ;


 size_t ALIGN (size_t,int) ;


 int EINVAL ;
 int ENOENT ;
 int ath10k_core_parse_bd_ie_board (struct ath10k*,int const*,size_t,char const*,int const) ;
 int ath10k_err (struct ath10k*,char*,int,size_t,size_t) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static int ath10k_core_search_bd(struct ath10k *ar,
     const char *boardname,
     const u8 *data,
     size_t len)
{
 size_t ie_len;
 struct ath10k_fw_ie *hdr;
 int ret = -ENOENT, ie_id;

 while (len > sizeof(struct ath10k_fw_ie)) {
  hdr = (struct ath10k_fw_ie *)data;
  ie_id = le32_to_cpu(hdr->id);
  ie_len = le32_to_cpu(hdr->len);

  len -= sizeof(*hdr);
  data = hdr->data;

  if (len < ALIGN(ie_len, 4)) {
   ath10k_err(ar, "invalid length for board ie_id %d ie_len %zu len %zu\n",
       ie_id, ie_len, len);
   return -EINVAL;
  }

  switch (ie_id) {
  case 129:
   ret = ath10k_core_parse_bd_ie_board(ar, data, ie_len,
           boardname,
           129);
   if (ret == -ENOENT)

    break;


   goto out;
  case 128:
   ret = ath10k_core_parse_bd_ie_board(ar, data, ie_len,
           boardname,
           128);
   if (ret == -ENOENT)

    break;


   goto out;
  }


  ie_len = ALIGN(ie_len, 4);

  len -= ie_len;
  data += ie_len;
 }

out:

 return ret;
}
