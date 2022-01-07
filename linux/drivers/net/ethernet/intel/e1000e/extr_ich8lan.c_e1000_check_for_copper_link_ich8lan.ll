; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_check_for_copper_link_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_check_for_copper_link_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_12__, %struct.e1000_mac_info, %struct.TYPE_9__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.3*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_mac_info = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 (%struct.e1000_hw.4*)* }
%struct.e1000_hw.4 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@e1000_pch_spt = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@I82579_RX_CONFIG = common dso_local global i64 0, align 8
@I217_RX_CONFIG = common dso_local global i64 0, align 8
@e1000_pch_lpt = common dso_local global i32 0, align 4
@I217_PLL_CLOCK_GATE_REG = common dso_local global i32 0, align 4
@I217_PLL_CLOCK_GATE_MASK = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@HV_PM_CTRL = common dso_local global i32 0, align 4
@HV_PM_CTRL_K1_CLK_REQ = common dso_local global i64 0, align 8
@FEXTNVM4 = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_8USEC = common dso_local global i32 0, align 4
@E1000_DEV_ID_PCH_LPTLP_I218_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM3 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V3 = common dso_local global i64 0, align 8
@FEXTNVM6 = common dso_local global i32 0, align 4
@PCIEANACFG = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_K1_OFF_ENABLE = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@HV_KMRN_FIFO_CTRLSTA = common dso_local global i32 0, align 4
@HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT = common dso_local global i32 0, align 4
@e1000_phy_82579 = common dso_local global i64 0, align 8
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_copper_link_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_copper_link_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 1
  store %struct.e1000_mac_info* %20, %struct.e1000_mac_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %21 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %523

26:                                               ; preds = %1
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = call i32 @e1000e_phy_has_link_generic(%struct.e1000_hw* %29, i32 1, i32 0, i32* %9)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %519

34:                                               ; preds = %26
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @e1000_k1_gig_workaround_hv(%struct.e1000_hw* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %519

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 129
  br i1 %53, label %54, label %297

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %297

57:                                               ; preds = %54
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = call i32 @e1000e_get_speed_and_duplex_copper(%struct.e1000_hw* %58, i64* %11, i64* %12)
  %60 = load i32, i32* @TIPG, align 4
  %61 = call i32 @er32(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @E1000_TIPG_IPGT_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @HALF_DUPLEX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @SPEED_10, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, 255
  store i32 %75, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %98

76:                                               ; preds = %69, %57
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @e1000_pch_spt, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @FULL_DUPLEX, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @SPEED_1000, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, 12
  store i32 %93, i32* %6, align 4
  store i64 1, i64* %8, align 8
  br label %97

94:                                               ; preds = %87, %83, %76
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, 8
  store i32 %96, i32* %6, align 4
  store i64 1, i64* %8, align 8
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %73
  %99 = load i32, i32* @TIPG, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ew32(i32 %99, i32 %100)
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %105, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = bitcast %struct.e1000_hw* %107 to %struct.e1000_hw.0*
  %109 = call i32 %106(%struct.e1000_hw.0* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %519

113:                                              ; preds = %98
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 129
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i64, i64* @I82579_RX_CONFIG, align 8
  store i64 %120, i64* %7, align 8
  br label %123

121:                                              ; preds = %113
  %122 = load i64, i64* @I217_RX_CONFIG, align 8
  store i64 %122, i64* %7, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @e1000_write_emi_reg_locked(%struct.e1000_hw* %124, i64 %125, i64 %126)
  store i32 %127, i32* %5, align 4
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @e1000_pch_lpt, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %188

134:                                              ; preds = %123
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = load i32, i32* @I217_PLL_CLOCK_GATE_REG, align 4
  %137 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %135, i32 %136, i64* %13)
  %138 = load i64, i64* @I217_PLL_CLOCK_GATE_MASK, align 8
  %139 = xor i64 %138, -1
  %140 = load i64, i64* %13, align 8
  %141 = and i64 %140, %139
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* @SPEED_100, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %134
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* @SPEED_10, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145, %134
  %150 = load i64, i64* %13, align 8
  %151 = or i64 %150, 1000
  store i64 %151, i64* %13, align 8
  br label %155

152:                                              ; preds = %145
  %153 = load i64, i64* %13, align 8
  %154 = or i64 %153, 250
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = load i32, i32* @I217_PLL_CLOCK_GATE_REG, align 4
  %158 = load i64, i64* %13, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %156, i32 %157, i32 %159)
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* @SPEED_1000, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %155
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %166 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 3
  %169 = load i32 (%struct.e1000_hw.3*, i32, i64*)*, i32 (%struct.e1000_hw.3*, i32, i64*)** %168, align 8
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %171 = bitcast %struct.e1000_hw* %170 to %struct.e1000_hw.3*
  %172 = load i32, i32* @HV_PM_CTRL, align 4
  %173 = call i32 %169(%struct.e1000_hw.3* %171, i32 %172, i64* %13)
  %174 = load i64, i64* @HV_PM_CTRL_K1_CLK_REQ, align 8
  %175 = load i64, i64* %13, align 8
  %176 = or i64 %175, %174
  store i64 %176, i64* %13, align 8
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %180, align 8
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %183 = bitcast %struct.e1000_hw* %182 to %struct.e1000_hw.2*
  %184 = load i32, i32* @HV_PM_CTRL, align 4
  %185 = load i64, i64* %13, align 8
  %186 = call i32 %181(%struct.e1000_hw.2* %183, i32 %184, i64 %185)
  br label %187

187:                                              ; preds = %164, %155
  br label %188

188:                                              ; preds = %187, %123
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %190 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %192, align 8
  %194 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %195 = bitcast %struct.e1000_hw* %194 to %struct.e1000_hw.1*
  %196 = call i32 %193(%struct.e1000_hw.1* %195)
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  br label %519

200:                                              ; preds = %188
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %202 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @e1000_pch_spt, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %207, label %296

207:                                              ; preds = %200
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* @SPEED_1000, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %267

211:                                              ; preds = %207
  %212 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %213 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %215, align 8
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %218 = bitcast %struct.e1000_hw* %217 to %struct.e1000_hw.0*
  %219 = call i32 %216(%struct.e1000_hw.0* %218)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %5, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  br label %519

223:                                              ; preds = %211
  %224 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %225 = call i32 @PHY_REG(i32 776, i32 20)
  %226 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %224, i32 %225, i64* %14)
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %223
  %230 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %231 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %233, align 8
  %235 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %236 = bitcast %struct.e1000_hw* %235 to %struct.e1000_hw.1*
  %237 = call i32 %234(%struct.e1000_hw.1* %236)
  br label %519

