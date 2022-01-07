; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_get_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_get_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.b43_wl = type { i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @b43_op_get_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b43_op_get_tsf(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.b43_wl*, align 8
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %8)
  store %struct.b43_wl* %9, %struct.b43_wl** %5, align 8
  %10 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %11 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %14 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %13, i32 0, i32 1
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %14, align 8
  store %struct.b43_wldev* %15, %struct.b43_wldev** %6, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %17 = icmp ne %struct.b43_wldev* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %20 = call i64 @b43_status(%struct.b43_wldev* %19)
  %21 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %25 = call i32 @b43_tsf_read(%struct.b43_wldev* %24, i64* %7)
  br label %27

26:                                               ; preds = %18, %2
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %29 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_tsf_read(%struct.b43_wldev*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
