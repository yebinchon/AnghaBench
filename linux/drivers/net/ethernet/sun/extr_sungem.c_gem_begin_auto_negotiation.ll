; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_begin_auto_negotiation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_begin_auto_negotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, i32, i32, i64, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32)* }
%struct.ethtool_link_ksettings = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@phy_mii_mdio0 = common dso_local global i64 0, align 8
@phy_mii_mdio1 = common dso_local global i64 0, align 8
@ADVERTISE_MASK = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@link_aneg = common dso_local global i32 0, align 4
@link_force_ok = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*, %struct.ethtool_link_ksettings*)* @gem_begin_auto_negotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_begin_auto_negotiation(%struct.gem* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.gem*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %12 = icmp ne %struct.ethtool_link_ksettings* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %10, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.gem*, %struct.gem** %3, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @phy_mii_mdio0, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.gem*, %struct.gem** %3, align 8
  %27 = getelementptr inbounds %struct.gem, %struct.gem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @phy_mii_mdio1, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %217

32:                                               ; preds = %25, %19
  %33 = load %struct.gem*, %struct.gem** %3, align 8
  %34 = call i64 @found_mii_phy(%struct.gem* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.gem*, %struct.gem** %3, align 8
  %38 = getelementptr inbounds %struct.gem, %struct.gem* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ADVERTISE_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.gem*, %struct.gem** %3, align 8
  %49 = getelementptr inbounds %struct.gem, %struct.gem* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.gem*, %struct.gem** %3, align 8
  %55 = getelementptr inbounds %struct.gem, %struct.gem* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %53, %44
  %61 = load %struct.gem*, %struct.gem** %3, align 8
  %62 = getelementptr inbounds %struct.gem, %struct.gem* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.gem*, %struct.gem** %3, align 8
  %65 = getelementptr inbounds %struct.gem, %struct.gem* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.gem*, %struct.gem** %3, align 8
  %69 = getelementptr inbounds %struct.gem, %struct.gem* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %73 = icmp ne %struct.ethtool_link_ksettings* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %94

75:                                               ; preds = %60
  %76 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %77 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AUTONEG_ENABLE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %93

84:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  %85 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %8, align 4
  %89 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %84, %82
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @SPEED_1000, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %107 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @SPEED_100, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %111, %104, %100
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SPEED_100, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %120 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* @SPEED_10, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %117, %113
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @DUPLEX_FULL, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %133 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %131, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %139, %130, %126
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @SPEED_10, align 4
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %144, %141
  %147 = load %struct.gem*, %struct.gem** %3, align 8
  %148 = getelementptr inbounds %struct.gem, %struct.gem* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @netif_device_present(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.gem*, %struct.gem** %3, align 8
  %155 = getelementptr inbounds %struct.gem, %struct.gem* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.gem*, %struct.gem** %3, align 8
  %157 = getelementptr inbounds %struct.gem, %struct.gem* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  store i32 %153, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.gem*, %struct.gem** %3, align 8
  %161 = getelementptr inbounds %struct.gem, %struct.gem* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.gem*, %struct.gem** %3, align 8
  %165 = getelementptr inbounds %struct.gem, %struct.gem* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  br label %229

167:                                              ; preds = %146
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.gem*, %struct.gem** %3, align 8
  %170 = getelementptr inbounds %struct.gem, %struct.gem* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %167
  %174 = load %struct.gem*, %struct.gem** %3, align 8
  %175 = call i64 @found_mii_phy(%struct.gem* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load %struct.gem*, %struct.gem** %3, align 8
  %179 = getelementptr inbounds %struct.gem, %struct.gem* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %184, align 8
  %186 = load %struct.gem*, %struct.gem** %3, align 8
  %187 = getelementptr inbounds %struct.gem, %struct.gem* %186, i32 0, i32 5
  %188 = load i32, i32* %5, align 4
  %189 = call i32 %185(%struct.TYPE_11__* %187, i32 %188)
  br label %190

190:                                              ; preds = %177, %173
  %191 = load i32, i32* @link_aneg, align 4
  %192 = load %struct.gem*, %struct.gem** %3, align 8
  %193 = getelementptr inbounds %struct.gem, %struct.gem* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  br label %216

194:                                              ; preds = %167
  %195 = load %struct.gem*, %struct.gem** %3, align 8
  %196 = call i64 @found_mii_phy(%struct.gem* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load %struct.gem*, %struct.gem** %3, align 8
  %200 = getelementptr inbounds %struct.gem, %struct.gem* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %205, align 8
  %207 = load %struct.gem*, %struct.gem** %3, align 8
  %208 = getelementptr inbounds %struct.gem, %struct.gem* %207, i32 0, i32 5
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %9, align 4
  %211 = call i32 %206(%struct.TYPE_11__* %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %198, %194
  %213 = load i32, i32* @link_force_ok, align 4
  %214 = load %struct.gem*, %struct.gem** %3, align 8
  %215 = getelementptr inbounds %struct.gem, %struct.gem* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %212, %190
  br label %217

217:                                              ; preds = %216, %31
  %218 = load %struct.gem*, %struct.gem** %3, align 8
  %219 = getelementptr inbounds %struct.gem, %struct.gem* %218, i32 0, i32 3
  store i64 0, i64* %219, align 8
  %220 = load %struct.gem*, %struct.gem** %3, align 8
  %221 = getelementptr inbounds %struct.gem, %struct.gem* %220, i32 0, i32 2
  %222 = load i64, i64* @jiffies, align 8
  %223 = load i32, i32* @HZ, align 4
  %224 = mul nsw i32 12, %223
  %225 = sdiv i32 %224, 10
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %222, %226
  %228 = call i32 @mod_timer(i32* %221, i64 %227)
  br label %229

229:                                              ; preds = %217, %152
  ret void
}

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i64 @found_mii_phy(%struct.gem*) #1

declare dso_local i32 @netif_device_present(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
