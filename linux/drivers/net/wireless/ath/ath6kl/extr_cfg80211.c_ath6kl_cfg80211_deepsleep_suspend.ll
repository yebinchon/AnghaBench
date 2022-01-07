; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_deepsleep_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_deepsleep_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ath6kl_vif = type { i32 }

@EIO = common dso_local global i32 0, align 4
@WMI_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"deepsleep failed as wmi is not ready\0A\00", align 1
@REC_POWER = common dso_local global i32 0, align 4
@ATH6KL_WOW_MODE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_cfg80211_deepsleep_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cfg80211_deepsleep_suspend(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = call %struct.ath6kl_vif* @ath6kl_vif_first(%struct.ath6kl* %6)
  store %struct.ath6kl_vif* %7, %struct.ath6kl_vif** %4, align 8
  %8 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %9 = icmp ne %struct.ath6kl_vif* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load i32, i32* @WMI_READY, align 4
  %15 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %16 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 @ath6kl_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %13
  %24 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %25 = call i32 @ath6kl_cfg80211_stop_all(%struct.ath6kl* %24)
  %26 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %27 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %32 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %36 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* @REC_POWER, align 4
  %39 = call i32 @ath6kl_wmi_powermode_cmd(%struct.TYPE_3__* %37, i32 0, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %23
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %68

44:                                               ; preds = %23
  %45 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %46 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %49 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATH6KL_WOW_MODE_DISABLE, align 4
  %52 = call i32 @ath6kl_wmi_set_wow_mode_cmd(%struct.TYPE_3__* %47, i32 %50, i32 %51, i32 0, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %68

57:                                               ; preds = %44
  %58 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %59 = call i32 @ath6kl_tx_data_cleanup(%struct.ath6kl* %58)
  %60 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %61 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %62 = call i32 @ath6kl_cfg80211_host_sleep(%struct.ath6kl* %60, %struct.ath6kl_vif* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %55, %42, %19, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.ath6kl_vif* @ath6kl_vif_first(%struct.ath6kl*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @ath6kl_cfg80211_stop_all(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_wmi_powermode_cmd(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_set_wow_mode_cmd(%struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_tx_data_cleanup(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_cfg80211_host_sleep(%struct.ath6kl*, %struct.ath6kl_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
