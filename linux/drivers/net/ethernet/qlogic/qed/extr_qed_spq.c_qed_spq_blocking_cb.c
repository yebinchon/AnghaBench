
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union event_ring_data {int dummy; } event_ring_data ;
typedef int u8 ;
struct qed_spq_comp_done {int done; int fw_return_code; } ;
struct qed_hwfn {int dummy; } ;


 int smp_store_release (int *,int) ;

__attribute__((used)) static void qed_spq_blocking_cb(struct qed_hwfn *p_hwfn,
    void *cookie,
    union event_ring_data *data, u8 fw_return_code)
{
 struct qed_spq_comp_done *comp_done;

 comp_done = (struct qed_spq_comp_done *)cookie;

 comp_done->fw_return_code = fw_return_code;


 smp_store_release(&comp_done->done, 0x1);
}
