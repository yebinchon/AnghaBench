; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i64, i32, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32, i32, i32 }

@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @p54_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.p54_common*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  store %struct.p54_common* %10, %struct.p54_common** %6, align 8
  %11 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %17 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %20 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %26 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %33 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %32, i32 0, i32 3
  store %struct.ieee80211_vif* %31, %struct.ieee80211_vif** %33, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %44 [
    i32 128, label %37
    i32 131, label %37
    i32 130, label %37
    i32 129, label %37
  ]

37:                                               ; preds = %30, %30, %30, %30
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %43 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %50

44:                                               ; preds = %30
  %45 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %46 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %37
  %51 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %52 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32 %53, i32 %56, i32 %57)
  %59 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %60 = call i32 @p54_setup_mac(%struct.p54_common* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %62 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %50, %44, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @p54_setup_mac(%struct.p54_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
