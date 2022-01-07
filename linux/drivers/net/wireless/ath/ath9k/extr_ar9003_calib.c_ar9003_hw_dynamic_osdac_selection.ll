; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_dynamic_osdac_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_dynamic_osdac_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_OFFSET_CAL = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"AGC cal without offset cal failed to complete in 1ms\00", align 1
@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_FLTR_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_PKDET_CAL = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_BB1 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH1_BB1 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH2_BB1 = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"DC offset cal failed to complete in 1ms\00", align 1
@AR_PHY_65NM_CH0_BB3 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH1_BB3 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH2_BB3 = common dso_local global i32 0, align 4
@OFF_UPPER_LT = common dso_local global i32 0, align 4
@OFF_LOWER_LT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ar9003_hw_dynamic_osdac_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_dynamic_osdac_selection(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %34)
  store %struct.ath_common* %35, %struct.ath_common** %6, align 8
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %38 = load i32, i32* @AR_PHY_AGC_CONTROL_OFFSET_CAL, align 4
  %39 = call i32 @REG_CLR_BIT(%struct.ath_hw* %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %42 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %43 = call i32 @REG_CLR_BIT(%struct.ath_hw* %40, i32 %41, i32 %42)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %48 = call i32 @REG_READ(%struct.ath_hw* %46, i32 %47)
  %49 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 %45, i32 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %53 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %54 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %55 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %56 = call i32 @ath9k_hw_wait(%struct.ath_hw* %52, i32 %53, i32 %54, i32 0, i32 %55)
  store i32 %56, i32* %31, align 4
  %57 = load i32, i32* %31, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %2
  %60 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %61 = load i32, i32* @CALIBRATE, align 4
  %62 = call i32 @ath_dbg(%struct.ath_common* %60, i32 %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %508

63:                                               ; preds = %2
  %64 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %65 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %66 = load i32, i32* @AR_PHY_AGC_CONTROL_OFFSET_CAL, align 4
  %67 = call i32 @REG_SET_BIT(%struct.ath_hw* %64, i32 %65, i32 %66)
  %68 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %69 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %70 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %71 = call i32 @REG_CLR_BIT(%struct.ath_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %73 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %74 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %75 = call i32 @REG_CLR_BIT(%struct.ath_hw* %72, i32 %73, i32 %74)
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %78 = load i32, i32* @AR_PHY_AGC_CONTROL_PKDET_CAL, align 4
  %79 = call i32 @REG_CLR_BIT(%struct.ath_hw* %76, i32 %77, i32 %78)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %23, align 4
  br label %80

80:                                               ; preds = %494, %63
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %23, align 4
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %86, %83, %80
  %90 = phi i1 [ true, %83 ], [ true, %80 ], [ %88, %86 ]
  br i1 %90, label %91, label %495

91:                                               ; preds = %89
  %92 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %93 = load i32, i32* @AR_PHY_65NM_CH0_BB1, align 4
  %94 = call i32 @REG_READ(%struct.ath_hw* %92, i32 %93)
  %95 = ashr i32 %94, 30
  %96 = and i32 %95, 3
  store i32 %96, i32* %8, align 4
  %97 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %98 = load i32, i32* @AR_PHY_65NM_CH1_BB1, align 4
  %99 = call i32 @REG_READ(%struct.ath_hw* %97, i32 %98)
  %100 = ashr i32 %99, 30
  %101 = and i32 %100, 3
  store i32 %101, i32* %16, align 4
  %102 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %103 = load i32, i32* @AR_PHY_65NM_CH2_BB1, align 4
  %104 = call i32 @REG_READ(%struct.ath_hw* %102, i32 %103)
  %105 = ashr i32 %104, 30
  %106 = and i32 %105, 3
  store i32 %106, i32* %24, align 4
  %107 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %108 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %109 = load i32, i32* @AR_PHY_ACTIVE_EN, align 4
  %110 = call i32 @REG_SET_BIT(%struct.ath_hw* %107, i32 %108, i32 %109)
  %111 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %112 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %115 = call i32 @REG_READ(%struct.ath_hw* %113, i32 %114)
  %116 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @REG_WRITE(%struct.ath_hw* %111, i32 %112, i32 %117)
  %119 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %120 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %121 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %122 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %123 = call i32 @ath9k_hw_wait(%struct.ath_hw* %119, i32 %120, i32 %121, i32 0, i32 %122)
  store i32 %123, i32* %31, align 4
  %124 = load i32, i32* %31, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %91
  %127 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %128 = load i32, i32* @CALIBRATE, align 4
  %129 = call i32 @ath_dbg(%struct.ath_common* %127, i32 %128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %508

130:                                              ; preds = %91
  %131 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %132 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %133 = load i32, i32* @AR_PHY_ACTIVE_EN, align 4
  %134 = call i32 @REG_CLR_BIT(%struct.ath_hw* %131, i32 %132, i32 %133)
  %135 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %136 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %137 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %138 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %139 = call i32 @REG_READ(%struct.ath_hw* %137, i32 %138)
  %140 = and i32 %139, -769
  %141 = or i32 %140, 256
  %142 = call i32 @REG_WRITE(%struct.ath_hw* %135, i32 %136, i32 %141)
  %143 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %144 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %145 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %146 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %147 = call i32 @REG_READ(%struct.ath_hw* %145, i32 %146)
  %148 = and i32 %147, -769
  %149 = or i32 %148, 256
  %150 = call i32 @REG_WRITE(%struct.ath_hw* %143, i32 %144, i32 %149)
  %151 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %152 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %153 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %154 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %155 = call i32 @REG_READ(%struct.ath_hw* %153, i32 %154)
  %156 = and i32 %155, -769
  %157 = or i32 %156, 256
  %158 = call i32 @REG_WRITE(%struct.ath_hw* %151, i32 %152, i32 %157)
  %159 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %160 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %161 = call i32 @REG_READ(%struct.ath_hw* %159, i32 %160)
  store i32 %161, i32* %32, align 4
  %162 = load i32, i32* %32, align 4
  %163 = ashr i32 %162, 26
  %164 = and i32 %163, 31
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %32, align 4
  %166 = ashr i32 %165, 21
  %167 = and i32 %166, 31
  store i32 %167, i32* %10, align 4
  %168 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %169 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %170 = call i32 @REG_READ(%struct.ath_hw* %168, i32 %169)
  store i32 %170, i32* %32, align 4
  %171 = load i32, i32* %32, align 4
  %172 = ashr i32 %171, 26
  %173 = and i32 %172, 31
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %32, align 4
  %175 = ashr i32 %174, 21
  %176 = and i32 %175, 31
  store i32 %176, i32* %18, align 4
  %177 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %178 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %179 = call i32 @REG_READ(%struct.ath_hw* %177, i32 %178)
  store i32 %179, i32* %32, align 4
  %180 = load i32, i32* %32, align 4
  %181 = ashr i32 %180, 26
  %182 = and i32 %181, 31
  store i32 %182, i32* %25, align 4
  %183 = load i32, i32* %32, align 4
  %184 = ashr i32 %183, 21
  %185 = and i32 %184, 31
  store i32 %185, i32* %26, align 4
  %186 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %187 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %188 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %189 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %190 = call i32 @REG_READ(%struct.ath_hw* %188, i32 %189)
  %191 = and i32 %190, -769
  %192 = or i32 %191, 512
  %193 = call i32 @REG_WRITE(%struct.ath_hw* %186, i32 %187, i32 %192)
  %194 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %195 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %196 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %197 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %198 = call i32 @REG_READ(%struct.ath_hw* %196, i32 %197)
  %199 = and i32 %198, -769
  %200 = or i32 %199, 512
  %201 = call i32 @REG_WRITE(%struct.ath_hw* %194, i32 %195, i32 %200)
  %202 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %203 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %204 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %205 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %206 = call i32 @REG_READ(%struct.ath_hw* %204, i32 %205)
  %207 = and i32 %206, -769
  %208 = or i32 %207, 512
  %209 = call i32 @REG_WRITE(%struct.ath_hw* %202, i32 %203, i32 %208)
  %210 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %211 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %212 = call i32 @REG_READ(%struct.ath_hw* %210, i32 %211)
  store i32 %212, i32* %32, align 4
  %213 = load i32, i32* %32, align 4
  %214 = ashr i32 %213, 26
  %215 = and i32 %214, 31
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %32, align 4
  %217 = ashr i32 %216, 21
  %218 = and i32 %217, 31
  store i32 %218, i32* %12, align 4
  %219 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %220 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %221 = call i32 @REG_READ(%struct.ath_hw* %219, i32 %220)
  store i32 %221, i32* %32, align 4
  %222 = load i32, i32* %32, align 4
  %223 = ashr i32 %222, 26
  %224 = and i32 %223, 31
  store i32 %224, i32* %19, align 4
  %225 = load i32, i32* %32, align 4
  %226 = ashr i32 %225, 21
  %227 = and i32 %226, 31
  store i32 %227, i32* %20, align 4
  %228 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %229 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %230 = call i32 @REG_READ(%struct.ath_hw* %228, i32 %229)
  store i32 %230, i32* %32, align 4
  %231 = load i32, i32* %32, align 4
  %232 = ashr i32 %231, 26
  %233 = and i32 %232, 31
  store i32 %233, i32* %27, align 4
  %234 = load i32, i32* %32, align 4
  %235 = ashr i32 %234, 21
  %236 = and i32 %235, 31
  store i32 %236, i32* %28, align 4
  %237 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %238 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %239 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %240 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %241 = call i32 @REG_READ(%struct.ath_hw* %239, i32 %240)
  %242 = and i32 %241, -769
  %243 = or i32 %242, 768
  %244 = call i32 @REG_WRITE(%struct.ath_hw* %237, i32 %238, i32 %243)
  %245 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %246 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %247 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %248 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %249 = call i32 @REG_READ(%struct.ath_hw* %247, i32 %248)
  %250 = and i32 %249, -769
  %251 = or i32 %250, 768
  %252 = call i32 @REG_WRITE(%struct.ath_hw* %245, i32 %246, i32 %251)
  %253 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %254 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %255 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %256 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %257 = call i32 @REG_READ(%struct.ath_hw* %255, i32 %256)
  %258 = and i32 %257, -769
  %259 = or i32 %258, 768
  %260 = call i32 @REG_WRITE(%struct.ath_hw* %253, i32 %254, i32 %259)
  %261 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %262 = load i32, i32* @AR_PHY_65NM_CH0_BB3, align 4
  %263 = call i32 @REG_READ(%struct.ath_hw* %261, i32 %262)
  store i32 %263, i32* %32, align 4
  %264 = load i32, i32* %32, align 4
  %265 = ashr i32 %264, 26
  %266 = and i32 %265, 31
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %32, align 4
  %268 = ashr i32 %267, 21
  %269 = and i32 %268, 31
  store i32 %269, i32* %14, align 4
  %270 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %271 = load i32, i32* @AR_PHY_65NM_CH1_BB3, align 4
  %272 = call i32 @REG_READ(%struct.ath_hw* %270, i32 %271)
  store i32 %272, i32* %32, align 4
  %273 = load i32, i32* %32, align 4
  %274 = ashr i32 %273, 26
  %275 = and i32 %274, 31
  store i32 %275, i32* %21, align 4
  %276 = load i32, i32* %32, align 4
  %277 = ashr i32 %276, 21
  %278 = and i32 %277, 31
  store i32 %278, i32* %22, align 4
  %279 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %280 = load i32, i32* @AR_PHY_65NM_CH2_BB3, align 4
  %281 = call i32 @REG_READ(%struct.ath_hw* %279, i32 %280)
  store i32 %281, i32* %32, align 4
  %282 = load i32, i32* %32, align 4
  %283 = ashr i32 %282, 26
  %284 = and i32 %283, 31
  store i32 %284, i32* %29, align 4
  %285 = load i32, i32* %32, align 4
  %286 = ashr i32 %285, 21
  %287 = and i32 %286, 31
  store i32 %287, i32* %30, align 4
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* @OFF_UPPER_LT, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %335, label %291

291:                                              ; preds = %130
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* @OFF_LOWER_LT, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %335, label %295

295:                                              ; preds = %291
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* @OFF_UPPER_LT, align 4
  %298 = icmp sgt i32 %296, %297
  br i1 %298, label %335, label %299

299:                                              ; preds = %295
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @OFF_LOWER_LT, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %335, label %303

303:                                              ; preds = %299
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* @OFF_UPPER_LT, align 4
  %306 = icmp sgt i32 %304, %305
  br i1 %306, label %335, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* @OFF_LOWER_LT, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %335, label %311

311:                                              ; preds = %307
  %312 = load i32, i32* %10, align 4
  %313 = load i32, i32* @OFF_UPPER_LT, align 4
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %335, label %315

315:                                              ; preds = %311
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @OFF_LOWER_LT, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %335, label %319

319:                                              ; preds = %315
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @OFF_UPPER_LT, align 4
  %322 = icmp sgt i32 %320, %321
  br i1 %322, label %335, label %323

323:                                              ; preds = %319
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* @OFF_LOWER_LT, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %335, label %327

327:                                              ; preds = %323
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* @OFF_UPPER_LT, align 4
  %330 = icmp sgt i32 %328, %329
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* @OFF_LOWER_LT, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %355

335:                                              ; preds = %331, %327, %323, %319, %315, %311, %307, %303, %299, %295, %291, %130
  %336 = load i32, i32* %8, align 4
  %337 = icmp eq i32 %336, 3
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  store i32 1, i32* %7, align 4
  br label %354

339:                                              ; preds = %335
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  %342 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %343 = load i32, i32* @AR_PHY_65NM_CH0_BB1, align 4
  %344 = call i32 @REG_READ(%struct.ath_hw* %342, i32 %343)
  %345 = and i32 %344, 1073741823
  store i32 %345, i32* %33, align 4
  %346 = load i32, i32* %8, align 4
  %347 = shl i32 %346, 30
  %348 = load i32, i32* %33, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %33, align 4
  %350 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %351 = load i32, i32* @AR_PHY_65NM_CH0_BB1, align 4
  %352 = load i32, i32* %33, align 4
  %353 = call i32 @REG_WRITE(%struct.ath_hw* %350, i32 %351, i32 %352)
  store i32 0, i32* %7, align 4
  br label %354

354:                                              ; preds = %339, %338
  br label %356

355:                                              ; preds = %331
  store i32 1, i32* %7, align 4
  br label %356

356:                                              ; preds = %355, %354
  %357 = load i32, i32* %17, align 4
  %358 = load i32, i32* @OFF_UPPER_LT, align 4
  %359 = icmp sgt i32 %357, %358
  br i1 %359, label %404, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* %17, align 4
  %362 = load i32, i32* @OFF_LOWER_LT, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %404, label %364

364:                                              ; preds = %360
  %365 = load i32, i32* %19, align 4
  %366 = load i32, i32* @OFF_UPPER_LT, align 4
  %367 = icmp sgt i32 %365, %366
  br i1 %367, label %404, label %368

368:                                              ; preds = %364
  %369 = load i32, i32* %19, align 4
  %370 = load i32, i32* @OFF_LOWER_LT, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %404, label %372

372:                                              ; preds = %368
  %373 = load i32, i32* %21, align 4
  %374 = load i32, i32* @OFF_UPPER_LT, align 4
  %375 = icmp sgt i32 %373, %374
  br i1 %375, label %404, label %376

376:                                              ; preds = %372
  %377 = load i32, i32* %21, align 4
  %378 = load i32, i32* @OFF_LOWER_LT, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %404, label %380

380:                                              ; preds = %376
  %381 = load i32, i32* %18, align 4
  %382 = load i32, i32* @OFF_UPPER_LT, align 4
  %383 = icmp sgt i32 %381, %382
  br i1 %383, label %404, label %384

384:                                              ; preds = %380
  %385 = load i32, i32* %18, align 4
  %386 = load i32, i32* @OFF_LOWER_LT, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %404, label %388

388:                                              ; preds = %384
  %389 = load i32, i32* %20, align 4
  %390 = load i32, i32* @OFF_UPPER_LT, align 4
  %391 = icmp sgt i32 %389, %390
  br i1 %391, label %404, label %392

392:                                              ; preds = %388
  %393 = load i32, i32* %20, align 4
  %394 = load i32, i32* @OFF_LOWER_LT, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %404, label %396

396:                                              ; preds = %392
  %397 = load i32, i32* %22, align 4
  %398 = load i32, i32* @OFF_UPPER_LT, align 4
  %399 = icmp sgt i32 %397, %398
  br i1 %399, label %404, label %400

400:                                              ; preds = %396
  %401 = load i32, i32* %22, align 4
  %402 = load i32, i32* @OFF_LOWER_LT, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %424

404:                                              ; preds = %400, %396, %392, %388, %384, %380, %376, %372, %368, %364, %360, %356
  %405 = load i32, i32* %16, align 4
  %406 = icmp eq i32 %405, 3
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store i32 1, i32* %15, align 4
  br label %423

408:                                              ; preds = %404
  %409 = load i32, i32* %16, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %16, align 4
  %411 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %412 = load i32, i32* @AR_PHY_65NM_CH1_BB1, align 4
  %413 = call i32 @REG_READ(%struct.ath_hw* %411, i32 %412)
  %414 = and i32 %413, 1073741823
  store i32 %414, i32* %33, align 4
  %415 = load i32, i32* %16, align 4
  %416 = shl i32 %415, 30
  %417 = load i32, i32* %33, align 4
  %418 = or i32 %417, %416
  store i32 %418, i32* %33, align 4
  %419 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %420 = load i32, i32* @AR_PHY_65NM_CH1_BB1, align 4
  %421 = load i32, i32* %33, align 4
  %422 = call i32 @REG_WRITE(%struct.ath_hw* %419, i32 %420, i32 %421)
  store i32 0, i32* %15, align 4
  br label %423

423:                                              ; preds = %408, %407
  br label %425

424:                                              ; preds = %400
  store i32 1, i32* %15, align 4
  br label %425

425:                                              ; preds = %424, %423
  %426 = load i32, i32* %25, align 4
  %427 = load i32, i32* @OFF_UPPER_LT, align 4
  %428 = icmp sgt i32 %426, %427
  br i1 %428, label %473, label %429

429:                                              ; preds = %425
  %430 = load i32, i32* %25, align 4
  %431 = load i32, i32* @OFF_LOWER_LT, align 4
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %473, label %433

433:                                              ; preds = %429
  %434 = load i32, i32* %27, align 4
  %435 = load i32, i32* @OFF_UPPER_LT, align 4
  %436 = icmp sgt i32 %434, %435
  br i1 %436, label %473, label %437

437:                                              ; preds = %433
  %438 = load i32, i32* %27, align 4
  %439 = load i32, i32* @OFF_LOWER_LT, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %473, label %441

441:                                              ; preds = %437
  %442 = load i32, i32* %29, align 4
  %443 = load i32, i32* @OFF_UPPER_LT, align 4
  %444 = icmp sgt i32 %442, %443
  br i1 %444, label %473, label %445

445:                                              ; preds = %441
  %446 = load i32, i32* %29, align 4
  %447 = load i32, i32* @OFF_LOWER_LT, align 4
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %473, label %449

449:                                              ; preds = %445
  %450 = load i32, i32* %26, align 4
  %451 = load i32, i32* @OFF_UPPER_LT, align 4
  %452 = icmp sgt i32 %450, %451
  br i1 %452, label %473, label %453

453:                                              ; preds = %449
  %454 = load i32, i32* %26, align 4
  %455 = load i32, i32* @OFF_LOWER_LT, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %473, label %457

457:                                              ; preds = %453
  %458 = load i32, i32* %28, align 4
  %459 = load i32, i32* @OFF_UPPER_LT, align 4
  %460 = icmp sgt i32 %458, %459
  br i1 %460, label %473, label %461

461:                                              ; preds = %457
  %462 = load i32, i32* %28, align 4
  %463 = load i32, i32* @OFF_LOWER_LT, align 4
  %464 = icmp slt i32 %462, %463
  br i1 %464, label %473, label %465

465:                                              ; preds = %461
  %466 = load i32, i32* %30, align 4
  %467 = load i32, i32* @OFF_UPPER_LT, align 4
  %468 = icmp sgt i32 %466, %467
  br i1 %468, label %473, label %469

469:                                              ; preds = %465
  %470 = load i32, i32* %30, align 4
  %471 = load i32, i32* @OFF_LOWER_LT, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %493

473:                                              ; preds = %469, %465, %461, %457, %453, %449, %445, %441, %437, %433, %429, %425
  %474 = load i32, i32* %24, align 4
  %475 = icmp eq i32 %474, 3
  br i1 %475, label %476, label %477

476:                                              ; preds = %473
  store i32 1, i32* %23, align 4
  br label %492

477:                                              ; preds = %473
  %478 = load i32, i32* %24, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %24, align 4
  %480 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %481 = load i32, i32* @AR_PHY_65NM_CH2_BB1, align 4
  %482 = call i32 @REG_READ(%struct.ath_hw* %480, i32 %481)
  %483 = and i32 %482, 1073741823
  store i32 %483, i32* %33, align 4
  %484 = load i32, i32* %24, align 4
  %485 = shl i32 %484, 30
  %486 = load i32, i32* %33, align 4
  %487 = or i32 %486, %485
  store i32 %487, i32* %33, align 4
  %488 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %489 = load i32, i32* @AR_PHY_65NM_CH2_BB1, align 4
  %490 = load i32, i32* %33, align 4
  %491 = call i32 @REG_WRITE(%struct.ath_hw* %488, i32 %489, i32 %490)
  store i32 0, i32* %23, align 4
  br label %492

492:                                              ; preds = %477, %476
  br label %494

493:                                              ; preds = %469
  store i32 1, i32* %23, align 4
  br label %494

494:                                              ; preds = %493, %492
  br label %80

495:                                              ; preds = %89
  %496 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %497 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %498 = load i32, i32* @AR_PHY_AGC_CONTROL_OFFSET_CAL, align 4
  %499 = call i32 @REG_CLR_BIT(%struct.ath_hw* %496, i32 %497, i32 %498)
  %500 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %501 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %502 = load i32, i32* @AR_PHY_ACTIVE_EN, align 4
  %503 = call i32 @REG_SET_BIT(%struct.ath_hw* %500, i32 %501, i32 %502)
  %504 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %505 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %506 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %507 = call i32 @REG_SET_BIT(%struct.ath_hw* %504, i32 %505, i32 %506)
  store i32 1, i32* %3, align 4
  br label %508

508:                                              ; preds = %495, %126, %59
  %509 = load i32, i32* %3, align 4
  ret i32 %509
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