238:                                              ; preds = %223
  %239 = load i64, i64* %14, align 8
  %240 = and i64 %239, 4092
  %241 = ashr i64 %240, 2
  store i64 %241, i64* %15, align 8
  %242 = load i64, i64* %15, align 8
  %243 = icmp slt i64 %242, 24
  br i1 %243, label %244, label %254

244:                                              ; preds = %238
  %245 = load i64, i64* %14, align 8
  %246 = and i64 %245, -4093
  store i64 %246, i64* %14, align 8
  %247 = load i64, i64* %14, align 8
  %248 = or i64 %247, 96
  store i64 %248, i64* %14, align 8
  %249 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %250 = call i32 @PHY_REG(i32 776, i32 20)
  %251 = load i64, i64* %14, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %249, i32 %250, i32 %252)
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %244, %238
  %255 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %256 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %258, align 8
  %260 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %261 = bitcast %struct.e1000_hw* %260 to %struct.e1000_hw.1*
  %262 = call i32 %259(%struct.e1000_hw.1* %261)
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %254
  br label %519

266:                                              ; preds = %254
  br label %295

267:                                              ; preds = %207
  %268 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %269 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %271, align 8
  %273 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %274 = bitcast %struct.e1000_hw* %273 to %struct.e1000_hw.0*
  %275 = call i32 %272(%struct.e1000_hw.0* %274)
  store i32 %275, i32* %5, align 4
  %276 = load i32, i32* %5, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %267
  br label %519

279:                                              ; preds = %267
  %280 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %281 = call i32 @PHY_REG(i32 776, i32 20)
  %282 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %280, i32 %281, i32 49187)
  store i32 %282, i32* %5, align 4
  %283 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %284 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 1
  %287 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %286, align 8
  %288 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %289 = bitcast %struct.e1000_hw* %288 to %struct.e1000_hw.1*
  %290 = call i32 %287(%struct.e1000_hw.1* %289)
  %291 = load i32, i32* %5, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %279
  br label %519

294:                                              ; preds = %279
  br label %295

