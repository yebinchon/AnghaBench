
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int private; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_txq {int dummy; } ;
struct TYPE_4__ {struct ath_txq* cabq; } ;
struct TYPE_3__ {struct ath_txq** txq_map; } ;
struct ath_softc {TYPE_2__ beacon; TYPE_1__ tx; } ;


 int IEEE80211_NUM_ACS ;
 struct ieee80211_hw* dev_get_drvdata (int ) ;
 int print_queue (struct ath_softc*,struct ath_txq*,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,char const*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int read_file_queues(struct seq_file *file, void *data)
{
 struct ieee80211_hw *hw = dev_get_drvdata(file->private);
 struct ath_softc *sc = hw->priv;
 struct ath_txq *txq;
 int i;
 static const char *qname[4] = {
  "VO", "VI", "BE", "BK"
 };

 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  txq = sc->tx.txq_map[i];
  seq_printf(file, "(%s):  ", qname[i]);
  print_queue(sc, txq, file);
 }

 seq_puts(file, "(CAB): ");
 print_queue(sc, sc->beacon.cabq, file);

 return 0;
}
