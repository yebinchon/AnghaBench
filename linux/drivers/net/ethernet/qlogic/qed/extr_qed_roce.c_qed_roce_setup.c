
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 int PROTOCOLID_ROCE ;
 int qed_roce_async_event ;
 int qed_spq_register_async_cb (struct qed_hwfn*,int ,int ) ;

int qed_roce_setup(struct qed_hwfn *p_hwfn)
{
 return qed_spq_register_async_cb(p_hwfn, PROTOCOLID_ROCE,
      qed_roce_async_event);
}
