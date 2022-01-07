; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debug.h_ath10k_sta_update_rx_tid_stats_ampdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debug.h_ath10k_sta_update_rx_tid_stats_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.htt_rx_indication_mpdu_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i32, i32, %struct.htt_rx_indication_mpdu_range*, i32)* @ath10k_sta_update_rx_tid_stats_ampdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_sta_update_rx_tid_stats_ampdu(%struct.ath10k* %0, i32 %1, i32 %2, %struct.htt_rx_indication_mpdu_range* %3, i32 %4) #0 {
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.htt_rx_indication_mpdu_range*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.htt_rx_indication_mpdu_range* %3, %struct.htt_rx_indication_mpdu_range** %9, align 8
  store i32 %4, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
