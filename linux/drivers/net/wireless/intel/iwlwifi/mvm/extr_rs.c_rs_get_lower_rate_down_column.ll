; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_lower_rate_down_column.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_lower_rate_down_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iwl_mvm* }
%struct.iwl_mvm = type { i32 }
%struct.rs_rate = type { i64, i32, i32, i32, i32, i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@LQ_LEGACY_A = common dso_local global i32 0, align 4
@LQ_LEGACY_G = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@IWL_RATE_MCS_0_INDEX = common dso_local global i64 0, align 8
@IWL_RATE_MCS_9_INDEX = common dso_local global i64 0, align 8
@rs_ht_to_legacy = common dso_local global i64* null, align 8
@LQ_VHT_SISO = common dso_local global i32 0, align 4
@LQ_HT_SISO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_lq_sta*, %struct.rs_rate*)* @rs_get_lower_rate_down_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_get_lower_rate_down_column(%struct.iwl_lq_sta* %0, %struct.rs_rate* %1) #0 {
  %3 = alloca %struct.iwl_lq_sta*, align 8
  %4 = alloca %struct.rs_rate*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %3, align 8
  store %struct.rs_rate* %1, %struct.rs_rate** %4, align 8
  %6 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %11 = call i64 @is_legacy(%struct.rs_rate* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %97

14:                                               ; preds = %2
  %15 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %16 = call i64 @is_siso(%struct.rs_rate* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @LQ_LEGACY_A, align 4
  %26 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %27 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @LQ_LEGACY_G, align 4
  %30 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %31 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @RATE_MCS_CHAN_WIDTH_20, align 4
  %34 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %35 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %37 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IWL_RATE_MCS_0_INDEX, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %43 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IWL_RATE_MCS_9_INDEX, align 8
  %46 = icmp ugt i64 %44, %45
  br label %47

47:                                               ; preds = %41, %32
  %48 = phi i1 [ true, %32 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON_ONCE(i32 %49)
  %51 = load i64*, i64** @rs_ht_to_legacy, align 8
  %52 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %53 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %58 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %60 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  br label %73

61:                                               ; preds = %14
  %62 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %63 = call i64 @is_vht_mimo2(%struct.rs_rate* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @LQ_VHT_SISO, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @LQ_HT_SISO, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %72 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %47
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %76 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @num_of_ant(i32 %77)
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %82 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %81)
  %83 = call i32 @first_antenna(i32 %82)
  %84 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %85 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %88 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %87, i32 0, i32 2
  store i32 0, i32* %88, align 4
  %89 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %90 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %91 = call i32 @rs_rate_supported(%struct.iwl_lq_sta* %89, %struct.rs_rate* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %95 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %96 = call i32 @rs_get_lower_rate_in_column(%struct.iwl_lq_sta* %94, %struct.rs_rate* %95)
  br label %97

97:                                               ; preds = %13, %93, %86
  ret void
}

declare dso_local i64 @is_legacy(%struct.rs_rate*) #1

declare dso_local i64 @is_siso(%struct.rs_rate*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @is_vht_mimo2(%struct.rs_rate*) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @rs_rate_supported(%struct.iwl_lq_sta*, %struct.rs_rate*) #1

declare dso_local i32 @rs_get_lower_rate_in_column(%struct.iwl_lq_sta*, %struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
