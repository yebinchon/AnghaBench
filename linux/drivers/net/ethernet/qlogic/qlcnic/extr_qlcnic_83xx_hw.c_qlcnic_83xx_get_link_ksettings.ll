; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@__QLCNIC_MAINTENANCE_MODE = common dso_local global i32 0, align 4
@QLCNIC_BRDTYPE_83XX_10G = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@QLC_83XX_10_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_100_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_1G_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_10G_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_get_link_ksettings(%struct.qlcnic_adapter* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @__QLCNIC_MAINTENANCE_MODE, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = call i32 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = call i32 @qlcnic_83xx_test_link(%struct.qlcnic_adapter* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @QLC_83XX_SFP_MODULE_TYPE(i32 %23)
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %18, %2
  %28 = load i32, i32* @QLCNIC_BRDTYPE_83XX_10G, align 4
  %29 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %30 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @netif_running(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %27
  %37 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %38 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %43 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  %54 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %55 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  br label %73

60:                                               ; preds = %36, %27
  %61 = load i32, i32* @SPEED_UNKNOWN, align 4
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @AUTONEG_DISABLE, align 4
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %41
  %74 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %75 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %9, i32 %86)
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AUTONEG_ENABLE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %150

94:                                               ; preds = %73
  %95 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %96 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @QLC_83XX_10_CAPABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %107 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @QLC_83XX_100_CAPABLE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %112, %105
  %117 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %118 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @QLC_83XX_1G_CAPABLE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %129 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @QLC_83XX_10G_CAPABLE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %134, %127
  %139 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %140 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @QLC_83XX_AUTONEG_ENABLE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %147 = load i32, i32* %9, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %145, %138
  br label %164

150:                                              ; preds = %73
  %151 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %152 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %162 [
    i32 131, label %154
    i32 130, label %156
    i32 129, label %158
    i32 128, label %160
  ]

154:                                              ; preds = %150
  %155 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  store i32 %155, i32* %9, align 4
  br label %163

156:                                              ; preds = %150
  %157 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  store i32 %157, i32* %9, align 4
  br label %163

158:                                              ; preds = %150
  %159 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  store i32 %159, i32* %9, align 4
  br label %163

160:                                              ; preds = %150
  %161 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  store i32 %161, i32* %9, align 4
  br label %163

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162, %160, %158, %156, %154
  br label %164

164:                                              ; preds = %163, %149
  %165 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %166 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %198 [
    i32 133, label %168
    i32 132, label %178
    i32 134, label %188
  ]

168:                                              ; preds = %164
  %169 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %176 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  store i32 133, i32* %177, align 4
  br label %209

178:                                              ; preds = %164
  %179 = load i32, i32* @SUPPORTED_TP, align 4
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* @ADVERTISED_TP, align 4
  %183 = load i32, i32* %9, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %9, align 4
  %185 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %186 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  store i32 132, i32* %187, align 4
  br label %209

188:                                              ; preds = %164
  %189 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %193 = load i32, i32* %9, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %9, align 4
  %195 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %196 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  store i32 134, i32* %197, align 4
  br label %209

198:                                              ; preds = %164
  %199 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %200 = load i32, i32* %8, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %203 = load i32, i32* %9, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* @PORT_OTHER, align 4
  %206 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %207 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %198, %188, %178, %168
  %210 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %211 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %214 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  store i32 %212, i32* %215, align 4
  %216 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %217 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %219, i32 %220)
  %222 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %223 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %225, i32 %226)
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_test_link(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLC_83XX_SFP_MODULE_TYPE(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
