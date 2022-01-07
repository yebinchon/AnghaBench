; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_clean_up_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_clean_up_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htt }
%struct.ath10k_htt = type { i32 }
%struct.htt_tx_done = type { i32, i32, i32 }

@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"force cleanup msdu_id %hu\0A\00", align 1
@HTT_TX_COMPL_STATE_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ath10k_htt_tx_clean_up_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx_clean_up_pending(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.ath10k_htt*, align 8
  %9 = alloca %struct.htt_tx_done, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ath10k*
  store %struct.ath10k* %11, %struct.ath10k** %7, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  store %struct.ath10k_htt* %13, %struct.ath10k_htt** %8, align 8
  %14 = bitcast %struct.htt_tx_done* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  %15 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %16 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ath10k_dbg(%struct.ath10k* %15, i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HTT_TX_COMPL_STATE_DISCARD, align 4
  %22 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ath10k_htt*, %struct.ath10k_htt** %8, align 8
  %24 = call i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt* %23, %struct.htt_tx_done* %9)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #2

declare dso_local i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt*, %struct.htt_tx_done*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
