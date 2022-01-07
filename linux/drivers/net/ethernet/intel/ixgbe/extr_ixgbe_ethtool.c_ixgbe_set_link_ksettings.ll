; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_7__ = type { i64, i32, i64 }

@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10_FULL = common dso_local global i32 0, align 4
@__IXGBE_IN_SFP_INIT = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"setup link failed with code %d\0A\00", align 1
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ixgbe_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ixgbe_adapter* %15, %struct.ixgbe_adapter** %6, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %11, i32 %21)
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %12, i32 %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ixgbe_media_type_copper, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %159

40:                                               ; preds = %34, %2
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %191

49:                                               ; preds = %40
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %49
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %64 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %65 = or i32 %63, %64
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %191

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %55, %49
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %191

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %124, %117
  %119 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %120 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %120, i32 0, i32 0
  %122 = call i64 @test_and_set_bit(i32 %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %118

126:                                              ; preds = %118
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %131 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %133, align 8
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %136 = bitcast %struct.ixgbe_hw* %135 to %struct.ixgbe_hw.0*
  %137 = load i32, i32* %8, align 4
  %138 = call i32 %134(%struct.ixgbe_hw.0* %136, i32 %137, i32 1)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %126
  %142 = load i32, i32* @probe, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @e_info(i32 %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %146 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %148, align 8
  %150 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %151 = bitcast %struct.ixgbe_hw* %150 to %struct.ixgbe_hw.0*
  %152 = load i32, i32* %9, align 4
  %153 = call i32 %149(%struct.ixgbe_hw.0* %151, i32 %152, i32 1)
  br label %154

154:                                              ; preds = %141, %126
  %155 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %156 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %157 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %156, i32 0, i32 0
  %158 = call i32 @clear_bit(i32 %155, i32* %157)
  br label %189

159:                                              ; preds = %34
  %160 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %161 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %13, align 4
  %164 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %165 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AUTONEG_ENABLE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %185, label %170

170:                                              ; preds = %159
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %185, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %177 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %175, %179
  %181 = load i32, i32* @SPEED_10000, align 4
  %182 = load i32, i32* @DUPLEX_FULL, align 4
  %183 = add nsw i32 %181, %182
  %184 = icmp ne i32 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %174, %170, %159
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %191

188:                                              ; preds = %174
  br label %189

189:                                              ; preds = %188, %154
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %185, %115, %67, %46
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_info(i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
