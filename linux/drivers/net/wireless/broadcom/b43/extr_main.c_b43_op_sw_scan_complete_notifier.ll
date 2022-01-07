; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_sw_scan_complete_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_sw_scan_complete_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.b43_wl = type { i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43_HF_SKCFPUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @b43_op_sw_scan_complete_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_sw_scan_complete_notifier(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.b43_wl*, align 8
  %6 = alloca %struct.b43_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %7)
  store %struct.b43_wl* %8, %struct.b43_wl** %5, align 8
  %9 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %10 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %13 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %12, i32 0, i32 1
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %13, align 8
  store %struct.b43_wldev* %14, %struct.b43_wldev** %6, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %16 = icmp ne %struct.b43_wldev* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %19 = call i64 @b43_status(%struct.b43_wldev* %18)
  %20 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %25 = call i32 @b43_hf_read(%struct.b43_wldev* %24)
  %26 = load i32, i32* @B43_HF_SKCFPUP, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @b43_hf_write(%struct.b43_wldev* %23, i32 %28)
  br label %30

30:                                               ; preds = %22, %17, %2
  %31 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %32 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
