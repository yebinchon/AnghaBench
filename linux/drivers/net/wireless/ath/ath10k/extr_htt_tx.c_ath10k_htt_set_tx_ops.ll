; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_set_tx_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_set_tx_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32*, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ATH10K_DEV_TYPE_HL = common dso_local global i64 0, align 8
@htt_tx_ops_hl = common dso_local global i32 0, align 4
@htt_tx_ops_64 = common dso_local global i32 0, align 4
@htt_tx_ops_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_htt_set_tx_ops(%struct.ath10k_htt* %0) #0 {
  %2 = alloca %struct.ath10k_htt*, align 8
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %2, align 8
  %4 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %4, i32 0, i32 1
  %6 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  store %struct.ath10k* %6, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %15 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %14, i32 0, i32 0
  store i32* @htt_tx_ops_hl, i32** %15, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %24 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %23, i32 0, i32 0
  store i32* @htt_tx_ops_64, i32** %24, align 8
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %27 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %26, i32 0, i32 0
  store i32* @htt_tx_ops_32, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
