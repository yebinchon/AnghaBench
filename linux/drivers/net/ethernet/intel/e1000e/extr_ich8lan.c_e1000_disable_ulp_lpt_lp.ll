; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_disable_ulp_lpt_lp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_disable_ulp_lpt_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@e1000_pch_lpt = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPT_I217_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPT_I217_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM2 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V2 = common dso_local global i64 0, align 8
@e1000_ulp_state_off = common dso_local global i64 0, align 8
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@H2ME = common dso_local global i32 0, align 4
@E1000_H2ME_ULP = common dso_local global i32 0, align 4
@E1000_H2ME_ENFORCE_SETTINGS = common dso_local global i32 0, align 4
@E1000_FWSM_ULP_CFG_DONE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ULP_CONFIG_DONE cleared after %dmsec\0A\00", align 1
@CV_SMB_CTRL = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@CV_SMB_CTRL_FORCE_SMBUS = common dso_local global i32 0, align 4
@HV_PM_CTRL = common dso_local global i32 0, align 4
@HV_PM_CTRL_K1_ENABLE = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1 = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_IND = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_STICKY_ULP = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_RESET_TO_SMBUS = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_WOL_HOST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_INBAND_EXIT = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_EN_ULP_LANPHYPC = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_DIS_CLR_STICKY_ON_PERST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_START = common dso_local global i32 0, align 4
@FEXTNVM7 = common dso_local global i32 0, align 4
@E1000_FEXTNVM7_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error in ULP disable flow: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32)* @e1000_disable_ulp_lpt_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_disable_ulp_lpt_lp(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_pch_lpt, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %64, label %16

16:                                               ; preds = %2
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_LM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %64, label %26

26:                                               ; preds = %16
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_V, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %64, label %36

36:                                               ; preds = %26
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %36
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @E1000_DEV_ID_PCH_I218_V2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %46
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @e1000_ulp_state_off, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %46, %36, %26, %16, %2
  store i32 0, i32* %3, align 4
  br label %278

65:                                               ; preds = %56
  %66 = load i32, i32* @FWSM, align 4
  %67 = call i32 @er32(i32 %66)
  %68 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %130

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, i32* @H2ME, align 4
  %76 = call i32 @er32(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @E1000_H2ME_ULP, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @E1000_H2ME_ENFORCE_SETTINGS, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @H2ME, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ew32(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %74, %71
  br label %88

88:                                               ; preds = %101, %87
  %89 = load i32, i32* @FWSM, align 4
  %90 = call i32 @er32(i32 %89)
  %91 = load i32, i32* @E1000_FWSM_ULP_CFG_DONE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = icmp eq i32 %95, 30
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @E1000_ERR_PHY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %264

101:                                              ; preds = %94
  %102 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %88

103:                                              ; preds = %88
  %104 = load i32, i32* %9, align 4
  %105 = mul nsw i32 %104, 10
  %106 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i32, i32* @H2ME, align 4
  %111 = call i32 @er32(i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* @E1000_H2ME_ENFORCE_SETTINGS, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* @H2ME, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @ew32(i32 %116, i32 %117)
  br label %129

119:                                              ; preds = %103
  %120 = load i32, i32* @H2ME, align 4
  %121 = call i32 @er32(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* @E1000_H2ME_ULP, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* @H2ME, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @ew32(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %119, %109
  br label %264

130:                                              ; preds = %65
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %132 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %134, align 8
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %137 = bitcast %struct.e1000_hw* %136 to %struct.e1000_hw.0*
  %138 = call i32 %135(%struct.e1000_hw.0* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %264

142:                                              ; preds = %130
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %147 = call i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = load i32, i32* @CV_SMB_CTRL, align 4
  %151 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %149, i32 %150, i32* %8)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load i32, i32* @CTRL_EXT, align 4
  %156 = call i32 @er32(i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* @CTRL_EXT, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @ew32(i32 %160, i32 %161)
  %163 = call i32 @msleep(i32 50)
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %165 = load i32, i32* @CV_SMB_CTRL, align 4
  %166 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %164, i32 %165, i32* %8)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  br label %248

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170, %148
  %172 = load i32, i32* @CV_SMB_CTRL_FORCE_SMBUS, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %8, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %8, align 4
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %177 = load i32, i32* @CV_SMB_CTRL, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %176, i32 %177, i32 %178)
  %180 = load i32, i32* @CTRL_EXT, align 4
  %181 = call i32 @er32(i32 %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %7, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* @CTRL_EXT, align 4
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @ew32(i32 %186, i32 %187)
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %190 = load i32, i32* @HV_PM_CTRL, align 4
  %191 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %189, i32 %190, i32* %8)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %171
  br label %248

195:                                              ; preds = %171
  %196 = load i32, i32* @HV_PM_CTRL_K1_ENABLE, align 4
  %197 = load i32, i32* %8, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %8, align 4
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %200 = load i32, i32* @HV_PM_CTRL, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %199, i32 %200, i32 %201)
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %204 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %205 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %203, i32 %204, i32* %8)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %195
  br label %248

209:                                              ; preds = %195
  %210 = load i32, i32* @I218_ULP_CONFIG1_IND, align 4
  %211 = load i32, i32* @I218_ULP_CONFIG1_STICKY_ULP, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @I218_ULP_CONFIG1_RESET_TO_SMBUS, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @I218_ULP_CONFIG1_INBAND_EXIT, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @I218_ULP_CONFIG1_EN_ULP_LANPHYPC, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @I218_ULP_CONFIG1_DIS_CLR_STICKY_ON_PERST, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @I218_ULP_CONFIG1_DISABLE_SMB_PERST, align 4
  %224 = or i32 %222, %223
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %229 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %228, i32 %229, i32 %230)
  %232 = load i32, i32* @I218_ULP_CONFIG1_START, align 4
  %233 = load i32, i32* %8, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %8, align 4
  %235 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %236 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %235, i32 %236, i32 %237)
  %239 = load i32, i32* @FEXTNVM7, align 4
  %240 = call i32 @er32(i32 %239)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* @E1000_FEXTNVM7_DISABLE_SMB_PERST, align 4
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %7, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* @FEXTNVM7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @ew32(i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %209, %208, %194, %169
  %249 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %250 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %252, align 8
  %254 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %255 = bitcast %struct.e1000_hw* %254 to %struct.e1000_hw.1*
  %256 = call i32 %253(%struct.e1000_hw.1* %255)
  %257 = load i32, i32* %5, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %248
  %260 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %261 = call i32 @e1000_phy_hw_reset(%struct.e1000_hw* %260)
  %262 = call i32 @msleep(i32 50)
  br label %263

263:                                              ; preds = %259, %248
  br label %264

264:                                              ; preds = %263, %141, %129, %98
  %265 = load i32, i32* %6, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %6, align 4
  %269 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %268)
  br label %276

270:                                              ; preds = %264
  %271 = load i64, i64* @e1000_ulp_state_off, align 8
  %272 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %273 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  store i64 %271, i64* %275, align 8
  br label %276

276:                                              ; preds = %270, %267
  %277 = load i32, i32* %6, align 4
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %276, %64
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_dbg(i8*, i32) #1

declare dso_local i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_phy_hw_reset(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
