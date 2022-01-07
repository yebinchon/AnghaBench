; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_reset_endpoint_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_reset_endpoint_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { %struct.ath10k_htc_ep* }
%struct.ath10k_htc_ep = type { i32, i32, %struct.ath10k_htc*, i64, i64, i32 }

@ATH10K_HTC_EP_0 = common dso_local global i32 0, align 4
@ATH10K_HTC_EP_COUNT = common dso_local global i32 0, align 4
@ATH10K_HTC_SVC_ID_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_htc*)* @ath10k_htc_reset_endpoint_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htc_reset_endpoint_states(%struct.ath10k_htc* %0) #0 {
  %2 = alloca %struct.ath10k_htc*, align 8
  %3 = alloca %struct.ath10k_htc_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %2, align 8
  %5 = load i32, i32* @ATH10K_HTC_EP_0, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ATH10K_HTC_EP_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.ath10k_htc*, %struct.ath10k_htc** %2, align 8
  %12 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %11, i32 0, i32 0
  %13 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %13, i64 %15
  store %struct.ath10k_htc_ep* %16, %struct.ath10k_htc_ep** %3, align 8
  %17 = load i32, i32* @ATH10K_HTC_SVC_ID_UNUSED, align 4
  %18 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ath10k_htc*, %struct.ath10k_htc** %2, align 8
  %28 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %29 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %28, i32 0, i32 2
  store %struct.ath10k_htc* %27, %struct.ath10k_htc** %29, align 8
  %30 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
