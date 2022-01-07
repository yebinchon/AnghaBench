; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9285_hw_pa_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9285_hw_pa_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.ath_hw*, i32)* }
%struct.ath_common = type { i32 }

@__const.ar9285_hw_pa_cal.regList = private unnamed_addr constant [7 x [2 x i32]] [[2 x i32] [i32 30828, i32 0], [2 x i32] [i32 30804, i32 0], [2 x i32] [i32 30752, i32 0], [2 x i32] [i32 30756, i32 0], [2 x i32] [i32 30824, i32 0], [2 x i32] [i32 30780, i32 0], [2 x i32] [i32 30776, i32 0]], align 16
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Running PA Calibration\0A\00", align 1
@EEP_TXGAIN_TYPE = common dso_local global i32 0, align 4
@AR5416_EEP_TXGAIN_HIGH_POWER = common dso_local global i64 0, align 8
@AR9285_AN_TOP3 = common dso_local global i32 0, align 4
@AR9285_AN_TOP3_PWDDAC = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1 = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDRXTXBB1 = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDV2I = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_PDDACIF = common dso_local global i32 0, align 4
@AR9285_AN_RF2G2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G2_OFFCAL = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7_PWDDB = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_ENPACAL = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPADRV1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPADRV2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G1_PDPAOUT = common dso_local global i32 0, align 4
@AR9285_AN_RF2G8 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G8_PADRVGN2TAB0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G7_PADRVGN2TAB0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G6 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G6_CCOMP = common dso_local global i32 0, align 4
@AR9285_AN_TOP2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G6_OFFS = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_PDVCCOMP = common dso_local global i32 0, align 4
@AR9285_AN_RXTXBB1_SPARE9 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G9 = common dso_local global i32 0, align 4
@MAX_PACAL_SKIPCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9285_hw_pa_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9285_hw_pa_cal(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [7 x [2 x i32]], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %5, align 8
  %16 = bitcast [7 x [2 x i32]]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([7 x [2 x i32]]* @__const.ar9285_hw_pa_cal.regList to i8*), i64 56, i1 false)
  %17 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %18 = load i32, i32* @CALIBRATE, align 4
  %19 = call i32 @ath_dbg(%struct.ath_common* %17, i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %23, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load i32, i32* @EEP_TXGAIN_TYPE, align 4
  %27 = call i64 %24(%struct.ath_hw* %25, i32 %26)
  %28 = load i64, i64* @AR5416_EEP_TXGAIN_HIGH_POWER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %309

31:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %13, i64 0, i64 0
  %35 = bitcast [2 x i32]* %34 to i32**
  %36 = call i32 @ARRAY_SIZE(i32** %35)
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %13, i64 0, i64 %41
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @REG_READ(%struct.ath_hw* %39, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %13, i64 0, i64 %47
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 1
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = call i32 @REG_READ(%struct.ath_hw* %54, i32 30772)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, -2
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %58, i32 30772, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = call i32 @REG_READ(%struct.ath_hw* %61, i32 38920)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, 134217728
  store i32 %64, i32* %6, align 4
  %65 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @REG_WRITE(%struct.ath_hw* %65, i32 38920, i32 %66)
  %68 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %69 = load i32, i32* @AR9285_AN_TOP3, align 4
  %70 = load i32, i32* @AR9285_AN_TOP3_PWDDAC, align 4
  %71 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %68, i32 %69, i32 %70, i32 1)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %73 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %74 = load i32, i32* @AR9285_AN_RXTXBB1_PDRXTXBB1, align 4
  %75 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %72, i32 %73, i32 %74, i32 1)
  %76 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %77 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %78 = load i32, i32* @AR9285_AN_RXTXBB1_PDV2I, align 4
  %79 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %76, i32 %77, i32 %78, i32 1)
  %80 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %81 = load i32, i32* @AR9285_AN_RXTXBB1, align 4
  %82 = load i32, i32* @AR9285_AN_RXTXBB1_PDDACIF, align 4
  %83 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %80, i32 %81, i32 %82, i32 1)
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = load i32, i32* @AR9285_AN_RF2G2, align 4
  %86 = load i32, i32* @AR9285_AN_RF2G2_OFFCAL, align 4
  %87 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %84, i32 %85, i32 %86, i32 0)
  %88 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %89 = load i32, i32* @AR9285_AN_RF2G7, align 4
  %90 = load i32, i32* @AR9285_AN_RF2G7_PWDDB, align 4
  %91 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %88, i32 %89, i32 %90, i32 0)
  %92 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %93 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %94 = load i32, i32* @AR9285_AN_RF2G1_ENPACAL, align 4
  %95 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %92, i32 %93, i32 %94, i32 0)
  %96 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %97 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %98 = load i32, i32* @AR9285_AN_RF2G1_PDPADRV1, align 4
  %99 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %96, i32 %97, i32 %98, i32 0)
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %102 = load i32, i32* @AR9285_AN_RF2G1_PDPADRV2, align 4
  %103 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %100, i32 %101, i32 %102, i32 0)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %105 = load i32, i32* @AR9285_AN_RF2G1, align 4
  %106 = load i32, i32* @AR9285_AN_RF2G1_PDPAOUT, align 4
  %107 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = load i32, i32* @AR9285_AN_RF2G8, align 4
  %110 = load i32, i32* @AR9285_AN_RF2G8_PADRVGN2TAB0, align 4
  %111 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %108, i32 %109, i32 %110, i32 7)
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = load i32, i32* @AR9285_AN_RF2G7, align 4
  %114 = load i32, i32* @AR9285_AN_RF2G7_PADRVGN2TAB0, align 4
  %115 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %117 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %118 = call i32 @REG_READ(%struct.ath_hw* %116, i32 %117)
  %119 = load i32, i32* @AR9285_AN_RF2G6_CCOMP, align 4
  %120 = call i32 @MS(i32 %118, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %123 = load i32, i32* @AR9285_AN_RF2G6_CCOMP, align 4
  %124 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %121, i32 %122, i32 %123, i32 15)
  %125 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %126 = load i32, i32* @AR9285_AN_TOP2, align 4
  %127 = call i32 @REG_WRITE(%struct.ath_hw* %125, i32 %126, i32 -905750368)
  %128 = call i32 @udelay(i32 30)
  %129 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %130 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %131 = load i32, i32* @AR9285_AN_RF2G6_OFFS, align 4
  %132 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %129, i32 %130, i32 %131, i32 0)
  %133 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %134 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %135 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %136 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %133, i32 %134, i32 %135, i32 0)
  store i32 6, i32* %7, align 4
  br label %137

