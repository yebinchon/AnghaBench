
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tg3 {int dummy; } ;
struct ptp_system_timestamp {int dummy; } ;


 int TG3_EAV_REF_CLCK_LSB ;
 int TG3_EAV_REF_CLCK_MSB ;
 int ptp_read_system_postts (struct ptp_system_timestamp*) ;
 int ptp_read_system_prets (struct ptp_system_timestamp*) ;
 int tr32 (int ) ;

__attribute__((used)) static u64 tg3_refclk_read(struct tg3 *tp, struct ptp_system_timestamp *sts)
{
 u64 stamp;

 ptp_read_system_prets(sts);
 stamp = tr32(TG3_EAV_REF_CLCK_LSB);
 ptp_read_system_postts(sts);
 stamp |= (u64)tr32(TG3_EAV_REF_CLCK_MSB) << 32;

 return stamp;
}
