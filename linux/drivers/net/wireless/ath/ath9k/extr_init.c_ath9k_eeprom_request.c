
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dev; struct ath_hw* sc_ah; } ;
struct ath_hw {int eeprom_blob; } ;
struct ath9k_eeprom_ctx {int complete; struct ath_hw* ah; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int ath9k_eeprom_request_cb ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_err (int ,char*,...) ;
 int init_completion (int *) ;
 int request_firmware_nowait (int ,int,char const*,int ,int ,struct ath9k_eeprom_ctx*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ath9k_eeprom_request(struct ath_softc *sc, const char *name)
{
 struct ath9k_eeprom_ctx ec;
 struct ath_hw *ah = sc->sc_ah;
 int err;


 init_completion(&ec.complete);
 ec.ah = sc->sc_ah;

 err = request_firmware_nowait(THIS_MODULE, 1, name, sc->dev, GFP_KERNEL,
          &ec, ath9k_eeprom_request_cb);
 if (err < 0) {
  ath_err(ath9k_hw_common(ah),
   "EEPROM request failed\n");
  return err;
 }

 wait_for_completion(&ec.complete);

 if (!ah->eeprom_blob) {
  ath_err(ath9k_hw_common(ah),
   "Unable to load EEPROM file %s\n", name);
  return -EINVAL;
 }

 return 0;
}
