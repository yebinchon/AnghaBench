
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct orinoco_fw_header {int compat_offset; int pri_offset; int pdr_offset; int block_offset; int headersize; int hdr_vers; } ;


 size_t le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static const char *validate_fw(const struct orinoco_fw_header *hdr, size_t len)
{
 u16 hdrsize;

 if (len < sizeof(*hdr))
  return "image too small";
 if (memcmp(hdr->hdr_vers, "HFW", 3) != 0)
  return "format not recognised";

 hdrsize = le16_to_cpu(hdr->headersize);
 if (hdrsize > len)
  return "bad headersize";
 if ((hdrsize + le32_to_cpu(hdr->block_offset)) > len)
  return "bad block offset";
 if ((hdrsize + le32_to_cpu(hdr->pdr_offset)) > len)
  return "bad PDR offset";
 if ((hdrsize + le32_to_cpu(hdr->pri_offset)) > len)
  return "bad PRI offset";
 if ((hdrsize + le32_to_cpu(hdr->compat_offset)) > len)
  return "bad compat offset";


 return ((void*)0);
}
