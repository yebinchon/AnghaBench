; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar5523* }
%struct.ar5523 = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"add interface called\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid add_interface\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ar5523_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ar5523*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  store %struct.ar5523* %9, %struct.ar5523** %6, align 8
  %10 = load %struct.ar5523*, %struct.ar5523** %6, align 8
  %11 = call i32 @ar5523_dbg(%struct.ar5523* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ar5523*, %struct.ar5523** %6, align 8
  %13 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %15 = icmp ne %struct.ieee80211_vif* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ar5523*, %struct.ar5523** %6, align 8
  %18 = call i32 @ar5523_dbg(%struct.ar5523* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = load %struct.ar5523*, %struct.ar5523** %6, align 8
  %28 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %27, i32 0, i32 0
  store %struct.ieee80211_vif* %26, %struct.ieee80211_vif** %28, align 8
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
