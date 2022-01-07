; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.skge_port = type { i32, i32, i64, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @skge_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca %struct.skge_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.skge_port* @netdev_priv(%struct.net_device* %13)
  store %struct.skge_port* %14, %struct.skge_port** %6, align 8
  %15 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 4
  %17 = load %struct.skge_hw*, %struct.skge_hw** %16, align 8
  store %struct.skge_hw* %17, %struct.skge_hw** %7, align 8
  %18 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %19 = call i32 @skge_supported_modes(%struct.skge_hw* %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %10, i32 %23)
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AUTONEG_ENABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %34 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %36 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  br label %133

37:                                               ; preds = %2
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  switch i32 %42, label %112 [
    i32 128, label %43
    i32 129, label %66
    i32 130, label %89
  ]

43:                                               ; preds = %37
  %44 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DUPLEX_FULL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  store i32 %51, i32* %11, align 4
  br label %65

52:                                               ; preds = %43
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DUPLEX_HALF, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %159

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %50
  br label %115

66:                                               ; preds = %37
  %67 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DUPLEX_FULL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  store i32 %74, i32* %11, align 4
  br label %88

75:                                               ; preds = %66
  %76 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DUPLEX_HALF, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  store i32 %83, i32* %11, align 4
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %159

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %73
  br label %115

89:                                               ; preds = %37
  %90 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DUPLEX_FULL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  store i32 %97, i32* %11, align 4
  br label %111

98:                                               ; preds = %89
  %99 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DUPLEX_HALF, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  store i32 %106, i32* %11, align 4
  br label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %159

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %96
  br label %115

112:                                              ; preds = %37
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %159

115:                                              ; preds = %111, %88, %65
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %159

123:                                              ; preds = %115
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %126 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %128 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %132 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %123, %31
  %134 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %139 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %142 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load %struct.net_device*, %struct.net_device** %4, align 8
  %144 = call i64 @netif_running(%struct.net_device* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %133
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = call i32 @skge_down(%struct.net_device* %147)
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = call i32 @skge_up(%struct.net_device* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load %struct.net_device*, %struct.net_device** %4, align 8
  %155 = call i32 @dev_close(%struct.net_device* %154)
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %159

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %133
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %153, %120, %112, %107, %84, %61
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_supported_modes(%struct.skge_hw*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @skge_down(%struct.net_device*) #1

declare dso_local i32 @skge_up(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
