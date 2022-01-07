
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subcode; int opcode; } ;
union octeon_rh {TYPE_1__ r; } ;
typedef scalar_t__ u16 ;


 int OPCODE_NIC ;
 int OPCODE_NIC_NW_DATA ;
 scalar_t__ OPCODE_SUBCODE (int ,int ) ;

__attribute__((used)) static inline int opcode_slow_path(union octeon_rh *rh)
{
 u16 subcode1, subcode2;

 subcode1 = OPCODE_SUBCODE((rh)->r.opcode, (rh)->r.subcode);
 subcode2 = OPCODE_SUBCODE(OPCODE_NIC, OPCODE_NIC_NW_DATA);

 return (subcode2 != subcode1);
}
