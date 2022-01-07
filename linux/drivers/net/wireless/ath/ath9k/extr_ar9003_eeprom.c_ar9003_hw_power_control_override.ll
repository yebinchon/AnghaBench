; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_power_control_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_power_control_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_13__, i32*, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@AR_PHY_TPC_11_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA_S = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_ERROR_EST_MODE_S = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_ERROR_EST_MODE = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_ALPHA_THERM = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_B1_ALPHA_THERM = common dso_local global i32 0, align 4
@AR_PHY_TPC_18 = common dso_local global i32 0, align 4
@AR_PHY_TPC_18_THERM_CAL_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32*, i32*, i32*)* @ar9003_hw_power_control_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_power_control_override(%struct.ath_hw* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ar9300_eeprom*, align 8
  %15 = alloca [8 x i32], align 16
  %16 = alloca [8 x i32], align 16
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.ar9300_eeprom* %23, %struct.ar9300_eeprom** %14, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %25 = load i32, i32* @AR_PHY_TPC_11_B0, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %32 = call i32 @REG_RMW(%struct.ath_hw* %24, i32 %25, i32 %30, i32 %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @BIT(i32 1)
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %5
  %41 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %42 = load i32, i32* @AR_PHY_TPC_11_B1, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %49 = call i32 @REG_RMW(%struct.ath_hw* %41, i32 %42, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %5
  %51 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @BIT(i32 2)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %60 = load i32, i32* @AR_PHY_TPC_11_B2, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %67 = call i32 @REG_RMW(%struct.ath_hw* %59, i32 %60, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %50
  %69 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %70 = load i32, i32* @AR_PHY_TPC_6_B0, align 4
  %71 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %72 = shl i32 3, %71
  %73 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %74 = call i32 @REG_RMW(%struct.ath_hw* %69, i32 %70, i32 %72, i32 %73)
  %75 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @BIT(i32 1)
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %68
  %83 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %84 = load i32, i32* @AR_PHY_TPC_6_B1, align 4
  %85 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %86 = shl i32 3, %85
  %87 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %88 = call i32 @REG_RMW(%struct.ath_hw* %83, i32 %84, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %68
  %90 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %91 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @BIT(i32 2)
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %99 = load i32, i32* @AR_PHY_TPC_6_B2, align 4
  %100 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %101 = shl i32 3, %100
  %102 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %103 = call i32 @REG_RMW(%struct.ath_hw* %98, i32 %99, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %89
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 4000
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %109 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %11, align 4
  br label %271

112:                                              ; preds = %104
  %113 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %114 = call i64 @AR_SREV_9550(%struct.ath_hw* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %193

116:                                              ; preds = %112
  %117 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %118 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %122, i32* %123, align 16
  %124 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %125 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %129, i32* %130, align 4
  %131 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %132 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 5180, i32* %138, align 16
  %139 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %140 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %142, i32* %143, align 4
  %144 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %145 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %149, i32* %150, align 4
  %151 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %152 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 5500, i32* %158, align 4
  %159 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %160 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %164, i32* %165, align 8
  %166 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %167 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 6
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %171, i32* %172, align 4
  %173 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %174 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 7
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 5785, i32* %180, align 8
  %181 = load i32, i32* %7, align 4
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %184 = call i32 @ar9003_hw_power_interpolate(i32 %181, i32* %182, i32* %183, i32 3)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %7, align 4
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %188 = call i32 @ar9003_hw_power_interpolate(i32 %185, i32* %186, i32* %187, i32 3)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %7, align 4
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %191 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %192 = call i32 @ar9003_hw_power_interpolate(i32 %189, i32* %190, i32* %191, i32 3)
  store i32 %192, i32* %13, align 4
  br label %272

193:                                              ; preds = %112
  %194 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %195 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, 32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %235

200:                                              ; preds = %193
  store i32 0, i32* %19, align 4
  br label %201

201:                                              ; preds = %227, %200
  %202 = load i32, i32* %19, align 4
  %203 = icmp slt i32 %202, 8
  br i1 %203, label %204, label %230

204:                                              ; preds = %201
  %205 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %206 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %19, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %214
  store i32 %212, i32* %215, align 4
  %216 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %217 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @FBIN2FREQ(i32 %222, i32 0)
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %225
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %204
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %201

230:                                              ; preds = %201
  %231 = load i32, i32* %7, align 4
  %232 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %234 = call i32 @ar9003_hw_power_interpolate(i32 %231, i32* %232, i32* %233, i32 8)
  store i32 %234, i32* %11, align 4
  br label %270

235:                                              ; preds = %193
  %236 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %237 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %264

241:                                              ; preds = %235
  %242 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %243 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %245, i32* %246, align 16
  %247 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 5180, i32* %247, align 16
  %248 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %249 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %251, i32* %252, align 4
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 5500, i32* %253, align 4
  %254 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %255 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %257, i32* %258, align 8
  %259 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 5785, i32* %259, align 8
  %260 = load i32, i32* %7, align 4
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %262 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %263 = call i32 @ar9003_hw_power_interpolate(i32 %260, i32* %261, i32* %262, i32 3)
  store i32 %263, i32* %11, align 4
  br label %269

264:                                              ; preds = %235
  %265 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %266 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %264, %241
  br label %270

270:                                              ; preds = %269, %230
  br label %271

271:                                              ; preds = %270, %107
  br label %272

272:                                              ; preds = %271, %116
  %273 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %274 = call i64 @AR_SREV_9550(%struct.ath_hw* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %272
  %277 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %278 = call i64 @AR_SREV_9531(%struct.ath_hw* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %276
  %281 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %282 = call i64 @AR_SREV_9561(%struct.ath_hw* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %407

284:                                              ; preds = %280, %276, %272
  %285 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %286 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 240
  %290 = ashr i32 %289, 4
  store i32 %290, i32* %20, align 4
  %291 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %292 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = and i32 %294, 1
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %375

297:                                              ; preds = %284
  %298 = load i32, i32* %7, align 4
  %299 = icmp slt i32 %298, 4000
  br i1 %299, label %300, label %340

300:                                              ; preds = %297
  %301 = load i32, i32* %20, align 4
  %302 = call i32 @BIT(i32 0)
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %300
  %306 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %307 = load i32, i32* @AR_PHY_TPC_19, align 4
  %308 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %309 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %310 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %306, i32 %307, i32 %308, i32 %312)
  br label %314

314:                                              ; preds = %305, %300
  %315 = load i32, i32* %20, align 4
  %316 = call i32 @BIT(i32 1)
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %321 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %322 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %323 = load i32, i32* %11, align 4
  %324 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %320, i32 %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %319, %314
  %326 = load i32, i32* %20, align 4
  %327 = call i32 @BIT(i32 2)
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %325
  %331 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %332 = load i32, i32* @AR_PHY_TPC_19_B2, align 4
  %333 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %334 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %335 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %331, i32 %332, i32 %333, i32 %337)
  br label %339

339:                                              ; preds = %330, %325
  br label %374

340:                                              ; preds = %297
  %341 = load i32, i32* %20, align 4
  %342 = call i32 @BIT(i32 0)
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %347 = load i32, i32* @AR_PHY_TPC_19, align 4
  %348 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %349 = load i32, i32* %11, align 4
  %350 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %346, i32 %347, i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %345, %340
  %352 = load i32, i32* %20, align 4
  %353 = call i32 @BIT(i32 1)
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %351
  %357 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %358 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %359 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %360 = load i32, i32* %12, align 4
  %361 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %357, i32 %358, i32 %359, i32 %360)
  br label %362

362:                                              ; preds = %356, %351
  %363 = load i32, i32* %20, align 4
  %364 = call i32 @BIT(i32 2)
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %362
  %368 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %369 = load i32, i32* @AR_PHY_TPC_19_B2, align 4
  %370 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %371 = load i32, i32* %13, align 4
  %372 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %368, i32 %369, i32 %370, i32 %371)
  br label %373

373:                                              ; preds = %367, %362
  br label %374

374:                                              ; preds = %373, %339
  br label %406

375:                                              ; preds = %284
  %376 = load i32, i32* %20, align 4
  %377 = call i32 @BIT(i32 0)
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %375
  %381 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %382 = load i32, i32* @AR_PHY_TPC_19, align 4
  %383 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %384 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %381, i32 %382, i32 %383, i32 0)
  br label %385

385:                                              ; preds = %380, %375
  %386 = load i32, i32* %20, align 4
  %387 = call i32 @BIT(i32 1)
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %385
  %391 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %392 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %393 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %394 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %391, i32 %392, i32 %393, i32 0)
  br label %395

395:                                              ; preds = %390, %385
  %396 = load i32, i32* %20, align 4
  %397 = call i32 @BIT(i32 2)
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %402 = load i32, i32* @AR_PHY_TPC_19_B2, align 4
  %403 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %404 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %401, i32 %402, i32 %403, i32 0)
  br label %405

405:                                              ; preds = %400, %395
  br label %406

406:                                              ; preds = %405, %374
  br label %413

407:                                              ; preds = %280
  %408 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %409 = load i32, i32* @AR_PHY_TPC_19, align 4
  %410 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %411 = load i32, i32* %11, align 4
  %412 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %408, i32 %409, i32 %410, i32 %411)
  br label %413

413:                                              ; preds = %407, %406
  %414 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %415 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %413
  %418 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %419 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %420 = load i32, i32* @AR_PHY_TPC_19_B1_ALPHA_THERM, align 4
  %421 = load i32, i32* %11, align 4
  %422 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %418, i32 %419, i32 %420, i32 %421)
  br label %423

423:                                              ; preds = %417, %413
  %424 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %425 = load i32, i32* @AR_PHY_TPC_18, align 4
  %426 = load i32, i32* @AR_PHY_TPC_18_THERM_CAL_VALUE, align 4
  %427 = load i32*, i32** %10, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %424, i32 %425, i32 %426, i32 %429)
  ret void
}

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_power_interpolate(i32, i32*, i32*, i32) #1

declare dso_local i32 @FBIN2FREQ(i32, i32) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
