; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_init_optimal_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_init_optimal_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i64, i64, i64, i8*, i8*, i32, i32, i32, i32, i64, %struct.rs_rate }
%struct.rs_rate = type { i64, i32, i32 }

@IWL_RATE_INVALID = common dso_local global i64 0, align 8
@LQ_VHT_MIMO2 = common dso_local global i32 0, align 4
@LQ_HT_MIMO2 = common dso_local global i32 0, align 4
@LQ_VHT_SISO = common dso_local global i32 0, align 4
@LQ_HT_SISO = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@LQ_LEGACY_A = common dso_local global i32 0, align 4
@LQ_LEGACY_G = common dso_local global i32 0, align 4
@rs_optimal_rates_5ghz_legacy = common dso_local global i8* null, align 8
@rs_optimal_rates_24ghz_legacy = common dso_local global i8* null, align 8
@RATE_MCS_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@rs_optimal_rates_vht_20mhz = common dso_local global i8* null, align 8
@rs_optimal_rates_vht = common dso_local global i8* null, align 8
@rs_optimal_rates_ht = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*)* @rs_init_optimal_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_init_optimal_rate(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.iwl_lq_sta*, align 8
  %7 = alloca %struct.rs_rate*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %6, align 8
  %8 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %9 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %8, i32 0, i32 10
  store %struct.rs_rate* %9, %struct.rs_rate** %7, align 8
  %10 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IWL_RATE_INVALID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @LQ_VHT_MIMO2, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @LQ_HT_MIMO2, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %27 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IWL_RATE_INVALID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @LQ_VHT_SISO, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @LQ_HT_SISO, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %46 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %62

47:                                               ; preds = %28
  %48 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %49 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @LQ_LEGACY_A, align 4
  %55 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %56 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @LQ_LEGACY_G, align 4
  %59 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %60 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %24
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %65 = call i64 @rs_bw_from_sta_bw(%struct.ieee80211_sta* %64)
  %66 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %67 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %70 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %71 = call i32 @rs_sgi_allow(%struct.iwl_mvm* %68, %struct.ieee80211_sta* %69, %struct.rs_rate* %70, i32* null)
  %72 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %73 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %75 = call i64 @is_mimo(%struct.rs_rate* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %79 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %82 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  br label %122

83:                                               ; preds = %63
  %84 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %85 = call i64 @is_siso(%struct.rs_rate* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %92 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  br label %121

93:                                               ; preds = %83
  %94 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %95 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %98 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %100 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %93
  %105 = load i8*, i8** @rs_optimal_rates_5ghz_legacy, align 8
  %106 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %107 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @rs_optimal_rates_5ghz_legacy, align 8
  %109 = call i8* @ARRAY_SIZE(i8* %108)
  %110 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %111 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  br label %120

112:                                              ; preds = %93
  %113 = load i8*, i8** @rs_optimal_rates_24ghz_legacy, align 8
  %114 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %115 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @rs_optimal_rates_24ghz_legacy, align 8
  %117 = call i8* @ARRAY_SIZE(i8* %116)
  %118 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %119 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %112, %104
  br label %121

121:                                              ; preds = %120, %87
  br label %122

122:                                              ; preds = %121, %77
  %123 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %124 = call i64 @is_vht(%struct.rs_rate* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %122
  %127 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %128 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @RATE_MCS_CHAN_WIDTH_20, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i8*, i8** @rs_optimal_rates_vht_20mhz, align 8
  %134 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %135 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @rs_optimal_rates_vht_20mhz, align 8
  %137 = call i8* @ARRAY_SIZE(i8* %136)
  %138 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %139 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  br label %148

140:                                              ; preds = %126
  %141 = load i8*, i8** @rs_optimal_rates_vht, align 8
  %142 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %143 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @rs_optimal_rates_vht, align 8
  %145 = call i8* @ARRAY_SIZE(i8* %144)
  %146 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %147 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %140, %132
  br label %162

149:                                              ; preds = %122
  %150 = load %struct.rs_rate*, %struct.rs_rate** %7, align 8
  %151 = call i64 @is_ht(%struct.rs_rate* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i8*, i8** @rs_optimal_rates_ht, align 8
  %155 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %156 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** @rs_optimal_rates_ht, align 8
  %158 = call i8* @ARRAY_SIZE(i8* %157)
  %159 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %160 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %153, %149
  br label %162

162:                                              ; preds = %161, %148
  ret void
}

declare dso_local i64 @rs_bw_from_sta_bw(%struct.ieee80211_sta*) #1

declare dso_local i32 @rs_sgi_allow(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.rs_rate*, i32*) #1

declare dso_local i64 @is_mimo(%struct.rs_rate*) #1

declare dso_local i64 @is_siso(%struct.rs_rate*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i64 @is_vht(%struct.rs_rate*) #1

declare dso_local i64 @is_ht(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
