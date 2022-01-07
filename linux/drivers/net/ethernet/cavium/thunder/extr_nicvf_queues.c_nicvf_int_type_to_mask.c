
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



 unsigned long long NICVF_INTR_CQ_SHIFT ;

 unsigned long long NICVF_INTR_MBOX_SHIFT ;

 unsigned long long NICVF_INTR_PKT_DROP_SHIFT ;

 unsigned long long NICVF_INTR_QS_ERR_SHIFT ;

 unsigned long long NICVF_INTR_RBDR_SHIFT ;

 unsigned long long NICVF_INTR_SQ_SHIFT ;

 unsigned long long NICVF_INTR_TCP_TIMER_SHIFT ;

__attribute__((used)) static u64 nicvf_int_type_to_mask(int int_type, int q_idx)
{
 u64 reg_val;

 switch (int_type) {
 case 134:
  reg_val = ((1ULL << q_idx) << NICVF_INTR_CQ_SHIFT);
  break;
 case 129:
  reg_val = ((1ULL << q_idx) << NICVF_INTR_SQ_SHIFT);
  break;
 case 130:
  reg_val = ((1ULL << q_idx) << NICVF_INTR_RBDR_SHIFT);
  break;
 case 132:
  reg_val = (1ULL << NICVF_INTR_PKT_DROP_SHIFT);
  break;
 case 128:
  reg_val = (1ULL << NICVF_INTR_TCP_TIMER_SHIFT);
  break;
 case 133:
  reg_val = (1ULL << NICVF_INTR_MBOX_SHIFT);
  break;
 case 131:
  reg_val = (1ULL << NICVF_INTR_QS_ERR_SHIFT);
  break;
 default:
  reg_val = 0;
 }

 return reg_val;
}
