; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_fec_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_fec_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i64, %struct.TYPE_4__*, %struct.ice_port_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ice_port_info = type { i32, i32 }
%struct.ice_aqc_set_phy_cfg_data = type { i64, i64, i32 }
%struct.ice_aqc_get_phy_caps_data = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Changing FEC parameters only supported for PF VSI\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_SW_CFG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_TOPO_CAP = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_AUTO_FEC = common dso_local global i64 0, align 8
@ICE_AQ_PHY_ENA_AUTO_FEC = common dso_local global i64 0, align 8
@ICE_AQC_PHY_AN_MODE = common dso_local global i32 0, align 4
@ICE_AQ_PHY_ENA_AUTO_LINK_UPDT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ice_set_fec_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_fec_cfg(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_aqc_set_phy_cfg_data, align 8
  %8 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %9 = alloca %struct.ice_vsi*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ice_port_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ice_netdev_priv* %16, %struct.ice_netdev_priv** %6, align 8
  %17 = bitcast %struct.ice_aqc_set_phy_cfg_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %18, i32 0, i32 0
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %19, align 8
  store %struct.ice_vsi* %20, %struct.ice_vsi** %9, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %22 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %21, i32 0, i32 2
  %23 = load %struct.ice_port_info*, %struct.ice_port_info** %22, align 8
  store %struct.ice_port_info* %23, %struct.ice_port_info** %12, align 8
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %25 = icmp ne %struct.ice_port_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %150

29:                                               ; preds = %2
  %30 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %31 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICE_VSI_PF, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netdev_info(%struct.net_device* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %150

40:                                               ; preds = %29
  %41 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %42 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32* %46, i32 16, i32 %47)
  store %struct.ice_aqc_get_phy_caps_data* %48, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %49 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %50 = icmp ne %struct.ice_aqc_get_phy_caps_data* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %150

54:                                               ; preds = %40
  %55 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %56 = load i32, i32* @ICE_AQC_REPORT_SW_CFG, align 4
  %57 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %58 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %55, i32 0, i32 %56, %struct.ice_aqc_get_phy_caps_data* %57, i32* null)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  br label %140

64:                                               ; preds = %54
  %65 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %66 = call i32 @ice_copy_phy_caps_to_cfg(%struct.ice_aqc_get_phy_caps_data* %65, %struct.ice_aqc_set_phy_cfg_data* %7)
  %67 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %68 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %71 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  %73 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %74 = call i32 @memset(%struct.ice_aqc_get_phy_caps_data* %73, i32 0, i32 16)
  %75 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %76 = load i32, i32* @ICE_AQC_REPORT_TOPO_CAP, align 4
  %77 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %78 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %75, i32 0, i32 %76, %struct.ice_aqc_get_phy_caps_data* %77, i32* null)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %14, align 4
  br label %140

84:                                               ; preds = %64
  %85 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %86 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ICE_AQC_PHY_EN_AUTO_FEC, align 8
  %89 = and i64 %87, %88
  %90 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %7, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = or i64 %91, %89
  store i64 %92, i64* %90, align 8
  %93 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %94 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %7, i32 0, i32 1
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ice_cfg_phy_fec(%struct.ice_aqc_set_phy_cfg_data* %7, i32 %97)
  %99 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %7, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ICE_AQ_PHY_ENA_AUTO_FEC, align 8
  %102 = and i64 %100, %101
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @ICE_AQC_PHY_EN_AUTO_FEC, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %84
  %108 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %7, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %107, %84
  %113 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %114 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @ICE_AQC_PHY_AN_MODE, align 4
  %117 = sext i32 %116 to i64
  %118 = and i64 %115, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i64, i64* @ICE_AQ_PHY_ENA_AUTO_LINK_UPDT, align 8
  %122 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %7, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = or i64 %123, %121
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %120, %112
  %126 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %127 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %130 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ice_aq_set_phy_cfg(i32 %128, i32 %131, %struct.ice_aqc_set_phy_cfg_data* %7, i32* null)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %135, %125
  br label %139

139:                                              ; preds = %138, %107
  br label %140

140:                                              ; preds = %139, %81, %61
  %141 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %142 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %8, align 8
  %148 = call i32 @devm_kfree(i32* %146, %struct.ice_aqc_get_phy_caps_data* %147)
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %140, %51, %35, %26
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #1

declare dso_local i32 @ice_copy_phy_caps_to_cfg(%struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_set_phy_cfg_data*) #1

declare dso_local i32 @memset(%struct.ice_aqc_get_phy_caps_data*, i32, i32) #1

declare dso_local i32 @ice_cfg_phy_fec(%struct.ice_aqc_set_phy_cfg_data*, i32) #1

declare dso_local i32 @ice_aq_set_phy_cfg(i32, i32, %struct.ice_aqc_set_phy_cfg_data*, i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_aqc_get_phy_caps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
