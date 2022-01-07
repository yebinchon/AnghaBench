
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sja1105_port_status_mac {int agedrp; int spcerr; int drpnona664err; int policeerr; int bagdrop; int lendrop; int portdrop; int ageprior; int spcprior; int pcfbagdrop; int domerr; int intcyov; int invtyp; int memerr; int memov; int nomaster; int priorerr; int tctimeout; int sizeerr; int typeerr; int n_miierr; int n_alignerr; int n_soferr; int n_runt; } ;


 int sja1105_unpack (int *,int *,int,int,int) ;

__attribute__((used)) static void
sja1105_port_status_mac_unpack(void *buf,
          struct sja1105_port_status_mac *status)
{

 u32 *p = buf;

 sja1105_unpack(p + 0x0, &status->n_runt, 31, 24, 4);
 sja1105_unpack(p + 0x0, &status->n_soferr, 23, 16, 4);
 sja1105_unpack(p + 0x0, &status->n_alignerr, 15, 8, 4);
 sja1105_unpack(p + 0x0, &status->n_miierr, 7, 0, 4);
 sja1105_unpack(p + 0x1, &status->typeerr, 27, 27, 4);
 sja1105_unpack(p + 0x1, &status->sizeerr, 26, 26, 4);
 sja1105_unpack(p + 0x1, &status->tctimeout, 25, 25, 4);
 sja1105_unpack(p + 0x1, &status->priorerr, 24, 24, 4);
 sja1105_unpack(p + 0x1, &status->nomaster, 23, 23, 4);
 sja1105_unpack(p + 0x1, &status->memov, 22, 22, 4);
 sja1105_unpack(p + 0x1, &status->memerr, 21, 21, 4);
 sja1105_unpack(p + 0x1, &status->invtyp, 19, 19, 4);
 sja1105_unpack(p + 0x1, &status->intcyov, 18, 18, 4);
 sja1105_unpack(p + 0x1, &status->domerr, 17, 17, 4);
 sja1105_unpack(p + 0x1, &status->pcfbagdrop, 16, 16, 4);
 sja1105_unpack(p + 0x1, &status->spcprior, 15, 12, 4);
 sja1105_unpack(p + 0x1, &status->ageprior, 11, 8, 4);
 sja1105_unpack(p + 0x1, &status->portdrop, 6, 6, 4);
 sja1105_unpack(p + 0x1, &status->lendrop, 5, 5, 4);
 sja1105_unpack(p + 0x1, &status->bagdrop, 4, 4, 4);
 sja1105_unpack(p + 0x1, &status->policeerr, 3, 3, 4);
 sja1105_unpack(p + 0x1, &status->drpnona664err, 2, 2, 4);
 sja1105_unpack(p + 0x1, &status->spcerr, 1, 1, 4);
 sja1105_unpack(p + 0x1, &status->agedrp, 0, 0, 4);
}
