; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.b44 = type { i32, i32 }

@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@B44_FLAG_FORCE_LINK = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @b44_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.b44*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.b44* @netdev_priv(%struct.net_device* %9)
  store %struct.b44* %10, %struct.b44** %6, align 8
  %11 = load %struct.b44*, %struct.b44** %6, align 8
  %12 = getelementptr inbounds %struct.b44, %struct.b44* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %29 = call i32 @phy_ethtool_ksettings_get(i32 %27, %struct.ethtool_link_ksettings* %28)
  store i32 0, i32* %3, align 4
  br label %180

30:                                               ; preds = %2
  %31 = load i32, i32* @SUPPORTED_Autoneg, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %33 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SUPPORTED_MII, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %43 = load %struct.b44*, %struct.b44** %6, align 8
  %44 = getelementptr inbounds %struct.b44, %struct.b44* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %30
  %54 = load %struct.b44*, %struct.b44** %6, align 8
  %55 = getelementptr inbounds %struct.b44, %struct.b44* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.b44*, %struct.b44** %6, align 8
  %66 = getelementptr inbounds %struct.b44, %struct.b44* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.b44*, %struct.b44** %6, align 8
  %77 = getelementptr inbounds %struct.b44, %struct.b44* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load i32, i32* @ADVERTISED_Pause, align 4
  %88 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.b44*, %struct.b44** %6, align 8
  %93 = getelementptr inbounds %struct.b44, %struct.b44* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i64, i64* @SPEED_100, align 8
  br label %102

100:                                              ; preds = %86
  %101 = load i64, i64* @SPEED_10, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i64 %103, i64* %106, align 8
  %107 = load %struct.b44*, %struct.b44** %6, align 8
  %108 = getelementptr inbounds %struct.b44, %struct.b44* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* @DUPLEX_FULL, align 4
  br label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @DUPLEX_HALF, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %123 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  store i64 0, i64* %124, align 8
  %125 = load %struct.b44*, %struct.b44** %6, align 8
  %126 = getelementptr inbounds %struct.b44, %struct.b44* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 8
  %131 = load %struct.b44*, %struct.b44** %6, align 8
  %132 = getelementptr inbounds %struct.b44, %struct.b44* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %117
  %138 = load i64, i64* @AUTONEG_DISABLE, align 8
  br label %141

139:                                              ; preds = %117
  %140 = load i64, i64* @AUTONEG_ENABLE, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i64 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %144 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i64 %142, i64* %145, align 8
  %146 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %147 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AUTONEG_ENABLE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %152, %141
  %157 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %158 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %160, i32 %161)
  %163 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %164 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %166, i32 %167)
  %169 = load %struct.net_device*, %struct.net_device** %4, align 8
  %170 = call i32 @netif_running(%struct.net_device* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %156
  %173 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %174 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %177 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i32 255, i32* %178, align 8
  br label %179

179:                                              ; preds = %172, %156
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %17
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @phy_ethtool_ksettings_get(i32, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
