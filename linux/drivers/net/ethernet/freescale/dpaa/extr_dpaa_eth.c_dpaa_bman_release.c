
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_bp {int (* free_buf_cb ) (struct dpaa_bp const*,struct bm_buffer*) ;int pool; } ;
struct bm_buffer {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int bman_release (int ,struct bm_buffer*,int) ;
 int stub1 (struct dpaa_bp const*,struct bm_buffer*) ;

__attribute__((used)) static int dpaa_bman_release(const struct dpaa_bp *dpaa_bp,
        struct bm_buffer *bmb, int cnt)
{
 int err;

 err = bman_release(dpaa_bp->pool, bmb, cnt);

 if (WARN_ON(err) && dpaa_bp->free_buf_cb)
  while (cnt-- > 0)
   dpaa_bp->free_buf_cb(dpaa_bp, &bmb[cnt]);

 return cnt;
}