295:                                              ; preds = %294, %266
  br label %296

296:                                              ; preds = %295, %200
  br label %297

297:                                              ; preds = %296, %54, %48
  %298 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %299 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @e1000_pch_lpt, align 4
  %303 = icmp sge i32 %301, %302
  br i1 %303, label %304, label %317

304:                                              ; preds = %297
  %305 = load i32, i32* @FEXTNVM4, align 4
  %306 = call i32 @er32(i32 %305)
  store i32 %306, i32* %16, align 4
  %307 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_MASK, align 4
  %308 = xor i32 %307, -1
  %309 = load i32, i32* %16, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %16, align 4
  %311 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_8USEC, align 4
  %312 = load i32, i32* %16, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* @FEXTNVM4, align 4
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @ew32(i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %304, %297
  %318 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %319 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %318, i32 0, i32 3
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_LM, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %357, label %327

327:                                              ; preds = %317
  %328 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %329 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %328, i32 0, i32 3
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_V, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %357, label %337

337:                                              ; preds = %327
  %338 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %339 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %338, i32 0, i32 3
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM3, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %357, label %347

347:                                              ; preds = %337
  %348 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %349 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %348, i32 0, i32 3
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @E1000_DEV_ID_PCH_I218_V3, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %365

357:                                              ; preds = %347, %337, %327, %317
  %358 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %359 = load i32, i32* %9, align 4
  %360 = call i32 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw* %358, i32 %359)
  store i32 %360, i32* %5, align 4
  %361 = load i32, i32* %5, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %357
  br label %519

364:                                              ; preds = %357
  br label %365

365:                                              ; preds = %364, %347
  %366 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %367 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @e1000_pch_lpt, align 4
  %371 = icmp sge i32 %369, %370
  br i1 %371, label %372, label %380

372:                                              ; preds = %365
  %373 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %374 = load i32, i32* %9, align 4
  %375 = call i32 @e1000_platform_pm_pch_lpt(%struct.e1000_hw* %373, i32 %374)
  store i32 %375, i32* %5, align 4
  %376 = load i32, i32* %5, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %372
  br label %519

379:                                              ; preds = %372
  br label %380

380:                                              ; preds = %379, %365
  %381 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %382 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 0
  store i64 0, i64* %384, align 8
  %385 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %386 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @e1000_pch_lpt, align 4
  %390 = icmp sge i32 %388, %389
  br i1 %390, label %391, label %421

391:                                              ; preds = %380
  %392 = load i32, i32* @FEXTNVM6, align 4
  %393 = call i32 @er32(i32 %392)
  store i32 %393, i32* %17, align 4
  %394 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %395 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @e1000_pch_spt, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %417

400:                                              ; preds = %391
  %401 = load i32, i32* @PCIEANACFG, align 4
  %402 = call i32 @er32(i32 %401)
  store i32 %402, i32* %18, align 4
  %403 = load i32, i32* %18, align 4
  %404 = load i32, i32* @E1000_FEXTNVM6_K1_OFF_ENABLE, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %400
  %408 = load i32, i32* @E1000_FEXTNVM6_K1_OFF_ENABLE, align 4
  %409 = load i32, i32* %17, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %17, align 4
  br label %416

411:                                              ; preds = %400
  %412 = load i32, i32* @E1000_FEXTNVM6_K1_OFF_ENABLE, align 4
  %413 = xor i32 %412, -1
  %414 = load i32, i32* %17, align 4
  %415 = and i32 %414, %413
  store i32 %415, i32* %17, align 4
  br label %416

416:                                              ; preds = %411, %407
  br label %417

