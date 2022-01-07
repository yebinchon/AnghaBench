
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rmode; } ;
struct airo_info {TYPE_1__ config; } ;


 int RXMODE_MASK ;
 int RXMODE_RFMON ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int sniffing_mode(struct airo_info *ai)
{
 return (le16_to_cpu(ai->config.rmode) & le16_to_cpu(RXMODE_MASK)) >=
  le16_to_cpu(RXMODE_RFMON);
}
