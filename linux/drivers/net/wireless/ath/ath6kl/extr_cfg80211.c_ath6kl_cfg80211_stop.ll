; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ATH6KL_STATE_RECOVERY = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i32 0, align 4
@CONNECT_PEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to disable scan during stop\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_cfg80211_stop(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca %struct.ath6kl_vif*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %2, align 8
  %3 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %4 = call i32 @ath6kl_cfg80211_sscan_disable(%struct.ath6kl_vif* %3)
  %5 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %6 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %25 [
    i32 128, label %8
    i32 129, label %9
    i32 130, label %19
  ]

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %11 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %14 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @cfg80211_connect_result(i32 %12, i32 %15, i32* null, i32 0, i32* null, i32 0, i32 %16, i32 %17)
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %21 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @cfg80211_disconnected(i32 %22, i32 0, i32* null, i32 0, i32 1, i32 %23)
  br label %25

25:                                               ; preds = %1, %19, %9, %8
  %26 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %27 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ATH6KL_STATE_RECOVERY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load i32, i32* @CONNECTED, align 4
  %35 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %36 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %35, i32 0, i32 4
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @CONNECT_PEND, align 4
  %41 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %42 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %41, i32 0, i32 4
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39, %33
  %46 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %47 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %52 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ath6kl_wmi_disconnect_cmd(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %45, %39, %25
  %56 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %57 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %56, i32 0, i32 0
  store i32 128, i32* %57, align 8
  %58 = load i32, i32* @CONNECTED, align 4
  %59 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %60 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %59, i32 0, i32 4
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load i32, i32* @CONNECT_PEND, align 4
  %63 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %64 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %63, i32 0, i32 4
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %67 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @netif_stop_queue(i32 %68)
  %70 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %71 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @netif_carrier_off(i32 %72)
  %74 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %75 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ATH6KL_STATE_RECOVERY, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %55
  %82 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %83 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %88 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ath6kl_wmi_scanparams_cmd(i32 %86, i32 %89, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %81, %55
  %95 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %96 = call i32 @ath6kl_cfg80211_scan_complete_event(%struct.ath6kl_vif* %95, i32 1)
  ret void
}

declare dso_local i32 @ath6kl_cfg80211_sscan_disable(%struct.ath6kl_vif*) #1

declare dso_local i32 @cfg80211_connect_result(i32, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_disconnect_cmd(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i64 @ath6kl_wmi_scanparams_cmd(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_warn(i8*) #1

declare dso_local i32 @ath6kl_cfg80211_scan_complete_event(%struct.ath6kl_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
