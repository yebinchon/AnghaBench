; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_force_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_force_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64, i32, i64, i32 }

@E1000_FC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hw->fc = %d\0A\00", align 1
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@DEVICE_SPEED_MASK = common dso_local global i32 0, align 4
@E1000_CTRL_ASDE = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i64 0, align 8
@e1000_100_full = common dso_local global i64 0, align 8
@e1000_10_full = common dso_local global i64 0, align 8
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@MII_CR_FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Half Duplex\0A\00", align 1
@e1000_100_half = common dso_local global i64 0, align 8
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_100 = common dso_local global i64 0, align 8
@MII_CR_SPEED_1000 = common dso_local global i64 0, align 8
@MII_CR_SPEED_10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Forcing 100mb \00", align 1
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Forcing 10mb \00", align 1
@e1000_phy_m88 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"M88E1000 PSCR: %x\0A\00", align 1
@MII_CR_RESET = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i64 0, align 8
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Waiting for forced speed/duplex link.\0A\00", align 1
@PHY_FORCE_TIME = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Error Resetting PHY DSP\0A\00", align 1
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i64 0, align 8
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i64 0, align 8
@e1000_82544 = common dso_local global i64 0, align 8
@e1000_82543 = common dso_local global i64 0, align 8
@e1000_10_half = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_force_speed_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_force_speed_duplex(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load i32, i32* @E1000_FC_NONE, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @CTRL, align 4
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %20 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @DEVICE_SPEED_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @E1000_CTRL_ASDE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @PHY_CTRL, align 4
  %34 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %32, i32 %33, i64* %6)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %365

39:                                               ; preds = %1
  %40 = load i64, i64* @MII_CR_AUTO_NEG_EN, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_100_full, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @e1000_10_full, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49, %39
  %56 = load i32, i32* @E1000_CTRL_FD, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i64, i64* @MII_CR_FULL_DUPLEX, align 8
  %60 = load i64, i64* %6, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %73

63:                                               ; preds = %49
  %64 = load i32, i32* @E1000_CTRL_FD, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i64, i64* @MII_CR_FULL_DUPLEX, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %6, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %63, %55
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @e1000_100_full, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @e1000_100_half, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79, %73
  %86 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load i64, i64* @MII_CR_SPEED_100, align 8
  %90 = load i64, i64* %6, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* @MII_CR_SPEED_1000, align 8
  %93 = load i64, i64* @MII_CR_SPEED_10, align 8
  %94 = or i64 %92, %93
  %95 = xor i64 %94, -1
  %96 = load i64, i64* %6, align 8
  %97 = and i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %116

99:                                               ; preds = %79
  %100 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %101 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i64, i64* @MII_CR_SPEED_10, align 8
  %107 = load i64, i64* %6, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* @MII_CR_SPEED_1000, align 8
  %110 = load i64, i64* @MII_CR_SPEED_100, align 8
  %111 = or i64 %109, %110
  %112 = xor i64 %111, -1
  %113 = load i64, i64* %6, align 8
  %114 = and i64 %113, %112
  store i64 %114, i64* %6, align 8
  %115 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %99, %85
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %117)
  %119 = load i32, i32* @CTRL, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @ew32(i32 %119, i32 %120)
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @e1000_phy_m88, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %154

127:                                              ; preds = %116
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %130 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %128, i32 %129, i64* %8)
  store i64 %130, i64* %5, align 8
  %131 = load i64, i64* %5, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i64, i64* %5, align 8
  store i64 %134, i64* %2, align 8
  br label %365

135:                                              ; preds = %127
  %136 = load i64, i64* @M88E1000_PSCR_AUTO_X_MODE, align 8
  %137 = xor i64 %136, -1
  %138 = load i64, i64* %8, align 8
  %139 = and i64 %138, %137
  store i64 %139, i64* %8, align 8
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %141 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %142 = load i64, i64* %8, align 8
  %143 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %140, i32 %141, i64 %142)
  store i64 %143, i64* %5, align 8
  %144 = load i64, i64* %5, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i64, i64* %5, align 8
  store i64 %147, i64* %2, align 8
  br label %365

