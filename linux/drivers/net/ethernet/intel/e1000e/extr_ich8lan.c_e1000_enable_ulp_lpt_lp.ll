; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_enable_ulp_lpt_lp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_enable_ulp_lpt_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__ }
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
@e1000_ulp_state_on = common dso_local global i64 0, align 8
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@H2ME = common dso_local global i32 0, align 4
@E1000_H2ME_ULP = common dso_local global i32 0, align 4
@E1000_H2ME_ENFORCE_SETTINGS = common dso_local global i32 0, align 4
@FEXT = common dso_local global i32 0, align 4
@E1000_FEXT_PHY_CABLE_DISCONNECTED = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CABLE_DISCONNECTED %s set after %dmsec\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@CV_SMB_CTRL = common dso_local global i32 0, align 4
@CV_SMB_CTRL_FORCE_SMBUS = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@HV_OEM_BITS = common dso_local global i32 0, align 4
@HV_OEM_BITS_LPLU = common dso_local global i32 0, align 4
@HV_OEM_BITS_GBE_DIS = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1 = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_RESET_TO_SMBUS = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@WUFC = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_WOL_HOST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_STICKY_ULP = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_INBAND_EXIT = common dso_local global i32 0, align 4
@FEXTNVM7 = common dso_local global i32 0, align 4
@E1000_FEXTNVM7_DISABLE_SMB_PERST = common dso_local global i32 0, align 4
@I218_ULP_CONFIG1_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Error in ULP enable flow: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_enable_ulp_lpt_lp(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_pch_lpt, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %65, label %17

17:                                               ; preds = %2
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_LM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %65, label %27

27:                                               ; preds = %17
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @E1000_DEV_ID_PCH_LPT_I217_V, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %65, label %37

37:                                               ; preds = %27
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %37
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @E1000_DEV_ID_PCH_I218_V2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %47
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @e1000_ulp_state_on, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %47, %37, %27, %17, %2
  store i32 0, i32* %3, align 4
  br label %316

66:                                               ; preds = %57
  %67 = load i32, i32* @FWSM, align 4
  %68 = call i32 @er32(i32 %67)
  %69 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32, i32* @H2ME, align 4
  %74 = call i32 @er32(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @E1000_H2ME_ULP, align 4
  %76 = load i32, i32* @E1000_H2ME_ENFORCE_SETTINGS, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @H2ME, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ew32(i32 %80, i32 %81)
  br label %300

83:                                               ; preds = %66
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %121, label %86

86:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i32, i32* @FEXT, align 4
  %89 = call i32 @er32(i32 %88)
  %90 = load i32, i32* @E1000_FEXT_PHY_CABLE_DISCONNECTED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %94, label %110

94:                                               ; preds = %87
  %95 = load i32, i32* @STATUS, align 4
  %96 = call i32 @er32(i32 %95)
  %97 = load i32, i32* @E1000_STATUS_LU, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @E1000_ERR_PHY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %316

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = icmp eq i32 %104, 100
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %110

108:                                              ; preds = %103
  %109 = call i32 @msleep(i32 50)
  br label %87

110:                                              ; preds = %107, %87
  %111 = load i32, i32* @FEXT, align 4
  %112 = call i32 @er32(i32 %111)
  %113 = load i32, i32* @E1000_FEXT_PHY_CABLE_DISCONNECTED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %118 = load i32, i32* %10, align 4
  %119 = mul nsw i32 %118, 50
  %120 = call i32 (i8*, i8*, ...) @e_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %117, i32 %119)
  br label %121

121:                                              ; preds = %110, %83
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %125, align 8
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %128 = bitcast %struct.e1000_hw* %127 to %struct.e1000_hw.1*
  %129 = call i32 %126(%struct.e1000_hw.1* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %300

133:                                              ; preds = %121
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %135 = load i32, i32* @CV_SMB_CTRL, align 4
  %136 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %134, i32 %135, i32* %8)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %291

140:                                              ; preds = %133
  %141 = load i32, i32* @CV_SMB_CTRL_FORCE_SMBUS, align 4
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %145 = load i32, i32* @CV_SMB_CTRL, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %144, i32 %145, i32 %146)
  %148 = load i32, i32* @CTRL_EXT, align 4
  %149 = call i32 @er32(i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* @CTRL_EXT, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @ew32(i32 %153, i32 %154)
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %157 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @e1000_phy_i217, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %140
  %163 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %164 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 6
  br i1 %167, label %168, label %190

168:                                              ; preds = %162
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %170 = load i32, i32* @HV_OEM_BITS, align 4
  %171 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %169, i32 %170, i32* %9)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %291

