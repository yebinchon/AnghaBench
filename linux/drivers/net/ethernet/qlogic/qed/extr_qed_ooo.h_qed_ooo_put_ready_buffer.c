
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ooo_info {int dummy; } ;
struct qed_ooo_buffer {int dummy; } ;
struct qed_hwfn {int dummy; } ;



__attribute__((used)) static inline void qed_ooo_put_ready_buffer(struct qed_hwfn *p_hwfn,
         struct qed_ooo_info *p_ooo_info,
         struct qed_ooo_buffer *p_buffer,
         u8 on_tail) {}
