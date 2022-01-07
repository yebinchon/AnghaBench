; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_get_tbl_info_from_mcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_get_tbl_info_from_mcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_scale_tbl_info = type { i32, i32, i32, i32, i32, i32 }

@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@LQ_NONE = common dso_local global i32 0, align 4
@IWL_MAX_SEARCH = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@LQ_A = common dso_local global i32 0, align 4
@LQ_G = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@RATE_MCS_HT40_MSK = common dso_local global i32 0, align 4
@RATE_MCS_DUP_MSK = common dso_local global i32 0, align 4
@IWL_RATE_SISO_60M_PLCP = common dso_local global i32 0, align 4
@LQ_SISO = common dso_local global i32 0, align 4
@IWL_RATE_MIMO2_60M_PLCP = common dso_local global i32 0, align 4
@LQ_MIMO2 = common dso_local global i32 0, align 4
@IWL_MAX_11N_MIMO3_SEARCH = common dso_local global i32 0, align 4
@LQ_MIMO3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.iwl_scale_tbl_info*, i32*)* @rs_get_tbl_info_from_mcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_tbl_info_from_mcs(i32 %0, i32 %1, %struct.iwl_scale_tbl_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_scale_tbl_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.iwl_scale_tbl_info* %2, %struct.iwl_scale_tbl_info** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @get_num_of_ant_from_rate(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %19 = call i32 @memset(%struct.iwl_scale_tbl_info* %18, i32 0, i32 24)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @iwl_hwrate_to_plcp_idx(i32 %20)
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IWL_RATE_INVALID, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %139

31:                                               ; preds = %4
  %32 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %37 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %36, i32 0, i32 2
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %40 = ashr i32 %38, %39
  %41 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %42 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @LQ_NONE, align 4
  %44 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @IWL_MAX_SEARCH, align 4
  %47 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @LQ_A, align 4
  %62 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @LQ_G, align 4
  %66 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %67 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %53
  br label %138

70:                                               ; preds = %31
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %77 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @RATE_MCS_HT40_MSK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RATE_MCS_DUP_MSK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %78
  %89 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %90 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @RATE_MCS_DUP_MSK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %98 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %97, i32 0, i32 2
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @rs_extract_rate(i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @IWL_RATE_SISO_60M_PLCP, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* @LQ_SISO, align 4
  %110 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %111 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %105
  br label %137

113:                                              ; preds = %99
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @IWL_RATE_MIMO2_60M_PLCP, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @LQ_MIMO2, align 4
  %122 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %123 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %117
  br label %136

125:                                              ; preds = %113
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* @IWL_MAX_11N_MIMO3_SEARCH, align 4
  %130 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %131 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @LQ_MIMO3, align 4
  %133 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %134 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %125
  br label %136

136:                                              ; preds = %135, %124
  br label %137

137:                                              ; preds = %136, %112
  br label %138

138:                                              ; preds = %137, %69
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %27
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @get_num_of_ant_from_rate(i32) #1

declare dso_local i32 @memset(%struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @iwl_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @rs_extract_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
