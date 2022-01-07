; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.e1000_adapter = type { i64, %struct.TYPE_4__, i32, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { i64, i32, i32, i64, i32 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@ETH_TP_MDI_X = common dso_local global i32 0, align 4
@ETH_TP_MDI = common dso_local global i32 0, align 4
@ETH_TP_MDI_INVALID = common dso_local global i32 0, align 4
@AUTO_ALL_MODES = common dso_local global i64 0, align 8
@ETH_TP_MDI_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @e1000_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.e1000_adapter* %10, %struct.e1000_adapter** %5, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 3
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_media_type_copper, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %20 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SUPPORTED_TP, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ADVERTISED_TP, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %18
  %38 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %37, %18
  %47 = load i32, i32* @PORT_TP, align 4
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 4
  br label %72

57:                                               ; preds = %2
  %58 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %59 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %64 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @PORT_FIBRE, align 4
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %57, %46
  %73 = load i32, i32* @STATUS, align 4
  %74 = call i32 @er32(i32 %73)
  %75 = load i32, i32* @E1000_STATUS_LU, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %72
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %80 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %80, i32 0, i32 2
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %83 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %82, i32 0, i32 0
  %84 = call i32 @e1000_get_speed_and_duplex(%struct.e1000_hw* %79, i32* %81, i64* %83)
  %85 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 4
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @FULL_DUPLEX, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %78
  %97 = load i32, i32* @DUPLEX_FULL, align 4
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 8
  br label %106

101:                                              ; preds = %78
  %102 = load i32, i32* @DUPLEX_HALF, align 4
  %103 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %104 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %96
  br label %116

107:                                              ; preds = %72
  %108 = load i32, i32* @SPEED_UNKNOWN, align 4
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %113 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %114 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %107, %106
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @e1000_media_type_fiber, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122, %116
  %128 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %134 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 4
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %137 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @e1000_media_type_copper, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %131
  %142 = load %struct.net_device*, %struct.net_device** %3, align 8
  %143 = call i64 @netif_carrier_ok(%struct.net_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %147 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @ETH_TP_MDI_X, align 4
  br label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @ETH_TP_MDI, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %158 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 8
  br label %165

160:                                              ; preds = %141, %131
  %161 = load i32, i32* @ETH_TP_MDI_INVALID, align 4
  %162 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %163 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %167 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AUTO_ALL_MODES, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i64, i64* @ETH_TP_MDI_AUTO, align 8
  %173 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %174 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  store i64 %172, i64* %175, align 8
  br label %183

176:                                              ; preds = %165
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %178 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %181 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i64 %179, i64* %182, align 8
  br label %183

183:                                              ; preds = %176, %171
  %184 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %185 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %187, i32 %188)
  %190 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %191 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %193, i32 %194)
  ret i32 0
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_get_speed_and_duplex(%struct.e1000_hw*, i32*, i64*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
