; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_get_vht_cap_bf_sts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_get_vht_cap_bf_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_mac_get_vht_cap_bf_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_get_vht_cap_bf_sts(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 3, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
