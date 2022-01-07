
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
struct brcmf_tlv {int len; scalar_t__ id; } ;


 int TLV_HDR_LEN ;

__attribute__((used)) static const struct brcmf_tlv *
brcmf_parse_tlvs(const void *buf, int buflen, uint key)
{
 const struct brcmf_tlv *elt = buf;
 int totlen = buflen;


 while (totlen >= TLV_HDR_LEN) {
  int len = elt->len;


  if ((elt->id == key) && (totlen >= (len + TLV_HDR_LEN)))
   return elt;

  elt = (struct brcmf_tlv *)((u8 *)elt + (len + TLV_HDR_LEN));
  totlen -= (len + TLV_HDR_LEN);
 }

 return ((void*)0);
}
