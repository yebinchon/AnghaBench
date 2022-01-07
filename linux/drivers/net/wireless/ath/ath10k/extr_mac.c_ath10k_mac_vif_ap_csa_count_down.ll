; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_ap_csa_count_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_ap_csa_count_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i64, i32, %struct.ath10k*, %struct.ieee80211_vif* }
%struct.ath10k = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }

@WMI_SERVICE_BEACON_OFFLOAD = common dso_local global i32 0, align 4
@WMI_VDEV_TYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"failed to update bcn tmpl during csa: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to update prb tmpl during csa: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_vif*)* @ath10k_mac_vif_ap_csa_count_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_vif_ap_csa_count_down(%struct.ath10k_vif* %0) #0 {
  %2 = alloca %struct.ath10k_vif*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %2, align 8
  %6 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %7 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %6, i32 0, i32 2
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %3, align 8
  %9 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %9, i32 0, i32 3
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %4, align 8
  %12 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %13 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %12, i32 0, i32 2
  %14 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i32, i32* @WMI_SERVICE_BEACON_OFFLOAD, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %76

29:                                               ; preds = %1
  %30 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %31 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WMI_VDEV_TYPE_AP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %76

36:                                               ; preds = %29
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %76

42:                                               ; preds = %36
  %43 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %44 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %76

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %50 = call i32 @ieee80211_csa_is_complete(%struct.ieee80211_vif* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %48
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %54 = call i32 @ieee80211_csa_update_counter(%struct.ieee80211_vif* %53)
  %55 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %56 = call i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ath10k_warn(%struct.ath10k* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %52
  %64 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %65 = call i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @ath10k_warn(%struct.ath10k* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  br label %76

73:                                               ; preds = %48
  %74 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %75 = call i32 @ieee80211_csa_finish(%struct.ieee80211_vif* %74)
  br label %76

76:                                               ; preds = %28, %35, %41, %47, %73, %72
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ieee80211_csa_is_complete(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_csa_update_counter(%struct.ieee80211_vif*) #1

declare dso_local i32 @ath10k_mac_setup_bcn_tmpl(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_mac_setup_prb_tmpl(%struct.ath10k_vif*) #1

declare dso_local i32 @ieee80211_csa_finish(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
