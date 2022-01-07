
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 size_t FM10K_TLV_DWORD_LEN (int ) ;

__attribute__((used)) static u32 *fm10k_tlv_attr_nest_start(u32 *msg, u16 attr_id)
{
 u32 *attr;


 if (!msg)
  return ((void*)0);

 attr = &msg[FM10K_TLV_DWORD_LEN(*msg)];

 attr[0] = attr_id;


 return attr;
}
