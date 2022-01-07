; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_phy_params_pchlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_phy_params_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_phy_info = type { i32, i32, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@e1000_set_page_igp = common dso_local global i32 0, align 4
@e1000_read_phy_reg_hv = common dso_local global i32 0, align 4
@e1000_read_phy_reg_hv_locked = common dso_local global i32 0, align 4
@e1000_read_phy_reg_page_hv = common dso_local global i32 0, align 4
@e1000_set_lplu_state_pchlan = common dso_local global i8* null, align 8
@e1000_write_phy_reg_hv = common dso_local global i32 0, align 4
@e1000_write_phy_reg_hv_locked = common dso_local global i32 0, align 4
@e1000_write_phy_reg_page_hv = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_ich8lan = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_phy_unknown = common dso_local global i64 0, align 8
@PHY_REVISION_MASK = common dso_local global i64 0, align 8
@e1000_check_polarity_82577 = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_82577 = common dso_local global i32 0, align 4
@e1000_get_cable_length_82577 = common dso_local global i32 0, align 4
@e1000_get_phy_info_82577 = common dso_local global i32 0, align 4
@e1000e_phy_sw_reset = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i32 0, align 4
@e1000e_phy_force_speed_duplex_m88 = common dso_local global i32 0, align 4
@e1000e_get_cable_length_m88 = common dso_local global i32 0, align 4
@e1000e_get_phy_info_m88 = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  %8 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 1
  store i32 100, i32* %11, align 4
  %12 = load i32, i32* @e1000_set_page_igp, align 4
  %13 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 15
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @e1000_read_phy_reg_hv, align 4
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 14
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @e1000_read_phy_reg_hv_locked, align 4
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 13
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @e1000_read_phy_reg_page_hv, align 4
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 12
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** @e1000_set_lplu_state_pchlan, align 8
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 11
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @e1000_set_lplu_state_pchlan, align 8
  %33 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 10
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @e1000_write_phy_reg_hv, align 4
  %37 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 9
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @e1000_write_phy_reg_hv_locked, align 4
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @e1000_write_phy_reg_page_hv, align 4
  %45 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @e1000_power_down_phy_copper_ich8lan, align 4
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %57 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* @e1000_phy_unknown, align 8
  %60 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = call i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %62)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %1
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %2, align 8
  br label %168

68:                                               ; preds = %1
  %69 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @e1000_phy_unknown, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %115

74:                                               ; preds = %68
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %79 [
    i32 135, label %99
    i32 133, label %99
    i32 132, label %99
    i32 134, label %99
  ]

79:                                               ; preds = %74
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = call i64 @e1000e_get_phy_id(%struct.e1000_hw* %80)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i64, i64* %5, align 8
  store i64 %85, i64* %2, align 8
  br label %168

86:                                               ; preds = %79
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PHY_REVISION_MASK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %114

98:                                               ; preds = %91, %86
  br label %99

99:                                               ; preds = %74, %74, %74, %74, %98
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %100)
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i64, i64* %5, align 8
  store i64 %105, i64* %2, align 8
  br label %168

106:                                              ; preds = %99
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = call i64 @e1000e_get_phy_id(%struct.e1000_hw* %107)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i64, i64* %5, align 8
  store i64 %112, i64* %2, align 8
  br label %168

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %97
  br label %115

115:                                              ; preds = %114, %68
  %116 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @e1000e_get_phy_type_from_id(i64 %118)
  %120 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %121 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %163 [
    i32 131, label %125
    i32 129, label %125
    i32 128, label %125
    i32 130, label %146
  ]

125:                                              ; preds = %115, %115, %115
  %126 = load i32, i32* @e1000_check_polarity_82577, align 4
  %127 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %128 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @e1000_phy_force_speed_duplex_82577, align 4
  %131 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %132 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* @e1000_get_cable_length_82577, align 4
  %135 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %136 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @e1000_get_phy_info_82577, align 4
  %139 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %140 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* @e1000e_phy_sw_reset, align 4
  %143 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %144 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  store i32 %142, i32* %145, align 8
  br label %166

146:                                              ; preds = %115
  %147 = load i32, i32* @e1000_check_polarity_m88, align 4
  %148 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @e1000e_phy_force_speed_duplex_m88, align 4
  %152 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %153 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* @e1000e_get_cable_length_m88, align 4
  %156 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %157 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* @e1000e_get_phy_info_m88, align 4
  %160 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %161 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %166

163:                                              ; preds = %115
  %164 = load i64, i64* @E1000_ERR_PHY, align 8
  %165 = sub nsw i64 0, %164
  store i64 %165, i64* %5, align 8
  br label %166

166:                                              ; preds = %163, %146, %125
  %167 = load i64, i64* %5, align 8
  store i64 %167, i64* %2, align 8
  br label %168

168:                                              ; preds = %166, %111, %104, %84, %66
  %169 = load i64, i64* %2, align 8
  ret i64 %169
}

declare dso_local i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_get_phy_id(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i32 @e1000e_get_phy_type_from_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
