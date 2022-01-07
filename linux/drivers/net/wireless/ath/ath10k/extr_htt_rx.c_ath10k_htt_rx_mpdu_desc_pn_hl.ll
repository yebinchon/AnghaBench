; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_mpdu_desc_pn_hl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_mpdu_desc_pn_hl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htt_hl_rx_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.htt_rx_pn_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htt_hl_rx_desc*, %union.htt_rx_pn_t*, i32)* @ath10k_htt_rx_mpdu_desc_pn_hl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_mpdu_desc_pn_hl(%struct.htt_hl_rx_desc* %0, %union.htt_rx_pn_t* %1, i32 %2) #0 {
  %4 = alloca %struct.htt_hl_rx_desc*, align 8
  %5 = alloca %union.htt_rx_pn_t*, align 8
  %6 = alloca i32, align 4
  store %struct.htt_hl_rx_desc* %0, %struct.htt_hl_rx_desc** %4, align 8
  store %union.htt_rx_pn_t* %1, %union.htt_rx_pn_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %30 [
    i32 48, label %8
    i32 24, label %23
  ]

8:                                                ; preds = %3
  %9 = load %struct.htt_hl_rx_desc*, %struct.htt_hl_rx_desc** %4, align 8
  %10 = getelementptr inbounds %struct.htt_hl_rx_desc, %struct.htt_hl_rx_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__le32_to_cpu(i32 %11)
  %13 = load %struct.htt_hl_rx_desc*, %struct.htt_hl_rx_desc** %4, align 8
  %14 = getelementptr inbounds %struct.htt_hl_rx_desc, %struct.htt_hl_rx_desc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__le32_to_cpu(i32 %16)
  %18 = and i32 %17, 65535
  %19 = shl i32 %18, 32
  %20 = add nsw i32 %12, %19
  %21 = load %union.htt_rx_pn_t*, %union.htt_rx_pn_t** %5, align 8
  %22 = bitcast %union.htt_rx_pn_t* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.htt_hl_rx_desc*, %struct.htt_hl_rx_desc** %4, align 8
  %25 = getelementptr inbounds %struct.htt_hl_rx_desc, %struct.htt_hl_rx_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__le32_to_cpu(i32 %26)
  %28 = load %union.htt_rx_pn_t*, %union.htt_rx_pn_t** %5, align 8
  %29 = bitcast %union.htt_rx_pn_t* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %3, %23, %8
  ret void
}

declare dso_local i32 @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