137:                                              ; preds = %173, %53
  %138 = load i32, i32* %7, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %142 = call i32 @REG_READ(%struct.ath_hw* %141, i32 30772)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 19, %143
  %145 = shl i32 1, %144
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @REG_WRITE(%struct.ath_hw* %148, i32 30772, i32 %149)
  %151 = call i32 @udelay(i32 1)
  %152 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %153 = call i32 @REG_READ(%struct.ath_hw* %152, i32 30772)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 19, %154
  %156 = shl i32 1, %155
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %6, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = call i32 @REG_READ(%struct.ath_hw* %160, i32 30784)
  %162 = load i32, i32* @AR9285_AN_RXTXBB1_SPARE9, align 4
  %163 = call i32 @MS(i32 %161, i32 %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 19, %165
  %167 = shl i32 %164, %166
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  %170 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @REG_WRITE(%struct.ath_hw* %170, i32 30772, i32 %171)
  br label %173

173:                                              ; preds = %140
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %7, align 4
  br label %137

176:                                              ; preds = %137
  %177 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %178 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %179 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %180 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %177, i32 %178, i32 %179, i32 1)
  %181 = call i32 @udelay(i32 1)
  %182 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %183 = load i32, i32* @AR9285_AN_RF2G9, align 4
  %184 = call i32 @REG_READ(%struct.ath_hw* %182, i32 %183)
  %185 = load i32, i32* @AR9285_AN_RXTXBB1_SPARE9, align 4
  %186 = call i32 @MS(i32 %184, i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %188 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %189 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %187, i32 %188, i32 %189, i32 %190)
  %192 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %193 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %194 = call i32 @REG_READ(%struct.ath_hw* %192, i32 %193)
  %195 = load i32, i32* @AR9285_AN_RF2G6_OFFS, align 4
  %196 = call i32 @MS(i32 %194, i32 %195)
  store i32 %196, i32* %9, align 4
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %199 = call i32 @REG_READ(%struct.ath_hw* %197, i32 %198)
  %200 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %201 = call i32 @MS(i32 %199, i32 %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %9, align 4
  %203 = shl i32 %202, 1
  %204 = load i32, i32* %10, align 4
  %205 = or i32 %203, %204
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = sub nsw i32 %206, 0
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = ashr i32 %208, 1
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %8, align 4
  %211 = and i32 %210, 1
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %245, label %214

214:                                              ; preds = %176
  %215 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %216 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %245

221:                                              ; preds = %214
  %222 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %223 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @MAX_PACAL_SKIPCOUNT, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %221
  %229 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %230 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 2, %232
  %234 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %235 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  store i32 %233, i32* %236, align 4
  br label %237

237:                                              ; preds = %228, %221
  %238 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %239 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %243 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  br label %256

245:                                              ; preds = %214, %176
  %246 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %247 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  store i32 1, i32* %248, align 4
  %249 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %250 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 2
  store i32 0, i32* %251, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %254 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  store i32 %252, i32* %255, align 8
  br label %256

256:                                              ; preds = %245, %237
  %257 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %258 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %259 = load i32, i32* @AR9285_AN_RF2G6_OFFS, align 4
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %257, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %263 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %264 = load i32, i32* @AR9285_AN_RF2G3_PDVCCOMP, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %262, i32 %263, i32 %264, i32 %265)
  %267 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %268 = call i32 @REG_READ(%struct.ath_hw* %267, i32 30772)
  store i32 %268, i32* %6, align 4
  %269 = load i32, i32* %6, align 4
  %270 = or i32 %269, 1
  store i32 %270, i32* %6, align 4
  %271 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %272 = load i32, i32* %6, align 4
  %273 = call i32 @REG_WRITE(%struct.ath_hw* %271, i32 30772, i32 %272)
  %274 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %275 = call i32 @REG_READ(%struct.ath_hw* %274, i32 38920)
  store i32 %275, i32* %6, align 4
  %276 = load i32, i32* %6, align 4
  %277 = and i32 %276, -134217729
  store i32 %277, i32* %6, align 4
  %278 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @REG_WRITE(%struct.ath_hw* %278, i32 38920, i32 %279)
  store i32 0, i32* %7, align 4
  br label %281

281:                                              ; preds = %300, %256
  %282 = load i32, i32* %7, align 4
  %283 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %13, i64 0, i64 0
  %284 = bitcast [2 x i32]* %283 to i32**
  %285 = call i32 @ARRAY_SIZE(i32** %284)
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %303

287:                                              ; preds = %281
  %288 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %13, i64 0, i64 %290
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %291, i64 0, i64 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %13, i64 0, i64 %295
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %296, i64 0, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @REG_WRITE(%struct.ath_hw* %288, i32 %293, i32 %298)
  br label %300

300:                                              ; preds = %287
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  br label %281

303:                                              ; preds = %281
  %304 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %305 = load i32, i32* @AR9285_AN_RF2G6, align 4
  %306 = load i32, i32* @AR9285_AN_RF2G6_CCOMP, align 4
  %307 = load i32, i32* %11, align 4
  %308 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %304, i32 %305, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %303, %30
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
