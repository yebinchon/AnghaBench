; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_control_beaconing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_control_beaconing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, i32, i32, i32, i64, %struct.ath10k* }
%struct.ath10k = type { i32, i32 }
%struct.ieee80211_bss_conf = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to down vdev_id %i: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to bring up vdev %d: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"failed to fix hidden ssid for vdev %i, expect trouble: %d\0A\00", align 1
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"mac vdev %d up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_vif*, %struct.ieee80211_bss_conf*)* @ath10k_control_beaconing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_control_beaconing(%struct.ath10k_vif* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %4, align 8
  %7 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %7, i32 0, i32 5
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %10, i32 0, i32 5
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %21 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ath10k_wmi_vdev_down(%struct.ath10k* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %29 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %30 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ath10k_warn(%struct.ath10k* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %36 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %37, i32 0, i32 5
  %39 = load %struct.ath10k*, %struct.ath10k** %38, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %43 = call i32 @ath10k_mac_vif_beacon_free(%struct.ath10k_vif* %42)
  %44 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %45 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %44, i32 0, i32 5
  %46 = load %struct.ath10k*, %struct.ath10k** %45, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  br label %104

49:                                               ; preds = %2
  %50 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %51 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %50, i32 0, i32 1
  store i32 4096, i32* %51, align 4
  %52 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %53 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %55 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ether_addr_copy(i32 %56, i32 %59)
  %61 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %62 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %61, i32 0, i32 5
  %63 = load %struct.ath10k*, %struct.ath10k** %62, align 8
  %64 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %65 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %68 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %71 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ath10k_wmi_vdev_up(%struct.ath10k* %63, i32 %66, i64 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %49
  %77 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %78 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %79 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ath10k_warn(%struct.ath10k* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  br label %104

83:                                               ; preds = %49
  %84 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %85 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %87 = call i32 @ath10k_mac_vif_fix_hidden_ssid(%struct.ath10k_vif* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %92 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %93 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @ath10k_warn(%struct.ath10k* %91, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95)
  br label %104

97:                                               ; preds = %83
  %98 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %99 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %100 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %101 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ath10k_dbg(%struct.ath10k* %98, i32 %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %97, %90, %76, %34
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_wmi_vdev_down(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_mac_vif_beacon_free(%struct.ath10k_vif*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_up(%struct.ath10k*, i32, i64, i32) #1

declare dso_local i32 @ath10k_mac_vif_fix_hidden_ssid(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
