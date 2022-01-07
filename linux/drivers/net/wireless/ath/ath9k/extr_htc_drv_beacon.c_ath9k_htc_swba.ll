; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_swba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_swba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32** }
%struct.wmi_event_swba = type { i64 }
%struct.ath_common = type { i32 }

@BSTUCK_THRESHOLD = common dso_local global i64 0, align 8
@BSTUCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Beacon stuck, HW reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Resuming beacon xmit after %u misses\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_swba(%struct.ath9k_htc_priv* %0, %struct.wmi_event_swba* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.wmi_event_swba*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.wmi_event_swba* %1, %struct.wmi_event_swba** %4, align 8
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  %11 = load %struct.wmi_event_swba*, %struct.wmi_event_swba** %4, align 8
  %12 = getelementptr inbounds %struct.wmi_event_swba, %struct.wmi_event_swba* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BSTUCK_THRESHOLD, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %29 = load i32, i32* @BSTUCK, align 4
  %30 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %28, i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 2
  %36 = call i32 @ieee80211_queue_work(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %27, %15
  br label %85

38:                                               ; preds = %2
  %39 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %46 = load i32, i32* @BSTUCK, align 4
  %47 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %45, i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %44, %38
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %57 = load %struct.wmi_event_swba*, %struct.wmi_event_swba** %4, align 8
  %58 = call i32 @ath9k_htc_choose_bslot(%struct.ath9k_htc_priv* %56, %struct.wmi_event_swba* %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_bh(i32* %73)
  br label %85

75:                                               ; preds = %55
  %76 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ath9k_htc_send_buffered(%struct.ath9k_htc_priv* %79, i32 %80)
  %82 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ath9k_htc_send_beacon(%struct.ath9k_htc_priv* %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %71, %37
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @ath9k_htc_choose_bslot(%struct.ath9k_htc_priv*, %struct.wmi_event_swba*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath9k_htc_send_buffered(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @ath9k_htc_send_beacon(%struct.ath9k_htc_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
