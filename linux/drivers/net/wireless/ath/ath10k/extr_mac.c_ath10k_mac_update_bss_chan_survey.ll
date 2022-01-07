; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_bss_chan_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_bss_chan_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_3__, %struct.ieee80211_channel*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR = common dso_local global i32 0, align 4
@WMI_SERVICE_BSS_CHANNEL_INFO_64 = common dso_local global i32 0, align 4
@ATH10K_SCAN_IDLE = common dso_local global i64 0, align 8
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ignoring bss chan info request while scanning..\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to send pdev bss chan info request\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"bss channel survey timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_channel*)* @ath10k_mac_update_bss_chan_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_update_bss_chan_survey(%struct.ath10k* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load i32, i32* @WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 4
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load i32, i32* @WMI_SERVICE_BSS_CHANNEL_INFO_64, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @test_bit(i32 %11, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 2
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %23 = icmp ne %struct.ieee80211_channel* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  br label %59

25:                                               ; preds = %18
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATH10K_SCAN_IDLE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %35 = call i32 @ath10k_dbg(%struct.ath10k* %33, i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %59

36:                                               ; preds = %25
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = call i32 @reinit_completion(i32* %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ath10k_wmi_pdev_bss_chan_info_request(%struct.ath10k* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = call i32 @ath10k_warn(%struct.ath10k* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %59

48:                                               ; preds = %36
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = load i32, i32* @HZ, align 4
  %52 = mul nsw i32 3, %51
  %53 = call i32 @wait_for_completion_timeout(i32* %50, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = call i32 @ath10k_warn(%struct.ath10k* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %24, %32, %45, %56, %48
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ath10k_wmi_pdev_bss_chan_info_request(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
