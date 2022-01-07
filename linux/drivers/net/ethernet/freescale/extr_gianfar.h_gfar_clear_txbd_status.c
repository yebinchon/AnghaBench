
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct txbd8 {int lstatus; } ;


 int BD_LFLAG (int ) ;
 int TXBD_WRAP ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void gfar_clear_txbd_status(struct txbd8 *bdp)
{
 u32 lstatus = be32_to_cpu(bdp->lstatus);

 lstatus &= BD_LFLAG(TXBD_WRAP);
 bdp->lstatus = cpu_to_be32(lstatus);
}