148:                                              ; preds = %135
  %149 = load i64, i64* %8, align 8
  %150 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %149)
  %151 = load i64, i64* @MII_CR_RESET, align 8
  %152 = load i64, i64* %6, align 8
  %153 = or i64 %152, %151
  store i64 %153, i64* %6, align 8
  br label %180

154:                                              ; preds = %116
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %156 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %157 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %155, i32 %156, i64* %8)
  store i64 %157, i64* %5, align 8
  %158 = load i64, i64* %5, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i64, i64* %5, align 8
  store i64 %161, i64* %2, align 8
  br label %365

162:                                              ; preds = %154
  %163 = load i64, i64* @IGP01E1000_PSCR_AUTO_MDIX, align 8
  %164 = xor i64 %163, -1
  %165 = load i64, i64* %8, align 8
  %166 = and i64 %165, %164
  store i64 %166, i64* %8, align 8
  %167 = load i64, i64* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 8
  %168 = xor i64 %167, -1
  %169 = load i64, i64* %8, align 8
  %170 = and i64 %169, %168
  store i64 %170, i64* %8, align 8
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %172 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %171, i32 %172, i64 %173)
  store i64 %174, i64* %5, align 8
  %175 = load i64, i64* %5, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %162
  %178 = load i64, i64* %5, align 8
  store i64 %178, i64* %2, align 8
  br label %365

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %148
  %181 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %182 = load i32, i32* @PHY_CTRL, align 4
  %183 = load i64, i64* %6, align 8
  %184 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %181, i32 %182, i64 %183)
  store i64 %184, i64* %5, align 8
  %185 = load i64, i64* %5, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i64, i64* %5, align 8
  store i64 %188, i64* %2, align 8
  br label %365

189:                                              ; preds = %180
  %190 = call i32 @udelay(i32 1)
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %192 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %279

195:                                              ; preds = %189
  %196 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  %197 = load i64, i64* @PHY_FORCE_TIME, align 8
  store i64 %197, i64* %9, align 8
  br label %198

198:                                              ; preds = %225, %195
  %199 = load i64, i64* %9, align 8
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %198
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %203 = load i32, i32* @PHY_STATUS, align 4
  %204 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %202, i32 %203, i64* %7)
  store i64 %204, i64* %5, align 8
  %205 = load i64, i64* %5, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i64, i64* %5, align 8
  store i64 %208, i64* %2, align 8
  br label %365

209:                                              ; preds = %201
  %210 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %211 = load i32, i32* @PHY_STATUS, align 4
  %212 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %210, i32 %211, i64* %7)
  store i64 %212, i64* %5, align 8
  %213 = load i64, i64* %5, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load i64, i64* %5, align 8
  store i64 %216, i64* %2, align 8
  br label %365

217:                                              ; preds = %209
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %220 = and i64 %218, %219
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %228

223:                                              ; preds = %217
  %224 = call i32 @msleep(i32 100)
  br label %225

225:                                              ; preds = %223
  %226 = load i64, i64* %9, align 8
  %227 = add nsw i64 %226, -1
  store i64 %227, i64* %9, align 8
  br label %198

228:                                              ; preds = %222, %198
  %229 = load i64, i64* %9, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %228
  %232 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %233 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @e1000_phy_m88, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %231
  %238 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %239 = call i64 @e1000_phy_reset_dsp(%struct.e1000_hw* %238)
  store i64 %239, i64* %5, align 8
  %240 = load i64, i64* %5, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %244 = load i64, i64* %5, align 8
  store i64 %244, i64* %2, align 8
  br label %365

245:                                              ; preds = %237
  br label %246

246:                                              ; preds = %245, %231, %228
  %247 = load i64, i64* @PHY_FORCE_TIME, align 8
  store i64 %247, i64* %9, align 8
  br label %248

248:                                              ; preds = %275, %246
  %249 = load i64, i64* %9, align 8
  %250 = icmp sgt i64 %249, 0
  br i1 %250, label %251, label %278

251:                                              ; preds = %248
  %252 = load i64, i64* %7, align 8
  %253 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %254 = and i64 %252, %253
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %278

