; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_copper_link_setup_gg82563_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_copper_link_setup_gg82563_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.e1000_phy_info }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_phy_info = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.1 = type opaque

@GG82563_PHY_MAC_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_MSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_1000MBPS_25 = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MASK = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MDI = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_MDIX = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_AUTO = common dso_local global i32 0, align 4
@GG82563_PSCR_POLARITY_REVERSAL_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@E1000_KMRNCTRLSTA_OFFSET_FIFO_CTRL = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_FIFO_CTRL_RX_BYPASS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_FIFO_CTRL_TX_BYPASS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_MAC2PHY_OPMODE = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OPMODE_E_IDLE = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL_2 = common dso_local global i32 0, align 4
@GG82563_PSCR2_REVERSE_AUTO_NEG = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@GG82563_PHY_PWR_MGMT_CTRL = common dso_local global i32 0, align 4
@GG82563_PMCR_ENABLE_ELECTRICAL_IDLE = common dso_local global i32 0, align 4
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@GG82563_KMCR_PASS_FALSE_CARRIER = common dso_local global i32 0, align 4
@GG82563_PHY_INBAND_CTRL = common dso_local global i32 0, align 4
@GG82563_ICR_DIS_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_setup_gg82563_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_setup_gg82563_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %12 = call i64 @e1e_rphy(%struct.e1000_hw* %10, i32 %11, i32* %7)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %234

17:                                               ; preds = %1
  %18 = load i32, i32* @GG82563_MSCR_ASSERT_CRS_ON_TX, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @GG82563_MSCR_TX_CLK_1000MBPS_25, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @e1e_wphy(%struct.e1000_hw* %24, i32 %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %234

32:                                               ; preds = %17
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %35 = call i64 @e1e_rphy(%struct.e1000_hw* %33, i32 %34, i32* %7)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %234

40:                                               ; preds = %32
  %41 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %57 [
    i32 1, label %48
    i32 2, label %52
    i32 0, label %56
  ]

48:                                               ; preds = %40
  %49 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MDI, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %61

52:                                               ; preds = %40
  %53 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_MDIX, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %61

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %40, %56
  %58 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_AUTO, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %52, %48
  %62 = load i32, i32* @GG82563_PSCR_POLARITY_REVERSAL_DISABLE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @GG82563_PSCR_POLARITY_REVERSAL_DISABLE, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %61
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @e1e_wphy(%struct.e1000_hw* %75, i32 %76, i32 %77)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %2, align 8
  br label %234

83:                                               ; preds = %74
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %87, align 8
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = bitcast %struct.e1000_hw* %89 to %struct.e1000_hw.1*
  %91 = call i64 %88(%struct.e1000_hw.1* %90)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %96 = load i64, i64* %5, align 8
  store i64 %96, i64* %2, align 8
  br label %234

97:                                               ; preds = %83
  %98 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_FIFO_CTRL, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @E1000_KMRNCTRLSTA_FIFO_CTRL_RX_BYPASS, align 4
  %100 = load i32, i32* @E1000_KMRNCTRLSTA_FIFO_CTRL_TX_BYPASS, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %7, align 4
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %102, i32 %103, i32 %104)
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load i64, i64* %5, align 8
  store i64 %109, i64* %2, align 8
  br label %234

110:                                              ; preds = %97
  %111 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_MAC2PHY_OPMODE, align 4
  store i32 %111, i32* %6, align 4
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %112, i32 %113, i32* %7)
  store i64 %114, i64* %5, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i64, i64* %5, align 8
  store i64 %118, i64* %2, align 8
  br label %234

119:                                              ; preds = %110
  %120 = load i32, i32* @E1000_KMRNCTRLSTA_OPMODE_E_IDLE, align 4
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %123, i32 %124, i32 %125)
  store i64 %126, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i64, i64* %5, align 8
  store i64 %130, i64* %2, align 8
  br label %234

131:                                              ; preds = %119
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = load i32, i32* @GG82563_PHY_SPEC_CTRL_2, align 4
  %134 = call i64 @e1e_rphy(%struct.e1000_hw* %132, i32 %133, i32* %7)
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* %5, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i64, i64* %5, align 8
  store i64 %138, i64* %2, align 8
  br label %234