175:                                              ; preds = %168
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %178 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %8, align 4
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %183 = load i32, i32* @HV_OEM_BITS, align 4
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %182, i32 %183, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %175
  br label %291

189:                                              ; preds = %175
  br label %190

190:                                              ; preds = %189, %162, %140
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %192 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %193 = call i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %191, i32 %192, i32* %8)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %291

197:                                              ; preds = %190
  %198 = load i32, i32* @I218_ULP_CONFIG1_RESET_TO_SMBUS, align 4
  %199 = load i32, i32* @I218_ULP_CONFIG1_DISABLE_SMB_PERST, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %228

205:                                              ; preds = %197
  %206 = load i32, i32* @WUFC, align 4
  %207 = call i32 @er32(i32 %206)
  %208 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %213 = load i32, i32* %8, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %8, align 4
  br label %220

215:                                              ; preds = %205
  %216 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %8, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %215, %211
  %221 = load i32, i32* @I218_ULP_CONFIG1_STICKY_ULP, align 4
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* @I218_ULP_CONFIG1_INBAND_EXIT, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %8, align 4
  br label %240

228:                                              ; preds = %197
  %229 = load i32, i32* @I218_ULP_CONFIG1_INBAND_EXIT, align 4
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* @I218_ULP_CONFIG1_STICKY_ULP, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %8, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* @I218_ULP_CONFIG1_WOL_HOST, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %8, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %228, %220
  %241 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %242 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %241, i32 %242, i32 %243)
  %245 = load i32, i32* @FEXTNVM7, align 4
  %246 = call i32 @er32(i32 %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* @E1000_FEXTNVM7_DISABLE_SMB_PERST, align 4
  %248 = load i32, i32* %6, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* @FEXTNVM7, align 4
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @ew32(i32 %250, i32 %251)
  %253 = load i32, i32* @I218_ULP_CONFIG1_START, align 4
  %254 = load i32, i32* %8, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %8, align 4
  %256 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %257 = load i32, i32* @I218_ULP_CONFIG1, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %256, i32 %257, i32 %258)
  %260 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %261 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @e1000_phy_i217, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %240
  %267 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %268 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 6
  br i1 %271, label %272, label %290

272:                                              ; preds = %266
  %273 = load i32, i32* %5, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = load i32, i32* @STATUS, align 4
  %277 = call i32 @er32(i32 %276)
  %278 = load i32, i32* @E1000_STATUS_LU, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %275
  %282 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %283 = load i32, i32* @HV_OEM_BITS, align 4
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %282, i32 %283, i32 %284)
  store i32 %285, i32* %7, align 4
  %286 = load i32, i32* %7, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  br label %291

289:                                              ; preds = %281
  br label %290

290:                                              ; preds = %289, %275, %272, %266, %240
  br label %291

291:                                              ; preds = %290, %288, %196, %188, %174, %139
  %292 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %293 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %295, align 8
  %297 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %298 = bitcast %struct.e1000_hw* %297 to %struct.e1000_hw.0*
  %299 = call i32 %296(%struct.e1000_hw.0* %298)
  br label %300

300:                                              ; preds = %291, %132, %72
  %301 = load i32, i32* %7, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i8*
  %307 = call i32 (i8*, i8*, ...) @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %306)
  br label %314

308:                                              ; preds = %300
  %309 = load i64, i64* @e1000_ulp_state_on, align 8
  %310 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %311 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 0
  store i64 %309, i64* %313, align 8
  br label %314

314:                                              ; preds = %308, %303
  %315 = load i32, i32* %7, align 4
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %314, %100, %65
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e_dbg(i8*, i8*, ...) #1

declare dso_local i32 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
