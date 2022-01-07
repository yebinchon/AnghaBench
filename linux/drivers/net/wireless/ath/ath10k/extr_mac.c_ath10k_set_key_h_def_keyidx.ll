; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_set_key_h_def_keyidx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_set_key_h_def_keyidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vif = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_key_conf = type { i64, i32, i32 }

@WMI_VDEV_TYPE_AP = common dso_local global i64 0, align 8
@WMI_VDEV_TYPE_IBSS = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to set vdev %i group key as default key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_vif*, i32, %struct.ieee80211_key_conf*)* @ath10k_set_key_h_def_keyidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_set_key_h_def_keyidx(%struct.ath10k* %0, %struct.ath10k_vif* %1, i32 %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_vif* %1, %struct.ath10k_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %8, align 8
  %11 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %12 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WMI_VDEV_TYPE_AP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WMI_VDEV_TYPE_IBSS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %77

31:                                               ; preds = %24, %4
  %32 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %77

38:                                               ; preds = %31
  %39 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %77

45:                                               ; preds = %38
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %77

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SET_KEY, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %77

58:                                               ; preds = %53
  %59 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %60 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %61 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %59, i32 %62, i32 %63, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %72 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %73 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ath10k_warn(%struct.ath10k* %71, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %30, %37, %44, %52, %57, %70, %58
  ret void
}

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
