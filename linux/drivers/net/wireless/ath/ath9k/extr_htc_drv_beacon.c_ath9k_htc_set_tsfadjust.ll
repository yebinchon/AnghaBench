; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_set_tsfadjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_set_tsfadjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_beacon_config, i32 }
%struct.ath_beacon_config = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_vif = type { i32, i32 }

@ATH9K_HTC_MAX_BCN_VIF = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tsfadjust is: %llu for bslot: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_set_tsfadjust(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_htc_vif*, align 8
  %7 = alloca %struct.ath_beacon_config*, align 8
  %8 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %16, %struct.ath9k_htc_vif** %6, align 8
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 0
  store %struct.ath_beacon_config* %18, %struct.ath_beacon_config** %7, align 8
  %19 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %7, align 8
  %26 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = load i32, i32* @ATH9K_HTC_MAX_BCN_VIF, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @TU_TO_USEC(i32 %34)
  %36 = call i32 @cpu_to_le64(i32 %35)
  %37 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %38 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %40 = load i32, i32* @CONFIG, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %44 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ath_dbg(%struct.ath_common* %39, i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
