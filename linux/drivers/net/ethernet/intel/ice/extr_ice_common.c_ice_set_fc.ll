; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_set_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_set_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i32, %struct.TYPE_2__, %struct.ice_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.ice_hw = type { i32 }
%struct.ice_aqc_set_phy_cfg_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_aqc_get_phy_caps_data = type { i32, i32, i32, i32, i32, i32, i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_SET_FC_AQ_FAIL_NONE = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_TX_LINK_PAUSE = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_RX_LINK_PAUSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_SW_CFG = common dso_local global i32 0, align 4
@ICE_SET_FC_AQ_FAIL_GET = common dso_local global i32 0, align 4
@ICE_AQ_PHY_ENA_AUTO_LINK_UPDT = common dso_local global i32 0, align 4
@ICE_SET_FC_AQ_FAIL_SET = common dso_local global i32 0, align 4
@ICE_SET_FC_AQ_FAIL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_fc(%struct.ice_port_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_port_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_aqc_set_phy_cfg_data, align 4
  %9 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ice_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast %struct.ice_aqc_set_phy_cfg_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 32, i1 false)
  store i32 0, i32* %11, align 4
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %17 = icmp ne %struct.ice_port_info* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %19, i32* %4, align 4
  br label %158

20:                                               ; preds = %3
  %21 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %22 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %21, i32 0, i32 2
  %23 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  store %struct.ice_hw* %23, %struct.ice_hw** %12, align 8
  %24 = load i32, i32* @ICE_SET_FC_AQ_FAIL_NONE, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %27 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %45 [
    i32 130, label %30
    i32 129, label %37
    i32 128, label %41
  ]

30:                                               ; preds = %20
  %31 = load i32, i32* @ICE_AQC_PHY_EN_TX_LINK_PAUSE, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @ICE_AQC_PHY_EN_RX_LINK_PAUSE, align 4
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %46

37:                                               ; preds = %20
  %38 = load i32, i32* @ICE_AQC_PHY_EN_RX_LINK_PAUSE, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %46

41:                                               ; preds = %20
  %42 = load i32, i32* @ICE_AQC_PHY_EN_TX_LINK_PAUSE, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %46

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %45, %41, %37, %30
  %47 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %48 = call i32 @ice_hw_to_dev(%struct.ice_hw* %47)
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32 %48, i32 28, i32 %49)
  store %struct.ice_aqc_get_phy_caps_data* %50, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %51 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %52 = icmp ne %struct.ice_aqc_get_phy_caps_data* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %54, i32* %4, align 4
  br label %158

55:                                               ; preds = %46
  %56 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %57 = load i32, i32* @ICE_AQC_REPORT_SW_CFG, align 4
  %58 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %59 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %56, i32 0, i32 %57, %struct.ice_aqc_get_phy_caps_data* %58, i32* null)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @ICE_SET_FC_AQ_FAIL_GET, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  br label %152

65:                                               ; preds = %55
  %66 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %67 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ICE_AQC_PHY_EN_TX_LINK_PAUSE, align 4
  %70 = load i32, i32* @ICE_AQC_PHY_EN_RX_LINK_PAUSE, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %82 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %151

85:                                               ; preds = %65
  store i32 10, i32* %14, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @ICE_AQ_PHY_ENA_AUTO_LINK_UPDT, align 4
  %90 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %95 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 6
  store i32 %96, i32* %97, align 4
  %98 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %99 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 5
  store i32 %100, i32* %101, align 4
  %102 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %103 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %107 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 3
  store i32 %108, i32* %109, align 4
  %110 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %111 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  %114 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %115 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %8, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %119 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %120 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ice_aq_set_phy_cfg(%struct.ice_hw* %118, i32 %121, %struct.ice_aqc_set_phy_cfg_data* %8, i32* null)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %93
  %126 = load i32, i32* @ICE_SET_FC_AQ_FAIL_SET, align 4
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  br label %152

128:                                              ; preds = %93
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %141, %128
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %135 = call i32 @ice_update_link_info(%struct.ice_port_info* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %144

139:                                              ; preds = %133
  %140 = call i32 @mdelay(i32 100)
  br label %141

141:                                              ; preds = %139
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %129

144:                                              ; preds = %138, %129
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* @ICE_SET_FC_AQ_FAIL_UPDATE, align 4
  %149 = load i32*, i32** %6, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %65
  br label %152

152:                                              ; preds = %151, %125, %62
  %153 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %154 = call i32 @ice_hw_to_dev(%struct.ice_hw* %153)
  %155 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %9, align 8
  %156 = call i32 @devm_kfree(i32 %154, %struct.ice_aqc_get_phy_caps_data* %155)
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %152, %53, %18
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32, i32, i32) #2

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #2

declare dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #2

declare dso_local i32 @ice_aq_set_phy_cfg(%struct.ice_hw*, i32, %struct.ice_aqc_set_phy_cfg_data*, i32*) #2

declare dso_local i32 @ice_update_link_info(%struct.ice_port_info*) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_get_phy_caps_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
