
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ooo_info {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct ooo_opaque {int dummy; } ;



__attribute__((used)) static inline void qed_ooo_save_history_entry(struct qed_hwfn *p_hwfn,
           struct qed_ooo_info *p_ooo_info,
           struct ooo_opaque *p_cqe) {}
