
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_msg_hdr {int dummy; } ;


 int DIV_ROUND_UP (int,int ) ;
 int MEI_SLOT_SIZE ;

__attribute__((used)) static inline u32 mei_hbm2slots(size_t length)
{
 return DIV_ROUND_UP(sizeof(struct mei_msg_hdr) + length, MEI_SLOT_SIZE);
}
