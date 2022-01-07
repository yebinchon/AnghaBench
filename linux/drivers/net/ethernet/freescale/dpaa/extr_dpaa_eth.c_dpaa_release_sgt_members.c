
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_sg_entry {scalar_t__ bpid; } ;
struct dpaa_bp {int dummy; } ;
struct bm_buffer {int dummy; } ;
typedef int bmb ;


 int ARRAY_SIZE (struct bm_buffer*) ;
 int DPAA_BUFF_RELEASE_MAX ;
 int WARN_ON (int ) ;
 int bm_buffer_set64 (struct bm_buffer*,int ) ;
 int dpaa_bman_release (struct dpaa_bp*,struct bm_buffer*,int) ;
 struct dpaa_bp* dpaa_bpid2pool (scalar_t__) ;
 int memset (struct bm_buffer*,int ,int) ;
 int qm_sg_entry_get64 (struct qm_sg_entry*) ;
 int qm_sg_entry_is_ext (struct qm_sg_entry*) ;
 int qm_sg_entry_is_final (struct qm_sg_entry*) ;

__attribute__((used)) static void dpaa_release_sgt_members(struct qm_sg_entry *sgt)
{
 struct bm_buffer bmb[DPAA_BUFF_RELEASE_MAX];
 struct dpaa_bp *dpaa_bp;
 int i = 0, j;

 memset(bmb, 0, sizeof(bmb));

 do {
  dpaa_bp = dpaa_bpid2pool(sgt[i].bpid);
  if (!dpaa_bp)
   return;

  j = 0;
  do {
   WARN_ON(qm_sg_entry_is_ext(&sgt[i]));

   bm_buffer_set64(&bmb[j], qm_sg_entry_get64(&sgt[i]));

   j++; i++;
  } while (j < ARRAY_SIZE(bmb) &&
    !qm_sg_entry_is_final(&sgt[i - 1]) &&
    sgt[i - 1].bpid == sgt[i].bpid);

  dpaa_bman_release(dpaa_bp, bmb, j);
 } while (!qm_sg_entry_is_final(&sgt[i - 1]));
}
