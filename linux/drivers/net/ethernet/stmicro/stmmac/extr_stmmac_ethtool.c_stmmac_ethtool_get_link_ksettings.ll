; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.stmmac_priv = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rgmii_adv = type { i32, i32, i64, i64 }

@STMMAC_PCS_RGMII = common dso_local global i32 0, align 4
@STMMAC_PCS_SGMII = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@STMMAC_PCS_PAUSE = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@STMMAC_PCS_ASYM_PAUSE = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @stmmac_ethtool_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_ethtool_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca %struct.rgmii_adv, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.stmmac_priv* %12, %struct.stmmac_priv** %6, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STMMAC_PCS_RGMII, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STMMAC_PCS_SGMII, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %214

30:                                               ; preds = %21, %2
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @SPEED_UNKNOWN, align 4
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %220

45:                                               ; preds = %30
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %47 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @stmmac_pcs_get_adv_lp(%struct.stmmac_priv* %60, i32 %63, %struct.rgmii_adv* %7)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %220

69:                                               ; preds = %45
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %8, i32 %73)
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %9, i32 %78)
  %80 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %10, i32 %83)
  %85 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @STMMAC_PCS_PAUSE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %69
  %91 = load i32, i32* @ADVERTISED_Pause, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %69
  %95 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %7, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @STMMAC_PCS_ASYM_PAUSE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %7, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @STMMAC_PCS_PAUSE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @ADVERTISED_Pause, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %7, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @STMMAC_PCS_ASYM_PAUSE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %120, %114
  %125 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %126 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %7, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %124
  %142 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %143 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %150 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %171

156:                                              ; preds = %124
  %157 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %158 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %165 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %156, %141
  %172 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %7, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %177 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  br label %191

183:                                              ; preds = %171
  %184 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %185 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %183, %175
  %192 = load i32, i32* @PORT_OTHER, align 4
  %193 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %194 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 4
  %196 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %197 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %199, i32 %200)
  %202 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %203 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %205, i32 %206)
  %208 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %209 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %211, i32 %212)
  store i32 0, i32* %3, align 4
  br label %220

214:                                              ; preds = %21
  %215 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %216 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %219 = call i32 @phylink_ethtool_ksettings_get(i32 %217, %struct.ethtool_link_ksettings* %218)
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %214, %191, %66, %36
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @stmmac_pcs_get_adv_lp(%struct.stmmac_priv*, i32, %struct.rgmii_adv*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i32 @phylink_ethtool_ksettings_get(i32, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
