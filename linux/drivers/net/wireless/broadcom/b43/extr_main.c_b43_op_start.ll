; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43_wl = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @b43_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.b43_wl*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %7)
  store %struct.b43_wl* %8, %struct.b43_wl** %3, align 8
  %9 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %9, i32 0, i32 9
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  store %struct.b43_wldev* %11, %struct.b43_wldev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @eth_zero_addr(i32 %14)
  %16 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %17 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @eth_zero_addr(i32 %18)
  %20 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %21 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %25 = call i32 @b43_qos_clear(%struct.b43_wl* %24)
  %26 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %27 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %29 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %30, i32 0, i32 3
  store i32 1, i32* %31, align 4
  %32 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %33 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %32, i32 0, i32 4
  store i32 1, i32* %33, align 8
  %34 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %35 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %34, i32 0, i32 5
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %38 = call i64 @b43_status(%struct.b43_wldev* %37)
  %39 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %43 = call i32 @b43_wireless_core_init(%struct.b43_wldev* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %71

47:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %50 = call i64 @b43_status(%struct.b43_wldev* %49)
  %51 = load i64, i64* @B43_STAT_STARTED, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %55 = call i32 @b43_wireless_core_start(%struct.b43_wldev* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %63 = call i32 @b43_wireless_core_exit(%struct.b43_wldev* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %71

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wiphy_rfkill_start_polling(i32 %69)
  br label %71

71:                                               ; preds = %66, %64, %46
  %72 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %73 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %72, i32 0, i32 5
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = call i32 @b43_op_config(%struct.ieee80211_hw* %78, i32 -1)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @b43_qos_clear(%struct.b43_wl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_start(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_exit(%struct.b43_wldev*) #1

declare dso_local i32 @wiphy_rfkill_start_polling(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @b43_op_config(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
