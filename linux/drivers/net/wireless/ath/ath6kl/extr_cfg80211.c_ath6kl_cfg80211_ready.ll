; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }

@WMI_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wmi is not ready\0A\00", align 1
@WLAN_ENABLED = common dso_local global i32 0, align 4
@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"wlan disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*)* @ath6kl_cfg80211_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cfg80211_ready(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  %5 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %6 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %5, i32 0, i32 1
  %7 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  store %struct.ath6kl* %7, %struct.ath6kl** %4, align 8
  %8 = load i32, i32* @WMI_READY, align 4
  %9 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %10 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @ath6kl_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @WLAN_ENABLED, align 4
  %17 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %18 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %23 = call i32 @ath6kl_dbg(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
