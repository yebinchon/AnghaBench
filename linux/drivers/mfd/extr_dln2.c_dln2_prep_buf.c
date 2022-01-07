
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dln2_header {void* handle; void* echo; void* size; void* id; } ;
typedef int gfp_t ;


 void* cpu_to_le16 (int) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static void *dln2_prep_buf(u16 handle, u16 cmd, u16 echo, const void *obuf,
      int *obuf_len, gfp_t gfp)
{
 int len;
 void *buf;
 struct dln2_header *hdr;

 len = *obuf_len + sizeof(*hdr);
 buf = kmalloc(len, gfp);
 if (!buf)
  return ((void*)0);

 hdr = (struct dln2_header *)buf;
 hdr->id = cpu_to_le16(cmd);
 hdr->size = cpu_to_le16(len);
 hdr->echo = cpu_to_le16(echo);
 hdr->handle = cpu_to_le16(handle);

 memcpy(buf + sizeof(*hdr), obuf, *obuf_len);

 *obuf_len = len;

 return buf;
}
