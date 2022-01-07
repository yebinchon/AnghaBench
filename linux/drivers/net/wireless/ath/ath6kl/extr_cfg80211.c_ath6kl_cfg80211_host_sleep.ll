; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_host_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_host_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64, i32, i64*, i32 }
%struct.ath6kl_vif = type { i32, i32 }

@HOST_SLEEP_MODE_CMD_PROCESSED = common dso_local global i32 0, align 4
@ATH6KL_HOST_MODE_ASLEEP = common dso_local global i32 0, align 4
@WMI_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"timeout, didn't get host sleep cmd processed event\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"error while waiting for host sleep cmd processed event %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"clear wmi ctrl data timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"clear wmi ctrl data failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.ath6kl_vif*)* @ath6kl_cfg80211_host_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cfg80211_host_sleep(%struct.ath6kl* %0, %struct.ath6kl_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %5, align 8
  %8 = load i32, i32* @HOST_SLEEP_MODE_CMD_PROCESSED, align 4
  %9 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %10 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %16 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATH6KL_HOST_MODE_ASLEEP, align 4
  %19 = call i32 @ath6kl_wmi_set_host_sleep_mode_cmd(i32 %14, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %26 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %29 = call i32 @is_hsleep_mode_procsed(%struct.ath6kl_vif* %28)
  %30 = load i32, i32* @WMI_TIMEOUT, align 4
  %31 = call i32 @wait_event_interruptible_timeout(i32 %27, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %48 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %51 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %46
  %57 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %58 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %61 = call i32 @is_ctrl_ep_empty(%struct.ath6kl* %60)
  %62 = load i32, i32* @WMI_TIMEOUT, align 4
  %63 = call i32 @wait_event_interruptible_timeout(i32 %59, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %78

70:                                               ; preds = %56
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i8*, ...) @ath6kl_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_set_host_sleep_mode_cmd(i32, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @is_hsleep_mode_procsed(%struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_warn(i8*, ...) #1

declare dso_local i32 @is_ctrl_ep_empty(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