257:                                              ; preds = %251
  %258 = call i32 @msleep(i32 100)
  %259 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %260 = load i32, i32* @PHY_STATUS, align 4
  %261 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %259, i32 %260, i64* %7)
  store i64 %261, i64* %5, align 8
  %262 = load i64, i64* %5, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = load i64, i64* %5, align 8
  store i64 %265, i64* %2, align 8
  br label %365

266:                                              ; preds = %257
  %267 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %268 = load i32, i32* @PHY_STATUS, align 4
  %269 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %267, i32 %268, i64* %7)
  store i64 %269, i64* %5, align 8
  %270 = load i64, i64* %5, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %266
  %273 = load i64, i64* %5, align 8
  store i64 %273, i64* %2, align 8
  br label %365

274:                                              ; preds = %266
  br label %275

275:                                              ; preds = %274
  %276 = load i64, i64* %9, align 8
  %277 = add nsw i64 %276, -1
  store i64 %277, i64* %9, align 8
  br label %248

278:                                              ; preds = %256, %248
  br label %279

279:                                              ; preds = %278, %189
  %280 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %281 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @e1000_phy_m88, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %363

285:                                              ; preds = %279
  %286 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %287 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %288 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %286, i32 %287, i64* %8)
  store i64 %288, i64* %5, align 8
  %289 = load i64, i64* %5, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = load i64, i64* %5, align 8
  store i64 %292, i64* %2, align 8
  br label %365

293:                                              ; preds = %285
  %294 = load i64, i64* @M88E1000_EPSCR_TX_CLK_25, align 8
  %295 = load i64, i64* %8, align 8
  %296 = or i64 %295, %294
  store i64 %296, i64* %8, align 8
  %297 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %298 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %299 = load i64, i64* %8, align 8
  %300 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %297, i32 %298, i64 %299)
  store i64 %300, i64* %5, align 8
  %301 = load i64, i64* %5, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %293
  %304 = load i64, i64* %5, align 8
  store i64 %304, i64* %2, align 8
  br label %365

305:                                              ; preds = %293
  %306 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %307 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %308 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %306, i32 %307, i64* %8)
  store i64 %308, i64* %5, align 8
  %309 = load i64, i64* %5, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %305
  %312 = load i64, i64* %5, align 8
  store i64 %312, i64* %2, align 8
  br label %365

313:                                              ; preds = %305
  %314 = load i64, i64* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 8
  %315 = load i64, i64* %8, align 8
  %316 = or i64 %315, %314
  store i64 %316, i64* %8, align 8
  %317 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %318 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %319 = load i64, i64* %8, align 8
  %320 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %317, i32 %318, i64 %319)
  store i64 %320, i64* %5, align 8
  %321 = load i64, i64* %5, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %313
  %324 = load i64, i64* %5, align 8
  store i64 %324, i64* %2, align 8
  br label %365

325:                                              ; preds = %313
  %326 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %327 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @e1000_82544, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %337, label %331

331:                                              ; preds = %325
  %332 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %333 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @e1000_82543, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %362

337:                                              ; preds = %331, %325
  %338 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %339 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %362, label %342

342:                                              ; preds = %337
  %343 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %344 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @e1000_10_full, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %354, label %348

348:                                              ; preds = %342
  %349 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %350 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @e1000_10_half, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %362

354:                                              ; preds = %348, %342
  %355 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %356 = call i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw* %355)
  store i64 %356, i64* %5, align 8
  %357 = load i64, i64* %5, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load i64, i64* %5, align 8
  store i64 %360, i64* %2, align 8
  br label %365

361:                                              ; preds = %354
  br label %362

362:                                              ; preds = %361, %348, %337, %331
  br label %363

363:                                              ; preds = %362, %279
  %364 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %364, i64* %2, align 8
  br label %365

365:                                              ; preds = %363, %359, %323, %311, %303, %291, %272, %264, %242, %215, %207, %187, %177, %160, %146, %133, %37
  %366 = load i64, i64* %2, align 8
  ret i64 %366
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1000_phy_reset_dsp(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
