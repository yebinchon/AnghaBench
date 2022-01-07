
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct i40e_q_vector {TYPE_5__* vsi; } ;
struct TYPE_10__ {TYPE_4__* back; } ;
struct TYPE_6__ {int link_speed; } ;
struct TYPE_7__ {TYPE_1__ link_info; } ;
struct TYPE_8__ {TYPE_2__ phy; } ;
struct TYPE_9__ {TYPE_3__ hw; } ;


 int I40E_ITR_ADAPTIVE_MIN_INC ;







__attribute__((used)) static inline unsigned int i40e_itr_divisor(struct i40e_q_vector *q_vector)
{
 unsigned int divisor;

 switch (q_vector->vsi->back->hw.phy.link_info.link_speed) {
 case 128:
  divisor = I40E_ITR_ADAPTIVE_MIN_INC * 1024;
  break;
 case 129:
 case 130:
  divisor = I40E_ITR_ADAPTIVE_MIN_INC * 512;
  break;
 default:
 case 132:
  divisor = I40E_ITR_ADAPTIVE_MIN_INC * 256;
  break;
 case 131:
 case 133:
  divisor = I40E_ITR_ADAPTIVE_MIN_INC * 32;
  break;
 }

 return divisor;
}
