; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c___e1000_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c___e1000_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.pci_dev* }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_ADVD3WUC = common dso_local global i32 0, align 4
@FLAG2_HAS_PHY_WAKEUP = common dso_local global i32 0, align 4
@E1000_CTRL_EN_PHY_PWR_MGMT = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP3_DATA = common dso_local global i32 0, align 4
@FLAG_IS_ICH = common dso_local global i32 0, align 4
@WUFC = common dso_local global i32 0, align 4
@WUC = common dso_local global i32 0, align 4
@E1000_WUC_PME_EN = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@e1000_pch_lpt = common dso_local global i64 0, align 8
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@E1000_WUFC_BC = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@I82579_LPI_CTRL = common dso_local global i32 0, align 4
@I82579_EEE_100_SUPPORTED = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_100_ENABLE = common dso_local global i32 0, align 4
@I82579_EEE_1000_SUPPORTED = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_1000_ENABLE = common dso_local global i32 0, align 4
@FLAG_IS_QUAD_PORT = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_CERE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @__e1000_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__e1000_shutdown(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %18)
  store %struct.net_device* %19, %struct.net_device** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %20)
  store %struct.e1000_adapter* %21, %struct.e1000_adapter** %7, align 8
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 4
  store %struct.e1000_hw* %23, %struct.e1000_hw** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @E1000_WUFC_LNKC, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load i32, i32* @STATUS, align 4
  %35 = call i32 @er32(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @E1000_STATUS_LU, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %40, %32
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %151

48:                                               ; preds = %45
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %50 = call i32 @e1000_setup_rctl(%struct.e1000_adapter* %49)
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = call i32 @e1000e_set_rx_mode(%struct.net_device* %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @E1000_WUFC_MC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load i32, i32* @RCTL, align 4
  %59 = call i32 @er32(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @E1000_RCTL_MPE, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* @RCTL, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ew32(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %48
  %67 = load i32, i32* @CTRL, align 4
  %68 = call i32 @er32(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @E1000_CTRL_ADVD3WUC, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FLAG2_HAS_PHY_WAKEUP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @E1000_CTRL_EN_PHY_PWR_MGMT, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %66
  %83 = load i32, i32* @CTRL, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ew32(i32 %83, i32 %84)
  %86 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_media_type_fiber, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %82
  %94 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %95 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %93, %82
  %102 = load i32, i32* @CTRL_EXT, align 4
  %103 = call i32 @er32(i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* @E1000_CTRL_EXT_SDP3_DATA, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* @CTRL_EXT, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @ew32(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %93
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %115 = call i32 @e1000e_power_up_phy(%struct.e1000_adapter* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %118 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FLAG_IS_ICH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %125 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %124, i32 0, i32 4
  %126 = call i32 @e1000_suspend_workarounds_ich8lan(%struct.e1000_hw* %125)
  br label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %129 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FLAG2_HAS_PHY_WAKEUP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @e1000_init_phy_wakeup(%struct.e1000_adapter* %135, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %3, align 4
  br label %325

142:                                              ; preds = %134
  br label %150

143:                                              ; preds = %127
  %144 = load i32, i32* @WUFC, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @ew32(i32 %144, i32 %145)
  %147 = load i32, i32* @WUC, align 4
  %148 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %149 = call i32 @ew32(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %142
  br label %158

151:                                              ; preds = %45
  %152 = load i32, i32* @WUC, align 4
  %153 = call i32 @ew32(i32 %152, i32 0)
  %154 = load i32, i32* @WUFC, align 4
  %155 = call i32 @ew32(i32 %154, i32 0)
  %156 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %157 = call i32 @e1000_power_down_phy(%struct.e1000_adapter* %156)
  br label %158

158:                                              ; preds = %151, %150
  %159 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %160 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @e1000_phy_igp_3, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %168 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %167, i32 0, i32 4
  %169 = call i32 @e1000e_igp3_phy_powerdown_workaround_ich8lan(%struct.e1000_hw* %168)
  br label %200

170:                                              ; preds = %158
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %172 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @e1000_pch_lpt, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %199

177:                                              ; preds = %170
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* @E1000_WUFC_EX, align 4
  %180 = load i32, i32* @E1000_WUFC_MC, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @E1000_WUFC_BC, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %178, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %177
  %187 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @e1000_enable_ulp_lpt_lp(%struct.e1000_hw* %187, i32 %191)
  store i32 %192, i32* %14, align 4
  br label %193

193:                                              ; preds = %186, %177
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %3, align 4
  br label %325

198:                                              ; preds = %193
  br label %199

199:                                              ; preds = %198, %170
  br label %200

200:                                              ; preds = %199, %166
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %202 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @e1000_phy_i217, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %285

207:                                              ; preds = %200
  %208 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %209 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %285

212:                                              ; preds = %207
  %213 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %214 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %285

219:                                              ; preds = %212
  store i32 0, i32* %15, align 4
  %220 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %221 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %223, align 8
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %226 = bitcast %struct.e1000_hw* %225 to %struct.e1000_hw.0*
  %227 = call i32 %224(%struct.e1000_hw.0* %226)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %276, label %230

230:                                              ; preds = %219
  %231 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %232 = load i32, i32* @I82579_LPI_CTRL, align 4
  %233 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %231, i32 %232, i32* %15)
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %14, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %275, label %236

236:                                              ; preds = %230
  %237 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %238 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %241 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %239, %244
  %246 = load i32, i32* @I82579_EEE_100_SUPPORTED, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %236
  %250 = load i32, i32* @I82579_LPI_CTRL_100_ENABLE, align 4
  %251 = load i32, i32* %15, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %15, align 4
  br label %253

253:                                              ; preds = %249, %236
  %254 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %255 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %258 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %256, %261
  %263 = load i32, i32* @I82579_EEE_1000_SUPPORTED, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %253
  %267 = load i32, i32* @I82579_LPI_CTRL_1000_ENABLE, align 4
  %268 = load i32, i32* %15, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %15, align 4
  br label %270

270:                                              ; preds = %266, %253
  %271 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %272 = load i32, i32* @I82579_LPI_CTRL, align 4
  %273 = load i32, i32* %15, align 4
  %274 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %271, i32 %272, i32 %273)
  store i32 %274, i32* %14, align 4
  br label %275

275:                                              ; preds = %270, %230
  br label %276

276:                                              ; preds = %275, %219
  %277 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %278 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %280, align 8
  %282 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %283 = bitcast %struct.e1000_hw* %282 to %struct.e1000_hw.1*
  %284 = call i32 %281(%struct.e1000_hw.1* %283)
  br label %285

285:                                              ; preds = %276, %212, %207, %200
  %286 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %287 = call i32 @e1000e_release_hw_control(%struct.e1000_adapter* %286)
  %288 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %289 = call i32 @pci_clear_master(%struct.pci_dev* %288)
  %290 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %291 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @FLAG_IS_QUAD_PORT, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %324

296:                                              ; preds = %285
  %297 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %298 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %297, i32 0, i32 0
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load %struct.pci_dev*, %struct.pci_dev** %300, align 8
  store %struct.pci_dev* %301, %struct.pci_dev** %16, align 8
  %302 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %303 = icmp ne %struct.pci_dev* %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %296
  store i32 0, i32* %3, align 4
  br label %325

305:                                              ; preds = %296
  %306 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %307 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %308 = call i32 @pcie_capability_read_word(%struct.pci_dev* %306, i32 %307, i32* %17)
  %309 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %310 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %311 = load i32, i32* %17, align 4
  %312 = load i32, i32* @PCI_EXP_DEVCTL_CERE, align 4
  %313 = xor i32 %312, -1
  %314 = and i32 %311, %313
  %315 = call i32 @pcie_capability_write_word(%struct.pci_dev* %309, i32 %310, i32 %314)
  %316 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %317 = call i32 @pci_save_state(%struct.pci_dev* %316)
  %318 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %319 = call i32 @pci_prepare_to_sleep(%struct.pci_dev* %318)
  %320 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %321 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %322 = load i32, i32* %17, align 4
  %323 = call i32 @pcie_capability_write_word(%struct.pci_dev* %320, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %305, %285
  store i32 0, i32* %3, align 4
  br label %325

325:                                              ; preds = %324, %304, %196, %140
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_setup_rctl(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_power_up_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_suspend_workarounds_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_phy_wakeup(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @e1000_power_down_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_igp3_phy_powerdown_workaround_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_enable_ulp_lpt_lp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000e_release_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_prepare_to_sleep(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
