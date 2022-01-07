; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_beacon_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_beacon_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32*, i32, %struct.ath10k* }
%struct.ath10k = type { i32, i32 }

@IEEE80211_MAX_FRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_vif*)* @ath10k_mac_vif_beacon_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_vif_beacon_cleanup(%struct.ath10k_vif* %0) #0 {
  %2 = alloca %struct.ath10k_vif*, align 8
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %2, align 8
  %4 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %4, i32 0, i32 2
  %6 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  store %struct.ath10k* %6, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %11 = call i32 @ath10k_mac_vif_beacon_free(%struct.ath10k_vif* %10)
  %12 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %13 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_MAX_FRAME_LEN, align 4
  %21 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %22 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_free_coherent(i32 %19, i32 %20, i32* %23, i32 %26)
  %28 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %29 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_mac_vif_beacon_free(%struct.ath10k_vif*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
