
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_msg_hdr {scalar_t__ length; scalar_t__ dma_ring; scalar_t__ reserved; } ;


 int EBADMSG ;
 scalar_t__ MEI_SLOT_SIZE ;

__attribute__((used)) static inline int hdr_is_valid(u32 msg_hdr)
{
 struct mei_msg_hdr *mei_hdr;

 mei_hdr = (struct mei_msg_hdr *)&msg_hdr;
 if (!msg_hdr || mei_hdr->reserved)
  return -EBADMSG;

 if (mei_hdr->dma_ring && mei_hdr->length != MEI_SLOT_SIZE)
  return -EBADMSG;

 return 0;
}
