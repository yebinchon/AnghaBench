; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_rtl8150_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_rtl8150_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SUPPORTED_10baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i64 0, align 8
@SUPPORTED_TP = common dso_local global i64 0, align 8
@SUPPORTED_MII = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i32 0, align 4
@BMCR = common dso_local global i32 0, align 4
@ANLP = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i16 0, align 2
@LPA_100HALF = common dso_local global i16 0, align 2
@LPA_100FULL = common dso_local global i16 0, align 2
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LPA_10FULL = common dso_local global i16 0, align 2
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i16 0, align 2
@BMCR_FULLDPLX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @rtl8150_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8150_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.TYPE_8__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load i64, i64* @SUPPORTED_10baseT_Half, align 8
  %13 = load i64, i64* @SUPPORTED_10baseT_Full, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @SUPPORTED_100baseT_Half, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @SUPPORTED_100baseT_Full, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @SUPPORTED_Autoneg, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @SUPPORTED_TP, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @SUPPORTED_MII, align 8
  %24 = or i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @PORT_TP, align 4
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = load i32, i32* @BMCR, align 4
  %37 = call i32 @get_registers(%struct.TYPE_8__* %35, i32 %36, i32 2, i16* %7)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = load i32, i32* @ANLP, align 4
  %40 = call i32 @get_registers(%struct.TYPE_8__* %38, i32 %39, i32 2, i16* %6)
  %41 = load i16, i16* %7, align 2
  %42 = sext i16 %41 to i32
  %43 = load i16, i16* @BMCR_ANENABLE, align 2
  %44 = sext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %107

47:                                               ; preds = %2
  %48 = load i16, i16* %6, align 2
  %49 = sext i16 %48 to i32
  %50 = load i16, i16* @LPA_100HALF, align 2
  %51 = sext i16 %50 to i32
  %52 = load i16, i16* @LPA_100FULL, align 2
  %53 = sext i16 %52 to i32
  %54 = or i32 %51, %53
  %55 = and i32 %49, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i64, i64* @SPEED_100, align 8
  br label %61

59:                                               ; preds = %47
  %60 = load i64, i64* @SPEED_10, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* @AUTONEG_ENABLE, align 4
  %68 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @SPEED_100, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %61
  %75 = load i16, i16* %6, align 2
  %76 = sext i16 %75 to i32
  %77 = load i16, i16* @LPA_100FULL, align 2
  %78 = sext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %85

83:                                               ; preds = %74
  %84 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  br label %106

90:                                               ; preds = %61
  %91 = load i16, i16* %6, align 2
  %92 = sext i16 %91 to i32
  %93 = load i16, i16* @LPA_10FULL, align 2
  %94 = sext i16 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %101

99:                                               ; preds = %90
  %100 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i8* [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %104 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  br label %106

106:                                              ; preds = %101, %85
  br label %142

107:                                              ; preds = %2
  %108 = load i32, i32* @AUTONEG_DISABLE, align 4
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load i16, i16* %7, align 2
  %113 = sext i16 %112 to i32
  %114 = load i16, i16* @BMCR_SPEED100, align 2
  %115 = sext i16 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i64, i64* @SPEED_100, align 8
  br label %122

120:                                              ; preds = %107
  %121 = load i64, i64* @SPEED_10, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i64 [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %125 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i64 %123, i64* %126, align 8
  %127 = load i16, i16* %7, align 2
  %128 = sext i16 %127 to i32
  %129 = load i16, i16* @BMCR_FULLDPLX, align 2
  %130 = sext i16 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %137

135:                                              ; preds = %122
  %136 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i8* [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %140 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  br label %142

142:                                              ; preds = %137, %106
  %143 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %144 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %146, i64 %147)
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_registers(%struct.TYPE_8__*, i32, i32, i16*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
