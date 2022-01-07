; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_force_phys_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_force_phys_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i32, %struct.TYPE_8__*, %struct.ice_port_info* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ice_port_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ice_aqc_get_phy_caps_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_aqc_set_phy_cfg_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_SW_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to get phy capabilities, VSI %d error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_LINK = common dso_local global i32 0, align 4
@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@ICE_AQ_PHY_ENA_AUTO_LINK_UPDT = common dso_local global i32 0, align 4
@ICE_AQ_PHY_ENA_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to set phy config, VSI %d error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, i32)* @ice_force_phys_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_force_phys_link_state(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %7 = alloca %struct.ice_aqc_set_phy_cfg_data*, align 8
  %8 = alloca %struct.ice_port_info*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %12 = icmp ne %struct.ice_vsi* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 3
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %15, align 8
  %17 = icmp ne %struct.ice_port_info* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %13, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %189

26:                                               ; preds = %18
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ICE_VSI_PF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %189

33:                                               ; preds = %26
  %34 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %35 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.device* %39, %struct.device** %9, align 8
  %40 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %41 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %40, i32 0, i32 3
  %42 = load %struct.ice_port_info*, %struct.ice_port_info** %41, align 8
  store %struct.ice_port_info* %42, %struct.ice_port_info** %8, align 8
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.ice_aqc_set_phy_cfg_data* @devm_kzalloc(%struct.device* %43, i32 32, i32 %44)
  %46 = bitcast %struct.ice_aqc_set_phy_cfg_data* %45 to %struct.ice_aqc_get_phy_caps_data*
  store %struct.ice_aqc_get_phy_caps_data* %46, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %47 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %48 = icmp ne %struct.ice_aqc_get_phy_caps_data* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %189

52:                                               ; preds = %33
  %53 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %54 = load i32, i32* @ICE_AQC_REPORT_SW_CFG, align 4
  %55 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %56 = bitcast %struct.ice_aqc_get_phy_caps_data* %55 to %struct.ice_aqc_set_phy_cfg_data*
  %57 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %53, i32 0, i32 %54, %struct.ice_aqc_set_phy_cfg_data* %56, i32* null)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.device*, %struct.device** %9, align 8
  %62 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %63 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %183

69:                                               ; preds = %52
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %72 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ICE_AQC_PHY_EN_LINK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = icmp eq i32 %70, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %84 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = icmp eq i32 %82, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %183

96:                                               ; preds = %81, %69
  %97 = load %struct.device*, %struct.device** %9, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.ice_aqc_set_phy_cfg_data* @devm_kzalloc(%struct.device* %97, i32 32, i32 %98)
  store %struct.ice_aqc_set_phy_cfg_data* %99, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %100 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %101 = icmp ne %struct.ice_aqc_set_phy_cfg_data* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %183

105:                                              ; preds = %96
  %106 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %107 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %110 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %112 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %115 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %117 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ICE_AQ_PHY_ENA_AUTO_LINK_UPDT, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %122 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %124 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %127 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %129 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %132 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %134 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %137 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %139 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %142 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %105
  %146 = load i32, i32* @ICE_AQ_PHY_ENA_LINK, align 4
  %147 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %148 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %158

151:                                              ; preds = %105
  %152 = load i32, i32* @ICE_AQ_PHY_ENA_LINK, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %155 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %145
  %159 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %160 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %164 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %167 = call i32 @ice_aq_set_phy_cfg(i32* %162, i32 %165, %struct.ice_aqc_set_phy_cfg_data* %166, i32* null)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %158
  %171 = load %struct.device*, %struct.device** %9, align 8
  %172 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %173 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @dev_err(%struct.device* %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %170, %158
  %180 = load %struct.device*, %struct.device** %9, align 8
  %181 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %7, align 8
  %182 = call i32 @devm_kfree(%struct.device* %180, %struct.ice_aqc_set_phy_cfg_data* %181)
  br label %183

183:                                              ; preds = %179, %102, %95, %60
  %184 = load %struct.device*, %struct.device** %9, align 8
  %185 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %186 = bitcast %struct.ice_aqc_get_phy_caps_data* %185 to %struct.ice_aqc_set_phy_cfg_data*
  %187 = call i32 @devm_kfree(%struct.device* %184, %struct.ice_aqc_set_phy_cfg_data* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %183, %49, %32, %23
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.ice_aqc_set_phy_cfg_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info*, i32, i32, %struct.ice_aqc_set_phy_cfg_data*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @ice_aq_set_phy_cfg(i32*, i32, %struct.ice_aqc_set_phy_cfg_data*, i32*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ice_aqc_set_phy_cfg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
