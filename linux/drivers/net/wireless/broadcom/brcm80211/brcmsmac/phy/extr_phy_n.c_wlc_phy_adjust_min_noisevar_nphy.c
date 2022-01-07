
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bufcount; int* tone_id; int* min_noise_vars; } ;
struct brcms_phy {int nphy_noisevars_adjusted; TYPE_1__ nphy_saved_noisevars; int radio_chanspec; } ;


 scalar_t__ CHSPEC_IS40 (int ) ;
 int NPHY_NOISEVAR_TBLLEN20 ;
 int NPHY_NOISEVAR_TBLLEN40 ;
 int NPHY_TBL_ID_NOISEVAR ;
 int wlc_phy_table_read_nphy (struct brcms_phy*,int ,int,int,int,int*) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,int ,int,int,int,int*) ;

__attribute__((used)) static void
wlc_phy_adjust_min_noisevar_nphy(struct brcms_phy *pi, int ntones,
     int *tone_id_buf, u32 *noise_var_buf)
{
 int i;
 u32 offset;
 int tone_id;
 int tbllen =
  CHSPEC_IS40(pi->radio_chanspec) ?
  NPHY_NOISEVAR_TBLLEN40 : NPHY_NOISEVAR_TBLLEN20;

 if (pi->nphy_noisevars_adjusted) {
  for (i = 0; i < pi->nphy_saved_noisevars.bufcount; i++) {
   tone_id = pi->nphy_saved_noisevars.tone_id[i];
   offset = (tone_id >= 0) ?
     ((tone_id *
       2) + 1) : (tbllen + (tone_id * 2) + 1);
   wlc_phy_table_write_nphy(
    pi, NPHY_TBL_ID_NOISEVAR, 1,
    offset, 32,
    &pi->nphy_saved_noisevars.min_noise_vars[i]);
  }

  pi->nphy_saved_noisevars.bufcount = 0;
  pi->nphy_noisevars_adjusted = 0;
 }

 if ((noise_var_buf != ((void*)0)) && (tone_id_buf != ((void*)0))) {
  pi->nphy_saved_noisevars.bufcount = 0;

  for (i = 0; i < ntones; i++) {
   tone_id = tone_id_buf[i];
   offset = (tone_id >= 0) ?
     ((tone_id * 2) + 1) :
     (tbllen + (tone_id * 2) + 1);
   pi->nphy_saved_noisevars.tone_id[i] = tone_id;
   wlc_phy_table_read_nphy(pi, NPHY_TBL_ID_NOISEVAR, 1,
      offset, 32,
      &pi->nphy_saved_noisevars.
      min_noise_vars[i]);
   wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_NOISEVAR, 1,
       offset, 32, &noise_var_buf[i]);
   pi->nphy_saved_noisevars.bufcount++;
  }

  pi->nphy_noisevars_adjusted = 1;
 }
}
