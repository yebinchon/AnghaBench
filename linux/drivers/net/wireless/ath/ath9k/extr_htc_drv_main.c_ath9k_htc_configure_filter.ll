; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@SUPPORTED_FILTERS = common dso_local global i32 0, align 4
@ATH_OP_INVALID = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to configure filter on invalid state\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Set HW RX filter: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @ath9k_htc_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  store %struct.ath9k_htc_priv* %14, %struct.ath9k_htc_priv** %9, align 8
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ath_common* @ath9k_hw_common(i32 %17)
  store %struct.ath_common* %18, %struct.ath_common** %10, align 8
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @SUPPORTED_FILTERS, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @SUPPORTED_FILTERS, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @ATH_OP_INVALID, align 4
  %30 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %31 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ath_common* @ath9k_hw_common(i32 %37)
  %39 = load i32, i32* @ANY, align 4
  %40 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %38, i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %42 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %70

44:                                               ; preds = %4
  %45 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %46 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %50 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %52 = call i32 @ath9k_htc_calcrxfilter(%struct.ath9k_htc_priv* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @ath9k_hw_setrxfilter(i32 %55, i32 %56)
  %58 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %59 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.ath_common* @ath9k_hw_common(i32 %60)
  %62 = load i32, i32* @CONFIG, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %61, i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %66 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %65)
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %44, %34
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_calcrxfilter(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(i32, i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
