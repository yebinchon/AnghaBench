; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar5523* }
%struct.ar5523 = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"bss_info_changed called\0A\00", align 1
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not create connection\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not set negotiated rate set\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not set association\0A\00", align 1
@UATH_LED_LINK = common dso_local global i32 0, align 4
@UATH_LED_ON = common dso_local global i32 0, align 4
@AR5523_CONNECTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@UATH_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ar5523_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar5523*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ar5523*, %struct.ar5523** %12, align 8
  store %struct.ar5523* %13, %struct.ar5523** %9, align 8
  %14 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %15 = call i32 @ar5523_dbg(%struct.ar5523* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %17 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %84

24:                                               ; preds = %4
  %25 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %24
  %30 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %33 = call i32 @ar5523_create_connection(%struct.ar5523* %30, %struct.ieee80211_vif* %31, %struct.ieee80211_bss_conf* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %38 = call i32 @ar5523_err(%struct.ar5523* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %84

39:                                               ; preds = %29
  %40 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %41 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %42 = call i32 @ar5523_set_basic_rates(%struct.ar5523* %40, %struct.ieee80211_bss_conf* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %47 = call i32 @ar5523_err(%struct.ar5523* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %84

48:                                               ; preds = %39
  %49 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %50 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %51 = call i32 @ar5523_write_associd(%struct.ar5523* %49, %struct.ieee80211_bss_conf* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %56 = call i32 @ar5523_err(%struct.ar5523* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %84

57:                                               ; preds = %48
  %58 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %59 = load i32, i32* @UATH_LED_LINK, align 4
  %60 = load i32, i32* @UATH_LED_ON, align 4
  %61 = call i32 @ar5523_set_ledsteady(%struct.ar5523* %58, i32 %59, i32 %60)
  %62 = load i32, i32* @AR5523_CONNECTED, align 4
  %63 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %64 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %63, i32 0, i32 1
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %67 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %68 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %67, i32 0, i32 2
  %69 = load i32, i32* @HZ, align 4
  %70 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %66, i32* %68, i32 %69)
  br label %83

71:                                               ; preds = %24
  %72 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %73 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %72, i32 0, i32 2
  %74 = call i32 @cancel_delayed_work(i32* %73)
  %75 = load i32, i32* @AR5523_CONNECTED, align 4
  %76 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %77 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %76, i32 0, i32 1
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  %79 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %80 = load i32, i32* @UATH_LED_LINK, align 4
  %81 = load i32, i32* @UATH_LED_OFF, align 4
  %82 = call i32 @ar5523_set_ledsteady(%struct.ar5523* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %57
  br label %84

84:                                               ; preds = %83, %54, %45, %36, %23
  %85 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %86 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  ret void
}

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar5523_create_connection(%struct.ar5523*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*) #1

declare dso_local i32 @ar5523_set_basic_rates(%struct.ar5523*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ar5523_write_associd(%struct.ar5523*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ar5523_set_ledsteady(%struct.ar5523*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
