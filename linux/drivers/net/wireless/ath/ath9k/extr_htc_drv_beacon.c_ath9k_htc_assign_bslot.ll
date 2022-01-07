; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_assign_bslot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_assign_bslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_vif = type { i32 }

@ATH9K_HTC_MAX_BCN_VIF = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Added interface at beacon slot: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_assign_bslot(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_htc_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(i32 %10)
  store %struct.ath_common* %11, %struct.ath_common** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %15, %struct.ath9k_htc_vif** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %38, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ATH9K_HTC_MAX_BCN_VIF, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %27, i64 %29
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %30, align 8
  %32 = icmp eq %struct.ieee80211_vif* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %19

41:                                               ; preds = %33, %19
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %43 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %45, align 8
  %47 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %48 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %46, i64 %50
  store %struct.ieee80211_vif* %42, %struct.ieee80211_vif** %51, align 8
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %56 = load i32, i32* @CONFIG, align 4
  %57 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %58 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @ath_dbg(%struct.ath_common* %55, i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %60)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
