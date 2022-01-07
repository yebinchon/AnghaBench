
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_si {int dummy; } ;
struct enetc_cbd {int cls; int index; int status_flags; } ;
typedef int cbd ;


 int ENETC_CBD_FLAGS_SF ;
 int cpu_to_le16 (int) ;
 int enetc_send_cmd (struct enetc_si*,struct enetc_cbd*) ;
 int memset (struct enetc_cbd*,int ,int) ;

int enetc_clear_mac_flt_entry(struct enetc_si *si, int index)
{
 struct enetc_cbd cbd;

 memset(&cbd, 0, sizeof(cbd));

 cbd.cls = 1;
 cbd.status_flags = ENETC_CBD_FLAGS_SF;
 cbd.index = cpu_to_le16(index);

 return enetc_send_cmd(si, &cbd);
}
