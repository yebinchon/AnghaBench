; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_free_msdu_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_free_msdu_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, i32, %struct.ath10k* }
%struct.ath10k = type { i32 }

@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"htt tx free msdu_id %hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_htt_tx_free_msdu_id(%struct.ath10k_htt* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %6, i32 0, i32 2
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %5, align 8
  %9 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ath10k_dbg(%struct.ath10k* %12, i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @idr_remove(i32* %17, i32 %18)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
