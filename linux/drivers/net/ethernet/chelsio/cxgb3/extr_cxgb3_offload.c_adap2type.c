
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct adapter {TYPE_1__ params; } ;


 int T3A ;
 int T3B ;
 int T3C ;





__attribute__((used)) static inline int adap2type(struct adapter *adapter)
{
 int type = 0;

 switch (adapter->params.rev) {
 case 131:
  type = T3A;
  break;
 case 130:
 case 129:
  type = T3B;
  break;
 case 128:
  type = T3C;
  break;
 }
 return type;
}
