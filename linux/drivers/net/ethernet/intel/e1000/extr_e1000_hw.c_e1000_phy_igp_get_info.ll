; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_igp_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_igp_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }
%struct.e1000_phy_info = type { i32, i8*, i8*, i64, i32, i32, i32, i64 }

@e1000_10bt_ext_dist_enable_normal = common dso_local global i32 0, align 4
@e1000_polarity_reversal_enabled = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_MDIX_SHIFT = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_REMOTE_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@e1000_igp_cable_length_50 = common dso_local global i32 0, align 4
@e1000_cable_length_50 = common dso_local global i32 0, align 4
@e1000_igp_cable_length_80 = common dso_local global i32 0, align 4
@e1000_cable_length_50_80 = common dso_local global i32 0, align 4
@e1000_igp_cable_length_110 = common dso_local global i32 0, align 4
@e1000_cable_length_80_110 = common dso_local global i32 0, align 4
@e1000_igp_cable_length_140 = common dso_local global i32 0, align 4
@e1000_cable_length_110_140 = common dso_local global i32 0, align 4
@e1000_cable_length_140 = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, %struct.e1000_phy_info*)* @e1000_phy_igp_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_igp_get_info(%struct.e1000_hw* %0, %struct.e1000_phy_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store %struct.e1000_phy_info* %1, %struct.e1000_phy_info** %5, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 7
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* @e1000_10bt_ext_dist_enable_normal, align 4
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @e1000_polarity_reversal_enabled, align 4
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = call i64 @e1000_check_polarity(%struct.e1000_hw* %23, i32* %11)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %3, align 8
  br label %143

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %35 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %33, i32 %34, i32* %7)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %143

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @IGP01E1000_PSSR_MDIX, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @IGP01E1000_PSSR_MDIX_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %141

54:                                               ; preds = %40
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %56 = load i32, i32* @PHY_1000T_STATUS, align 4
  %57 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %55, i32 %56, i32* %7)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  br label %143

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %73

71:                                               ; preds = %62
  %72 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %76 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %87

85:                                               ; preds = %73
  %86 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i8* [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %90 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %92 = call i64 @e1000_get_cable_length(%struct.e1000_hw* %91, i32* %8, i32* %9)
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i64, i64* %6, align 8
  store i64 %96, i64* %3, align 8
  br label %143

97:                                               ; preds = %87
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %98, %99
  %101 = sdiv i32 %100, 2
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @e1000_igp_cable_length_50, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @e1000_cable_length_50, align 4
  %107 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %108 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %140

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @e1000_igp_cable_length_80, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* @e1000_cable_length_50_80, align 4
  %115 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %116 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %139

117:                                              ; preds = %109
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @e1000_igp_cable_length_110, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @e1000_cable_length_80_110, align 4
  %123 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %124 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %138

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @e1000_igp_cable_length_140, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @e1000_cable_length_110_140, align 4
  %131 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %132 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %137

133:                                              ; preds = %125
  %134 = load i32, i32* @e1000_cable_length_140, align 4
  %135 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %136 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %113
  br label %140

140:                                              ; preds = %139, %105
  br label %141

141:                                              ; preds = %140, %40
  %142 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %142, i64* %3, align 8
  br label %143

143:                                              ; preds = %141, %95, %60, %38, %27
  %144 = load i64, i64* %3, align 8
  ret i64 %144
}

declare dso_local i64 @e1000_check_polarity(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_get_cable_length(%struct.e1000_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
