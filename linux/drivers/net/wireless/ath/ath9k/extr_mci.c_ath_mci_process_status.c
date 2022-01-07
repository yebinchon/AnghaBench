
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_mci_profile {int num_mgmt; int status; } ;
struct ath_btcoex {struct ath_mci_profile mci; } ;
struct ath_softc {struct ath_btcoex btcoex; } ;
struct ath_mci_profile_status {int conn_handle; scalar_t__ is_critical; scalar_t__ is_link; } ;
struct ath_mci_profile_info {int conn_handle; } ;


 int ATH_MCI_MAX_PROFILE ;
 int __clear_bit (int,int ) ;
 int __set_bit (int,int ) ;
 scalar_t__ ath_mci_find_profile (struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 int ath_mci_set_concur_txprio (struct ath_softc*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static u8 ath_mci_process_status(struct ath_softc *sc,
     struct ath_mci_profile_status *status)
{
 struct ath_btcoex *btcoex = &sc->btcoex;
 struct ath_mci_profile *mci = &btcoex->mci;
 struct ath_mci_profile_info info;
 int i = 0, old_num_mgmt = mci->num_mgmt;


 if (status->is_link)
  return 0;

 info.conn_handle = status->conn_handle;
 if (ath_mci_find_profile(mci, &info))
  return 0;

 if (status->conn_handle >= ATH_MCI_MAX_PROFILE)
  return 0;

 if (status->is_critical)
  __set_bit(status->conn_handle, mci->status);
 else
  __clear_bit(status->conn_handle, mci->status);

 mci->num_mgmt = 0;
 do {
  if (test_bit(i, mci->status))
   mci->num_mgmt++;
 } while (++i < ATH_MCI_MAX_PROFILE);

 ath_mci_set_concur_txprio(sc);
 if (old_num_mgmt != mci->num_mgmt)
  return 1;

 return 0;
}
