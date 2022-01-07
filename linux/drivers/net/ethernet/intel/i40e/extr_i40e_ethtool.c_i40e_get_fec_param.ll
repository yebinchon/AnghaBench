; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_fec_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_fec_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32, i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_aq_get_phy_abilities_resp = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_AUTO = common dso_local global i32 0, align 4
@ETHTOOL_FEC_AUTO = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_REQUEST_RS = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_ABILITY_RS = common dso_local global i32 0, align 4
@ETHTOOL_FEC_RS = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_REQUEST_KR = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_ABILITY_KR = common dso_local global i32 0, align 4
@ETHTOOL_FEC_BASER = common dso_local global i32 0, align 4
@ETHTOOL_FEC_OFF = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_KR_ENA = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_RS_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @i40e_get_fec_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_fec_param(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_fecparam*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.i40e_netdev_priv* %12, %struct.i40e_netdev_priv** %5, align 8
  %13 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %7, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 0
  store %struct.i40e_hw* %19, %struct.i40e_hw** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %20 = call i32 @memset(%struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 4)
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %22 = call i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %21, i32 0, i32 0, %struct.i40e_aq_get_phy_abilities_resp* %6, i32* null)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %120

28:                                               ; preds = %2
  %29 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I40E_AQ_SET_FEC_AUTO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* @ETHTOOL_FEC_AUTO, align 4
  %38 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %28
  %43 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I40E_AQ_SET_FEC_REQUEST_RS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I40E_AQ_SET_FEC_ABILITY_RS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @ETHTOOL_FEC_RS, align 4
  %56 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I40E_AQ_SET_FEC_REQUEST_KR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @I40E_AQ_SET_FEC_ABILITY_KR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @ETHTOOL_FEC_BASER, align 4
  %74 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  %84 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %78
  %89 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %90 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @I40E_AQ_CONFIG_FEC_KR_ENA, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @ETHTOOL_FEC_BASER, align 4
  %99 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %100 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %119

101:                                              ; preds = %88
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %103 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @I40E_AQ_CONFIG_FEC_RS_ENA, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load i32, i32* @ETHTOOL_FEC_RS, align 4
  %112 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %113 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %118

114:                                              ; preds = %101
  %115 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  %116 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %117 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %25
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.i40e_aq_get_phy_abilities_resp*, i32, i32) #1

declare dso_local i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw*, i32, i32, %struct.i40e_aq_get_phy_abilities_resp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
