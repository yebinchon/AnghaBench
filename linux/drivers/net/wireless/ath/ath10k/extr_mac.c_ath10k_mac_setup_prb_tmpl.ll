; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_setup_prb_tmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_setup_prb_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i64, i32, %struct.ieee80211_vif*, %struct.ath10k* }
%struct.ieee80211_vif = type { i32 }
%struct.ath10k = type { %struct.TYPE_2__, %struct.ieee80211_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }

@WMI_SERVICE_BEACON_OFFLOAD = common dso_local global i32 0, align 4
@WMI_VDEV_TYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"failed to get probe resp template from mac80211\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to submit probe resp template command: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_mac_setup_prb_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  %9 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %9, i32 0, i32 3
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %4, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %13, align 8
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %5, align 8
  %15 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %16, align 8
  store %struct.ieee80211_vif* %17, %struct.ieee80211_vif** %6, align 8
  %18 = load i32, i32* @WMI_SERVICE_BEACON_OFFLOAD, align 4
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @test_bit(i32 %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

26:                                               ; preds = %1
  %27 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WMI_VDEV_TYPE_AP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %66

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = call i64 @ieee80211_vif_is_mesh(%struct.ieee80211_vif* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %66

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %41 = call %struct.sk_buff* @ieee80211_proberesp_get(%struct.ieee80211_hw* %39, %struct.ieee80211_vif* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %46 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %66

49:                                               ; preds = %38
  %50 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %51 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %52 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @ath10k_wmi_prb_tmpl(%struct.ath10k* %50, i32 %53, %struct.sk_buff* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %60, %44, %37, %32, %25
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_proberesp_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_wmi_prb_tmpl(%struct.ath10k*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
