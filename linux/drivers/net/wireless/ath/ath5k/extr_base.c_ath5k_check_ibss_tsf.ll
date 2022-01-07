; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_check_ibss_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_check_ibss_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_rx_status = type { i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@ATH5K_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"beacon %llx mactime %llx (diff %lld) tsf now %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"fixing mactime from %llx to %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"fixed beacon timers after beacon receive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.sk_buff*, %struct.ieee80211_rx_status*)* @ath5k_check_ibss_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_check_ibss_tsf(%struct.ath5k_hw* %0, %struct.sk_buff* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %14, %struct.ieee80211_mgmt** %10, align 8
  %15 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %3
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %26 = call i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le64_to_cpu(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @TSF_TO_TU(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %36 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* %7, align 8
  %47 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %35, i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40, i64 %45, i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %24
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %55 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %56 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %54, i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %53, %24
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %67 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @ath5k_beacon_update_timers(%struct.ath5k_hw* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ath5k_hw_check_beacon_timers(%struct.ath5k_hw* %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @ath5k_beacon_update_timers(%struct.ath5k_hw* %82, i64 %83)
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %86 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %87 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %85, i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88, %3
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @TSF_TO_TU(i64) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, ...) #1

declare dso_local i32 @ath5k_beacon_update_timers(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_hw_check_beacon_timers(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
