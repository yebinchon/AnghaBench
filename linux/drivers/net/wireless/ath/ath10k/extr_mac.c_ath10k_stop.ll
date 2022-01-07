; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ATH10K_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @ath10k_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  store %struct.ath10k* %6, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call i32 @ath10k_drain_tx(%struct.ath10k* %7)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 4
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ATH10K_STATE_OFF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = call i32 @ath10k_halt(%struct.ath10k* %18)
  %20 = load i64, i64* @ATH10K_STATE_OFF, align 8
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 4
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 3
  %29 = call i32 @cancel_work_sync(i32* %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @cancel_delayed_work_sync(i32* %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 1
  %36 = call i32 @cancel_work_sync(i32* %35)
  ret void
}

declare dso_local i32 @ath10k_drain_tx(%struct.ath10k*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_halt(%struct.ath10k*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
