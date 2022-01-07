
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ath_txq {int pending_frames; int axq_ampdu_depth; int axq_depth; int axq_qnum; } ;
struct ath_softc {int dummy; } ;


 int ath_txq_lock (struct ath_softc*,struct ath_txq*) ;
 int ath_txq_unlock (struct ath_softc*,struct ath_txq*) ;
 int seq_printf (struct seq_file*,char*,char*,int ) ;

__attribute__((used)) static void print_queue(struct ath_softc *sc, struct ath_txq *txq,
   struct seq_file *file)
{
 ath_txq_lock(sc, txq);

 seq_printf(file, "%s: %d ", "qnum", txq->axq_qnum);
 seq_printf(file, "%s: %2d ", "qdepth", txq->axq_depth);
 seq_printf(file, "%s: %2d ", "ampdu-depth", txq->axq_ampdu_depth);
 seq_printf(file, "%s: %3d\n", "pending", txq->pending_frames);

 ath_txq_unlock(sc, txq);
}
