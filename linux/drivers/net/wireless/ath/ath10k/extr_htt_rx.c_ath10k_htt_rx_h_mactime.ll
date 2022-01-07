; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_mactime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_mactime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32 }
%struct.htt_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.htt_rx_desc*)* @ath10k_htt_rx_h_mactime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_mactime(%struct.ath10k* %0, %struct.ieee80211_rx_status* %1, %struct.htt_rx_desc* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.htt_rx_desc*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %5, align 8
  store %struct.htt_rx_desc* %2, %struct.htt_rx_desc** %6, align 8
  %7 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %6, align 8
  %8 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__le32_to_cpu(i32 %11)
  %13 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %16 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  ret void
}

declare dso_local i32 @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
