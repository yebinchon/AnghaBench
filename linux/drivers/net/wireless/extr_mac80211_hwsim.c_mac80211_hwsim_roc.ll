; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_roc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32, i32, i32, %struct.ieee80211_channel*, i64, i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hwsim ROC (%d MHz, %d ms)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel*, i32, i32)* @mac80211_hwsim_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_roc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mac80211_hwsim_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %14, align 8
  store %struct.mac80211_hwsim_data* %15, %struct.mac80211_hwsim_data** %12, align 8
  %16 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %17 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %20 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %25 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %5
  %29 = phi i1 [ true, %5 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %35 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %63

39:                                               ; preds = %28
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %41 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %42 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %41, i32 0, i32 3
  store %struct.ieee80211_channel* %40, %struct.ieee80211_channel** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %45 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %47 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @wiphy_dbg(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %58 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  %59 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %58, i32 0, i32 1
  %60 = load i32, i32* @HZ, align 4
  %61 = sdiv i32 %60, 50
  %62 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %57, i32* %59, i32 %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %39, %33
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wiphy_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
