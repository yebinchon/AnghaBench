
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_q_vector {TYPE_1__* adapter; } ;
struct TYPE_2__ {int link_speed; } ;


 int IAVF_ITR_ADAPTIVE_MIN_INC ;







__attribute__((used)) static inline unsigned int iavf_itr_divisor(struct iavf_q_vector *q_vector)
{
 unsigned int divisor;

 switch (q_vector->adapter->link_speed) {
 case 128:
  divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 1024;
  break;
 case 129:
 case 130:
  divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 512;
  break;
 default:
 case 132:
  divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 256;
  break;
 case 131:
 case 133:
  divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 32;
  break;
 }

 return divisor;
}
