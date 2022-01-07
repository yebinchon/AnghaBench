; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_keystone_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_keystone_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.netcp_intf = type { i32 }
%struct.gbe_intf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i64 0, align 8
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_AUI = common dso_local global i64 0, align 8
@ADVERTISED_AUI = common dso_local global i32 0, align 4
@PORT_BNC = common dso_local global i64 0, align 8
@ADVERTISED_BNC = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i64 0, align 8
@ADVERTISED_MII = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i64 0, align 8
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @keystone_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.netcp_intf*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca %struct.gbe_intf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %13)
  store %struct.netcp_intf* %14, %struct.netcp_intf** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.phy_device*, %struct.phy_device** %16, align 8
  store %struct.phy_device* %17, %struct.phy_device** %7, align 8
  %18 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %10, i32 %25)
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %11, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %36 = icmp ne %struct.phy_device* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %134

40:                                               ; preds = %2
  %41 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %42 = call %struct.gbe_intf* @keystone_get_intf_data(%struct.netcp_intf* %41)
  store %struct.gbe_intf* %42, %struct.gbe_intf** %8, align 8
  %43 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %44 = icmp ne %struct.gbe_intf* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %134

48:                                               ; preds = %40
  %49 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %50 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %134

56:                                               ; preds = %48
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %59 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %57, %62
  br i1 %63, label %64, label %125

64:                                               ; preds = %56
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @PORT_TP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @ADVERTISED_TP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %134

76:                                               ; preds = %68, %64
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @PORT_AUI, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @ADVERTISED_AUI, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %134

88:                                               ; preds = %80, %76
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @PORT_BNC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @ADVERTISED_BNC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %134

100:                                              ; preds = %92, %88
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @PORT_MII, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @ADVERTISED_MII, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %134

112:                                              ; preds = %104, %100
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @PORT_FIBRE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %134

124:                                              ; preds = %116, %112
  br label %125

125:                                              ; preds = %124, %56
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.gbe_intf*, %struct.gbe_intf** %8, align 8
  %128 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i64 %126, i64* %130, align 8
  %131 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %132 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %133 = call i32 @phy_ethtool_ksettings_set(%struct.phy_device* %131, %struct.ethtool_link_ksettings* %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %125, %121, %109, %97, %85, %73, %53, %45, %37
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local %struct.gbe_intf* @keystone_get_intf_data(%struct.netcp_intf*) #1

declare dso_local i32 @phy_ethtool_ksettings_set(%struct.phy_device*, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
