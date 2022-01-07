
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcmf_wsec_pmk_le {int * key; void* flags; void* key_len; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef int pmk ;


 int BRCMF_C_SET_WSEC_PMK ;
 int BRCMF_WSEC_PASSPHRASE ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_fil_cmd_data_set (struct brcmf_if*,int ,struct brcmf_wsec_pmk_le*,int) ;
 void* cpu_to_le16 (int) ;
 int snprintf (int *,int,char*,int const) ;

__attribute__((used)) static int brcmf_set_pmk(struct brcmf_if *ifp, const u8 *pmk_data, u16 pmk_len)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_wsec_pmk_le pmk;
 int i, err;


 pmk.key_len = cpu_to_le16(pmk_len << 1);
 pmk.flags = cpu_to_le16(BRCMF_WSEC_PASSPHRASE);
 for (i = 0; i < pmk_len; i++)
  snprintf(&pmk.key[2 * i], 3, "%02x", pmk_data[i]);


 err = brcmf_fil_cmd_data_set(ifp, BRCMF_C_SET_WSEC_PMK,
         &pmk, sizeof(pmk));
 if (err < 0)
  bphy_err(drvr, "failed to change PSK in firmware (len=%u)\n",
    pmk_len);

 return err;
}
