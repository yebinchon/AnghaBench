; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43legacy_wl = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32 }

@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @b43legacy_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %7)
  store %struct.b43legacy_wl* %8, %struct.b43legacy_wl** %3, align 8
  %9 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %9, i32 0, i32 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  store %struct.b43legacy_wldev* %11, %struct.b43legacy_wldev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @eth_zero_addr(i32 %14)
  %16 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %17 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @eth_zero_addr(i32 %18)
  %20 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %21 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %23 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %25 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %27 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %28, i32 0, i32 3
  store i32 1, i32* %29, align 4
  %30 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %31 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %30, i32 0, i32 4
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %34 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %33)
  %35 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %39 = call i32 @b43legacy_wireless_core_init(%struct.b43legacy_wldev* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %67

43:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %46 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %45)
  %47 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %51 = call i32 @b43legacy_wireless_core_start(%struct.b43legacy_wldev* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %59 = call i32 @b43legacy_wireless_core_exit(%struct.b43legacy_wldev* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %67

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wiphy_rfkill_start_polling(i32 %65)
  br label %67

67:                                               ; preds = %62, %60, %42
  %68 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %69 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %68, i32 0, i32 4
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_start(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_wireless_core_exit(%struct.b43legacy_wldev*) #1

declare dso_local i32 @wiphy_rfkill_start_polling(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
