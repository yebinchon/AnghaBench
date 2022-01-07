; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"Device is in Safe Mode - not enabling advanced netdev features\0A\00", align 1
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ice_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ice_netdev_priv* %10, %struct.ice_netdev_priv** %6, align 8
  %11 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %11, i32 0, i32 0
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  store %struct.ice_vsi* %13, %struct.ice_vsi** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i64 @ice_is_safe_mode(%struct.TYPE_4__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %154

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NETIF_F_RXHASH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NETIF_F_RXHASH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %42 = call i32 @ice_vsi_manage_rss_lut(%struct.ice_vsi* %41, i32 1)
  store i32 %42, i32* %8, align 4
  br label %59

43:                                               ; preds = %33, %28
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NETIF_F_RXHASH, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NETIF_F_RXHASH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %57 = call i32 @ice_vsi_manage_rss_lut(%struct.ice_vsi* %56, i32 0)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %48, %43
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %73 = call i32 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi* %72, i32 1)
  store i32 %73, i32* %8, align 4
  br label %90

74:                                               ; preds = %64, %59
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %88 = call i32 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi* %87, i32 0)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %79, %74
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %104 = call i32 @ice_vsi_manage_vlan_insertion(%struct.ice_vsi* %103)
  store i32 %104, i32* %8, align 4
  br label %121

105:                                              ; preds = %95, %90
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %105
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %119 = call i32 @ice_vsi_manage_vlan_insertion(%struct.ice_vsi* %118)
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %110, %105
  br label %121

121:                                              ; preds = %120, %102
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %135 = call i32 @ice_cfg_vlan_pruning(%struct.ice_vsi* %134, i32 1, i32 0)
  store i32 %135, i32* %8, align 4
  br label %152

136:                                              ; preds = %126, %121
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %136
  %142 = load %struct.net_device*, %struct.net_device** %4, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %150 = call i32 @ice_cfg_vlan_pruning(%struct.ice_vsi* %149, i32 0, i32 0)
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %148, %141, %136
  br label %152

152:                                              ; preds = %151, %133
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ice_is_safe_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ice_vsi_manage_rss_lut(%struct.ice_vsi*, i32) #1

declare dso_local i32 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi*, i32) #1

declare dso_local i32 @ice_vsi_manage_vlan_insertion(%struct.ice_vsi*) #1

declare dso_local i32 @ice_cfg_vlan_pruning(%struct.ice_vsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
