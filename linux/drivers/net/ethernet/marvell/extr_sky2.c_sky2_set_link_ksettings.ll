; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sky2_port = type { i32, i32, i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@SKY2_FLAG_AUTO_SPEED = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @sky2_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.sky2_port*, align 8
  %7 = alloca %struct.sky2_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %12)
  store %struct.sky2_port* %13, %struct.sky2_port** %6, align 8
  %14 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %15 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %14, i32 0, i32 4
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %15, align 8
  store %struct.sky2_hw* %16, %struct.sky2_hw** %7, align 8
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %18 = call i32 @sky2_supported_modes(%struct.sky2_hw* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %9, i32 %22)
  %24 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AUTONEG_ENABLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %181

39:                                               ; preds = %30
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %41 = call i64 @sky2_is_copper(%struct.sky2_hw* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ADVERTISED_TP, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %50 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %59

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %58 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %61 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %62 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %66 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %65, i32 0, i32 1
  store i32 -1, i32* %66, align 4
  %67 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %68 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %67, i32 0, i32 2
  store i32 -1, i32* %68, align 8
  br label %171

69:                                               ; preds = %2
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  switch i32 %74, label %144 [
    i32 128, label %75
    i32 129, label %98
    i32 130, label %121
  ]

75:                                               ; preds = %69
  %76 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DUPLEX_FULL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  store i32 %83, i32* %10, align 4
  br label %97

84:                                               ; preds = %75
  %85 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DUPLEX_HALF, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  store i32 %92, i32* %10, align 4
  br label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %181

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %82
  br label %147

98:                                               ; preds = %69
  %99 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DUPLEX_FULL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  store i32 %106, i32* %10, align 4
  br label %120

107:                                              ; preds = %98
  %108 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DUPLEX_HALF, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  store i32 %115, i32* %10, align 4
  br label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %181

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %105
  br label %147

121:                                              ; preds = %69
  %122 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %123 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DUPLEX_FULL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  store i32 %129, i32* %10, align 4
  br label %143

130:                                              ; preds = %121
  %131 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DUPLEX_HALF, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  store i32 %138, i32* %10, align 4
  br label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %181

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %128
  br label %147

144:                                              ; preds = %69
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %181

147:                                              ; preds = %143, %120, %97
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %181

155:                                              ; preds = %147
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %158 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %160 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %164 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %168 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %155, %59
  %172 = load %struct.net_device*, %struct.net_device** %4, align 8
  %173 = call i64 @netif_running(%struct.net_device* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %177 = call i32 @sky2_phy_reinit(%struct.sky2_port* %176)
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = call i32 @sky2_set_multicast(%struct.net_device* %178)
  br label %180

180:                                              ; preds = %175, %171
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %152, %144, %139, %116, %93, %36
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_supported_modes(%struct.sky2_hw*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i64 @sky2_is_copper(%struct.sky2_hw*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @sky2_phy_reinit(%struct.sky2_port*) #1

declare dso_local i32 @sky2_set_multicast(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
