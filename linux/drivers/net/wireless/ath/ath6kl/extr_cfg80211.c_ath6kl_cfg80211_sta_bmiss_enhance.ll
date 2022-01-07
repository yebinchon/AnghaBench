; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_sta_bmiss_enhance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_sta_bmiss_enhance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@WMI_READY = common dso_local global i32 0, align 4
@INFRA_NETWORK = common dso_local global i64 0, align 8
@ATH6KL_FW_CAPABILITY_BMISS_ENHANCE = common dso_local global i32 0, align 4
@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s fw bmiss enhance\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to %s enhanced bmiss detection: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_vif*, i32)* @ath6kl_cfg80211_sta_bmiss_enhance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_cfg80211_sta_bmiss_enhance(%struct.ath6kl_vif* %0, i32 %1) #0 {
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @WMI_READY, align 4
  %7 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @test_bit(i32 %6, i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %20 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INFRA_NETWORK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %61

25:                                               ; preds = %18
  %26 = load i32, i32* @ATH6KL_FW_CAPABILITY_BMISS_ENHANCE, align 4
  %27 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %28 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @test_bit(i32 %26, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %61

35:                                               ; preds = %25
  %36 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @ath6kl_dbg(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %43 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %48 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ath6kl_wmi_sta_bmiss_enhance_cmd(i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %35
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %17, %24, %34, %54, %35
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i8*) #1

declare dso_local i32 @ath6kl_wmi_sta_bmiss_enhance_cmd(i32, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
