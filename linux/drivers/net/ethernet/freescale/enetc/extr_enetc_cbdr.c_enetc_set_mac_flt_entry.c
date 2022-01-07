
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct enetc_si {int dummy; } ;
struct enetc_cbd {int cls; void** addr; void** opt; int index; int status_flags; } ;
typedef int cbd ;


 int BIT (int) ;
 int ENETC_CBD_FLAGS_SF ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int enetc_send_cmd (struct enetc_si*,struct enetc_cbd*) ;
 int memset (struct enetc_cbd*,int ,int) ;

int enetc_set_mac_flt_entry(struct enetc_si *si, int index,
       char *mac_addr, int si_map)
{
 struct enetc_cbd cbd;
 u32 upper;
 u16 lower;

 memset(&cbd, 0, sizeof(cbd));


 cbd.cls = 1;
 cbd.status_flags = ENETC_CBD_FLAGS_SF;
 cbd.index = cpu_to_le16(index);
 cbd.opt[3] = cpu_to_le32(si_map);

 cbd.opt[0] = cpu_to_le32(BIT(31));

 upper = *(const u32 *)mac_addr;
 lower = *(const u16 *)(mac_addr + 4);
 cbd.addr[0] = cpu_to_le32(upper);
 cbd.addr[1] = cpu_to_le32(lower);

 return enetc_send_cmd(si, &cbd);
}