417:                                              ; preds = %416, %391
  %418 = load i32, i32* @FEXTNVM6, align 4
  %419 = load i32, i32* %17, align 4
  %420 = call i32 @ew32(i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %417, %380
  %422 = load i32, i32* %9, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %421
  br label %519

425:                                              ; preds = %421
  %426 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %427 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  switch i32 %429, label %477 [
    i32 129, label %430
    i32 128, label %438
  ]

430:                                              ; preds = %425
  %431 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %432 = call i32 @e1000_k1_workaround_lv(%struct.e1000_hw* %431)
  store i32 %432, i32* %5, align 4
  %433 = load i32, i32* %5, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %430
  %436 = load i32, i32* %5, align 4
  store i32 %436, i32* %2, align 4
  br label %523

437:                                              ; preds = %430
  br label %438

438:                                              ; preds = %425, %437
  %439 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %440 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @e1000_phy_82578, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %453

445:                                              ; preds = %438
  %446 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %447 = call i32 @e1000_link_stall_workaround_hv(%struct.e1000_hw* %446)
  store i32 %447, i32* %5, align 4
  %448 = load i32, i32* %5, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %445
  %451 = load i32, i32* %5, align 4
  store i32 %451, i32* %2, align 4
  br label %523

452:                                              ; preds = %445
  br label %453

453:                                              ; preds = %452, %438
  %454 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %455 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %456 = call i32 @e1e_rphy(%struct.e1000_hw* %454, i32 %455, i64* %10)
  %457 = load i64, i64* @HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK, align 8
  %458 = xor i64 %457, -1
  %459 = load i64, i64* %10, align 8
  %460 = and i64 %459, %458
  store i64 %460, i64* %10, align 8
  %461 = load i32, i32* @STATUS, align 4
  %462 = call i32 @er32(i32 %461)
  %463 = load i32, i32* @E1000_STATUS_FD, align 4
  %464 = and i32 %462, %463
  %465 = load i32, i32* @E1000_STATUS_FD, align 4
  %466 = icmp ne i32 %464, %465
  br i1 %466, label %467, label %472

467:                                              ; preds = %453
  %468 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT, align 4
  %469 = call i64 @BIT(i32 %468)
  %470 = load i64, i64* %10, align 8
  %471 = or i64 %470, %469
  store i64 %471, i64* %10, align 8
  br label %472

472:                                              ; preds = %467, %453
  %473 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %474 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %475 = load i64, i64* %10, align 8
  %476 = call i32 @e1e_wphy(%struct.e1000_hw* %473, i32 %474, i64 %475)
  br label %478

477:                                              ; preds = %425
  br label %478

478:                                              ; preds = %477, %472
  %479 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %480 = call i32 @e1000e_check_downshift(%struct.e1000_hw* %479)
  %481 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %482 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @e1000_phy_82579, align 8
  %486 = icmp sgt i64 %484, %485
  br i1 %486, label %487, label %495

487:                                              ; preds = %478
  %488 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %489 = call i32 @e1000_set_eee_pchlan(%struct.e1000_hw* %488)
  store i32 %489, i32* %5, align 4
  %490 = load i32, i32* %5, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %487
  %493 = load i32, i32* %5, align 4
  store i32 %493, i32* %2, align 4
  br label %523

494:                                              ; preds = %487
  br label %495

495:                                              ; preds = %494, %478
  %496 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %497 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %502 = sub nsw i32 0, %501
  store i32 %502, i32* %2, align 4
  br label %523

503:                                              ; preds = %495
  %504 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %505 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 0
  %507 = load i32 (%struct.e1000_hw.4*)*, i32 (%struct.e1000_hw.4*)** %506, align 8
  %508 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %509 = bitcast %struct.e1000_hw* %508 to %struct.e1000_hw.4*
  %510 = call i32 %507(%struct.e1000_hw.4* %509)
  %511 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %512 = call i32 @e1000e_config_fc_after_link_up(%struct.e1000_hw* %511)
  store i32 %512, i32* %5, align 4
  %513 = load i32, i32* %5, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %517

515:                                              ; preds = %503
  %516 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %517

517:                                              ; preds = %515, %503
  %518 = load i32, i32* %5, align 4
  store i32 %518, i32* %2, align 4
  br label %523

519:                                              ; preds = %424, %378, %363, %293, %278, %265, %229, %222, %199, %112, %46, %33
  %520 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %521 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %520, i32 0, i32 0
  store i32 1, i32* %521, align 8
  %522 = load i32, i32* %5, align 4
  store i32 %522, i32* %2, align 4
  br label %523

523:                                              ; preds = %519, %517, %500, %492, %450, %435, %25
  %524 = load i32, i32* %2, align 4
  ret i32 %524
}

declare dso_local i32 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000_k1_gig_workaround_hv(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000e_get_speed_and_duplex_copper(%struct.e1000_hw*, i64*, i64*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i64, i64) #1

declare dso_local i32 @e1e_rphy_locked(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i32 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_platform_pm_pch_lpt(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_k1_workaround_lv(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_link_stall_workaround_hv(%struct.e1000_hw*) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @e1000e_check_downshift(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_eee_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000e_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
