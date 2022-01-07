; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_6__*, %struct.ice_port_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ice_port_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ice_link_status }
%struct.ice_link_status = type { i32 }
%struct.ice_aqc_get_phy_caps_data = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETHTOOL_FEC_BASER = common dso_local global i32 0, align 4
@ETHTOOL_FEC_RS = common dso_local global i32 0, align 4
@ETHTOOL_FEC_OFF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_TOPO_CAP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_EN_AUTO_FEC = common dso_local global i32 0, align 4
@ETHTOOL_FEC_AUTO = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_KR_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_528_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_544_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @ice_get_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_fecparam*, align 8
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %8 = alloca %struct.ice_link_status*, align 8
  %9 = alloca %struct.ice_vsi*, align 8
  %10 = alloca %struct.ice_port_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.ice_netdev_priv* %14, %struct.ice_netdev_priv** %6, align 8
  %15 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %16 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %15, i32 0, i32 0
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %16, align 8
  store %struct.ice_vsi* %17, %struct.ice_vsi** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 1
  %20 = load %struct.ice_port_info*, %struct.ice_port_info** %19, align 8
  store %struct.ice_port_info* %20, %struct.ice_port_info** %10, align 8
  %21 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %22 = icmp ne %struct.ice_port_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %165

26:                                               ; preds = %2
  %27 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %28 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.ice_link_status* %29, %struct.ice_link_status** %8, align 8
  %30 = load %struct.ice_link_status*, %struct.ice_link_status** %8, align 8
  %31 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 130, label %33
    i32 129, label %37
    i32 128, label %37
  ]

33:                                               ; preds = %26
  %34 = load i32, i32* @ETHTOOL_FEC_BASER, align 4
  %35 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %26, %26
  %38 = load i32, i32* @ETHTOOL_FEC_RS, align 4
  %39 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %26
  %42 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  %43 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37, %33
  %46 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %47 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32* %51, i32 8, i32 %52)
  store %struct.ice_aqc_get_phy_caps_data* %53, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %54 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %55 = icmp ne %struct.ice_aqc_get_phy_caps_data* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %165

59:                                               ; preds = %45
  %60 = load %struct.ice_port_info*, %struct.ice_port_info** %10, align 8
  %61 = load i32, i32* @ICE_AQC_REPORT_TOPO_CAP, align 4
  %62 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %63 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %60, i32 0, i32 %61, %struct.ice_aqc_get_phy_caps_data* %62, i32* null)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %155

69:                                               ; preds = %59
  %70 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %71 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ICE_AQC_PHY_EN_AUTO_FEC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @ETHTOOL_FEC_AUTO, align 4
  %78 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %84 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %82
  %90 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %91 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %89
  %97 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %98 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %105 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ICE_AQC_PHY_FEC_25G_KR_REQ, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103, %96, %89, %82
  %111 = load i32, i32* @ETHTOOL_FEC_BASER, align 4
  %112 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %103
  %117 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %118 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_528_REQ, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %116
  %124 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %125 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_544_REQ, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %132 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130, %123, %116
  %138 = load i32, i32* @ETHTOOL_FEC_RS, align 4
  %139 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %130
  %144 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %145 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  %150 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %151 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %143
  br label %155

155:                                              ; preds = %154, %66
  %156 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %157 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %7, align 8
  %163 = call i32 @devm_kfree(i32* %161, %struct.ice_aqc_get_phy_caps_data* %162)
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %155, %56, %23
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_aqc_get_phy_caps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
