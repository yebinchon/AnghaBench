
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int enabled; } ;
struct ath_hw {TYPE_1__ dynack; } ;


 int ath9k_hw_setrxfilter (struct ath_hw*,int ) ;
 int ath_calcrxfilter (struct ath_softc*) ;
 int ath_dynack_reset (struct ath_hw*) ;

__attribute__((used)) static void ath9k_enable_dynack(struct ath_softc *sc)
{
}
