
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ rbc_ram_start; } ;
struct TYPE_9__ {TYPE_3__ fifo; } ;
struct TYPE_10__ {TYPE_4__ fp; } ;
struct TYPE_7__ {TYPE_1__* m; } ;
struct s_smc {TYPE_5__ hw; TYPE_2__ mib; } ;
struct TYPE_6__ {int fddiMACUpstreamNbr; } ;


 int CHECK_NPP () ;
 scalar_t__ DBEACON_FRAME_OFF ;
 scalar_t__ DBEACON_INFO ;
 int ETH_ALEN ;
 int FM_A (int ) ;
 int FM_CMDREG2 ;
 scalar_t__ FM_ISTTB ;
 int FM_SABC ;
 size_t MAC0 ;
 int MARW (scalar_t__) ;
 int SK_LOC_DECL (int ,scalar_t__) ;
 int __le32 ;
 scalar_t__* a ;
 int le32_to_cpu (scalar_t__) ;
 int memcpy (char*,char*,int ) ;
 int outpw (int ,scalar_t__) ;
 int write_mdr (struct s_smc*,int ) ;

__attribute__((used)) static void directed_beacon(struct s_smc *smc)
{
 SK_LOC_DECL(__le32,a[2]) ;






 * (char *) a = (char) ((long)DBEACON_INFO<<24L) ;
 a[1] = 0 ;
 memcpy((char *)a+1, (char *) &smc->mib.m[MAC0].fddiMACUpstreamNbr, ETH_ALEN);

 CHECK_NPP() ;

 MARW(smc->hw.fp.fifo.rbc_ram_start+DBEACON_FRAME_OFF+4) ;
 write_mdr(smc,le32_to_cpu(a[0])) ;
 outpw(FM_A(FM_CMDREG2),FM_ISTTB) ;
 write_mdr(smc,le32_to_cpu(a[1])) ;

 outpw(FM_A(FM_SABC),smc->hw.fp.fifo.rbc_ram_start + DBEACON_FRAME_OFF) ;
}
