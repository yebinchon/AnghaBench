
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int pegasus_t ;
typedef int __le16 ;


 int EthCtrl0 ;
 int cpu_to_le16 (int ) ;
 int set_registers (int *,int ,int,int *) ;

__attribute__((used)) static inline void disable_net_traffic(pegasus_t *pegasus)
{
 __le16 tmp = cpu_to_le16(0);

 set_registers(pegasus, EthCtrl0, sizeof(tmp), &tmp);
}
