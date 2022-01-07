; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*, i32 }
%struct.cfg80211_scan_request = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { %struct.cfg80211_scan_request }

@.str = private unnamed_addr constant [30 x i8] c"Can not scan on no channels.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@S_SCANNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Scan already in progress.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"leave ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_mac_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca %struct.cfg80211_scan_request*, align 8
  %9 = alloca %struct.il_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %11 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %11, i32 0, i32 0
  store %struct.cfg80211_scan_request* %12, %struct.cfg80211_scan_request** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.il_priv*, %struct.il_priv** %14, align 8
  store %struct.il_priv* %15, %struct.il_priv** %9, align 8
  %16 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %17 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = call i32 @IL_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @S_SCANNING, align 4
  %30 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 4
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = call i32 @D_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %57

38:                                               ; preds = %24
  %39 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 3
  store %struct.cfg80211_scan_request* %39, %struct.cfg80211_scan_request** %41, align 8
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %43 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 2
  store %struct.ieee80211_vif* %42, %struct.ieee80211_vif** %44, align 8
  %45 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %46 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %56 = call i32 @il_scan_initiate(%struct.il_priv* %54, %struct.ieee80211_vif* %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %38, %34
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @D_SCAN(i8*) #1

declare dso_local i32 @il_scan_initiate(%struct.il_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
