; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_deepsleep_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_deepsleep_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ath6kl_vif = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ATH6KL_HOST_MODE_AWAKE = common dso_local global i32 0, align 4
@ATH6KL_STATE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_cfg80211_deepsleep_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cfg80211_deepsleep_resume(%struct.ath6kl* %0) #0 {
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
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %15 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %18, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %13
  %26 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %27 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ath6kl_wmi_powermode_cmd(%struct.TYPE_4__* %28, i32 0, i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %69

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %13
  %41 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %42 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %45 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATH6KL_HOST_MODE_AWAKE, align 4
  %48 = call i32 @ath6kl_wmi_set_host_sleep_mode_cmd(%struct.TYPE_4__* %43, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %69

53:                                               ; preds = %40
  %54 = load i32, i32* @ATH6KL_STATE_ON, align 4
  %55 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %58 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %61 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ath6kl_wmi_scanparams_cmd(%struct.TYPE_4__* %59, i32 %62, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66, %51, %37, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.ath6kl_vif* @ath6kl_vif_first(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_wmi_powermode_cmd(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @ath6kl_wmi_set_host_sleep_mode_cmd(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_scanparams_cmd(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
