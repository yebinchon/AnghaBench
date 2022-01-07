
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct brcmf_msgbuf {int rx_dataoffset; } ;
struct brcmf_commonring {scalar_t__ r_ptr; } ;


 scalar_t__ BRCMF_MSGBUF_UPDATE_RX_PTR_THRS ;
 void* brcmf_commonring_get_read_ptr (struct brcmf_commonring*,scalar_t__*) ;
 int brcmf_commonring_len_item (struct brcmf_commonring*) ;
 int brcmf_commonring_read_complete (struct brcmf_commonring*,scalar_t__) ;
 int brcmf_msgbuf_process_msgtype (struct brcmf_msgbuf*,void*) ;

__attribute__((used)) static void brcmf_msgbuf_process_rx(struct brcmf_msgbuf *msgbuf,
        struct brcmf_commonring *commonring)
{
 void *buf;
 u16 count;
 u16 processed;

again:
 buf = brcmf_commonring_get_read_ptr(commonring, &count);
 if (buf == ((void*)0))
  return;

 processed = 0;
 while (count) {
  brcmf_msgbuf_process_msgtype(msgbuf,
          buf + msgbuf->rx_dataoffset);
  buf += brcmf_commonring_len_item(commonring);
  processed++;
  if (processed == BRCMF_MSGBUF_UPDATE_RX_PTR_THRS) {
   brcmf_commonring_read_complete(commonring, processed);
   processed = 0;
  }
  count--;
 }
 if (processed)
  brcmf_commonring_read_complete(commonring, processed);

 if (commonring->r_ptr == 0)
  goto again;
}
