
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ubiblock_pdu {int usgl; } ;
struct ubiblock {int leb_size; int desc; } ;
struct request {TYPE_1__* q; } ;
struct TYPE_2__ {struct ubiblock* queuedata; } ;


 struct request* blk_mq_rq_from_pdu (struct ubiblock_pdu*) ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int do_div (int,int) ;
 int ubi_read_sg (int ,int,int *,int,int) ;

__attribute__((used)) static int ubiblock_read(struct ubiblock_pdu *pdu)
{
 int ret, leb, offset, bytes_left, to_read;
 u64 pos;
 struct request *req = blk_mq_rq_from_pdu(pdu);
 struct ubiblock *dev = req->q->queuedata;

 to_read = blk_rq_bytes(req);
 pos = blk_rq_pos(req) << 9;


 offset = do_div(pos, dev->leb_size);
 leb = pos;
 bytes_left = to_read;

 while (bytes_left) {




  if (offset + to_read > dev->leb_size)
   to_read = dev->leb_size - offset;

  ret = ubi_read_sg(dev->desc, leb, &pdu->usgl, offset, to_read);
  if (ret < 0)
   return ret;

  bytes_left -= to_read;
  to_read = bytes_left;
  leb += 1;
  offset = 0;
 }
 return 0;
}
