; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_get_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_get_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_phy_info = type { i32, i32* }
%struct.ieee80211_rx_status = type { i32, i32, i32* }

@IWL_RX_INFO_ENERGY_ANT_ABC_IDX = common dso_local global i64 0, align 8
@IWL_RX_INFO_ENERGY_ANT_A_MSK = common dso_local global i32 0, align 4
@IWL_RX_INFO_ENERGY_ANT_A_POS = common dso_local global i32 0, align 4
@S8_MIN = common dso_local global i32 0, align 4
@IWL_RX_INFO_ENERGY_ANT_B_MSK = common dso_local global i32 0, align 4
@IWL_RX_INFO_ENERGY_ANT_B_POS = common dso_local global i32 0, align 4
@IWL_RX_INFO_ENERGY_ANT_C_MSK = common dso_local global i32 0, align 4
@IWL_RX_INFO_ENERGY_ANT_C_POS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"energy In A %d B %d C %d , and max %d\0A\00", align 1
@RX_RES_PHY_FLAGS_ANTENNA = common dso_local global i32 0, align 4
@RX_RES_PHY_FLAGS_ANTENNA_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_rx_phy_info*, %struct.ieee80211_rx_status*)* @iwl_mvm_get_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_get_signal_strength(%struct.iwl_mvm* %0, %struct.iwl_rx_phy_info* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_rx_phy_info*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_rx_phy_info* %1, %struct.iwl_rx_phy_info** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %12 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @IWL_RX_INFO_ENERGY_ANT_ABC_IDX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @IWL_RX_INFO_ENERGY_ANT_A_MSK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IWL_RX_INFO_ENERGY_ANT_A_POS, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 0, %27
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @S8_MIN, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IWL_RX_INFO_ENERGY_ANT_B_MSK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @IWL_RX_INFO_ENERGY_ANT_B_POS, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 0, %41
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @S8_MIN, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %42, %40 ], [ %44, %43 ]
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @IWL_RX_INFO_ENERGY_ANT_C_MSK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @IWL_RX_INFO_ENERGY_ANT_C_POS, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 0, %55
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @S8_MIN, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %56, %54 ], [ %58, %57 ]
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @max(i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @max(i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @IWL_DEBUG_STATS(%struct.iwl_mvm* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.iwl_rx_phy_info*, %struct.iwl_rx_phy_info** %5, align 8
  %77 = getelementptr inbounds %struct.iwl_rx_phy_info, %struct.iwl_rx_phy_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @RX_RES_PHY_FLAGS_ANTENNA_POS, align 4
  %83 = ashr i32 %81, %82
  %84 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  store i32 %96, i32* %100, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_STATS(%struct.iwl_mvm*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
