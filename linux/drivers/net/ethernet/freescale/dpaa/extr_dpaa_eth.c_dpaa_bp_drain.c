
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpaa_bp {int (* free_buf_cb ) (struct dpaa_bp*,struct bm_buffer*) ;int pool; } ;
struct bm_buffer {int dummy; } ;


 int bman_acquire (int ,struct bm_buffer*,int) ;
 int stub1 (struct dpaa_bp*,struct bm_buffer*) ;

__attribute__((used)) static void dpaa_bp_drain(struct dpaa_bp *bp)
{
 u8 num = 8;
 int ret;

 do {
  struct bm_buffer bmb[8];
  int i;

  ret = bman_acquire(bp->pool, bmb, num);
  if (ret < 0) {
   if (num == 8) {



    num = 1;
    ret = 1;
    continue;
   } else {

    break;
   }
  }

  if (bp->free_buf_cb)
   for (i = 0; i < num; i++)
    bp->free_buf_cb(bp, &bmb[i]);
 } while (ret > 0);
}
