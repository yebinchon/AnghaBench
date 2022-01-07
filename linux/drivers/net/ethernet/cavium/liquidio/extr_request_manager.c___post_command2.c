
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct octeon_instr_queue {int max_count; int host_write_index; int instr_pending; int fill_cnt; } ;
struct iq_post_status {int index; int status; } ;
typedef scalar_t__ s32 ;


 int IQ_SEND_FAILED ;
 int IQ_SEND_OK ;
 int IQ_SEND_STOP ;
 int __copy_cmd_into_iq (struct octeon_instr_queue*,int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int incr_index (int,int,int) ;
 int wmb () ;

__attribute__((used)) static inline struct iq_post_status
__post_command2(struct octeon_instr_queue *iq, u8 *cmd)
{
 struct iq_post_status st;

 st.status = IQ_SEND_OK;




 if (atomic_read(&iq->instr_pending) >= (s32)(iq->max_count - 1)) {
  st.status = IQ_SEND_FAILED;
  st.index = -1;
  return st;
 }

 if (atomic_read(&iq->instr_pending) >= (s32)(iq->max_count - 2))
  st.status = IQ_SEND_STOP;

 __copy_cmd_into_iq(iq, cmd);


 st.index = iq->host_write_index;
 iq->host_write_index = incr_index(iq->host_write_index, 1,
       iq->max_count);
 iq->fill_cnt++;




 wmb();

 atomic_inc(&iq->instr_pending);

 return st;
}