139:                                              ; preds = %131
  %140 = load i32, i32* @GG82563_PSCR2_REVERSE_AUTO_NEG, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %145 = load i32, i32* @GG82563_PHY_SPEC_CTRL_2, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i64 @e1e_wphy(%struct.e1000_hw* %144, i32 %145, i32 %146)
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i64, i64* %5, align 8
  store i64 %151, i64* %2, align 8
  br label %234

152:                                              ; preds = %139
  %153 = load i32, i32* @CTRL_EXT, align 4
  %154 = call i32 @er32(i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* @CTRL_EXT, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @ew32(i32 %159, i32 %160)
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %163 = load i32, i32* @GG82563_PHY_PWR_MGMT_CTRL, align 4
  %164 = call i64 @e1e_rphy(%struct.e1000_hw* %162, i32 %163, i32* %7)
  store i64 %164, i64* %5, align 8
  %165 = load i64, i64* %5, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %152
  %168 = load i64, i64* %5, align 8
  store i64 %168, i64* %2, align 8
  br label %234

169:                                              ; preds = %152
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %171 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %173, align 8
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %176 = bitcast %struct.e1000_hw* %175 to %struct.e1000_hw.0*
  %177 = call i32 %174(%struct.e1000_hw.0* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %213, label %179

179:                                              ; preds = %169
  %180 = load i32, i32* @GG82563_PMCR_ENABLE_ELECTRICAL_IDLE, align 4
  %181 = load i32, i32* %7, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %7, align 4
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %184 = load i32, i32* @GG82563_PHY_PWR_MGMT_CTRL, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i64 @e1e_wphy(%struct.e1000_hw* %183, i32 %184, i32 %185)
  store i64 %186, i64* %5, align 8
  %187 = load i64, i64* %5, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = load i64, i64* %5, align 8
  store i64 %190, i64* %2, align 8
  br label %234

191:                                              ; preds = %179
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %193 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %194 = call i64 @e1e_rphy(%struct.e1000_hw* %192, i32 %193, i32* %7)
  store i64 %194, i64* %5, align 8
  %195 = load i64, i64* %5, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i64, i64* %5, align 8
  store i64 %198, i64* %2, align 8
  br label %234

199:                                              ; preds = %191
  %200 = load i32, i32* @GG82563_KMCR_PASS_FALSE_CARRIER, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %7, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %7, align 4
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %205 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i64 @e1e_wphy(%struct.e1000_hw* %204, i32 %205, i32 %206)
  store i64 %207, i64* %5, align 8
  %208 = load i64, i64* %5, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %199
  %211 = load i64, i64* %5, align 8
  store i64 %211, i64* %2, align 8
  br label %234

212:                                              ; preds = %199
  br label %213

213:                                              ; preds = %212, %169
  %214 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %215 = load i32, i32* @GG82563_PHY_INBAND_CTRL, align 4
  %216 = call i64 @e1e_rphy(%struct.e1000_hw* %214, i32 %215, i32* %7)
  store i64 %216, i64* %5, align 8
  %217 = load i64, i64* %5, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i64, i64* %5, align 8
  store i64 %220, i64* %2, align 8
  br label %234

221:                                              ; preds = %213
  %222 = load i32, i32* @GG82563_ICR_DIS_PADDING, align 4
  %223 = load i32, i32* %7, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %7, align 4
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %226 = load i32, i32* @GG82563_PHY_INBAND_CTRL, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i64 @e1e_wphy(%struct.e1000_hw* %225, i32 %226, i32 %227)
  store i64 %228, i64* %5, align 8
  %229 = load i64, i64* %5, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = load i64, i64* %5, align 8
  store i64 %232, i64* %2, align 8
  br label %234

233:                                              ; preds = %221
  store i64 0, i64* %2, align 8
  br label %234

234:                                              ; preds = %233, %231, %219, %210, %197, %189, %167, %150, %137, %129, %117, %108, %94, %81, %38, %30, %15
  %235 = load i64, i64* %2, align 8
  ret i64 %235
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
