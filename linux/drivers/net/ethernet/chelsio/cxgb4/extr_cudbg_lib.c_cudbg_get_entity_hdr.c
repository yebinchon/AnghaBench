
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_hdr {int hdr_len; } ;
struct cudbg_entity_hdr {int dummy; } ;



struct cudbg_entity_hdr *cudbg_get_entity_hdr(void *outbuf, int i)
{
 struct cudbg_hdr *cudbg_hdr = (struct cudbg_hdr *)outbuf;

 return (struct cudbg_entity_hdr *)
        ((char *)outbuf + cudbg_hdr->hdr_len +
  (sizeof(struct cudbg_entity_hdr) * (i - 1)));
}
