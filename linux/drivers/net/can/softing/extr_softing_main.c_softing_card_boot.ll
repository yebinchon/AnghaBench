; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_card_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_card_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { i32, %struct.TYPE_15__, %struct.TYPE_16__*, %struct.TYPE_14__*, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@softing_card_boot.stream = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dpram failed at 0x%04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"card boot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.softing*)* @softing_card_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softing_card_boot(%struct.softing* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.softing*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store %struct.softing* %0, %struct.softing** %3, align 8
  %7 = load %struct.softing*, %struct.softing** %3, align 8
  %8 = getelementptr inbounds %struct.softing, %struct.softing* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ERESTARTSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %266

15:                                               ; preds = %1
  %16 = load %struct.softing*, %struct.softing** %3, align 8
  %17 = getelementptr inbounds %struct.softing, %struct.softing* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.softing*, %struct.softing** %3, align 8
  %23 = getelementptr inbounds %struct.softing, %struct.softing* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 0, i32* %2, align 4
  br label %266

26:                                               ; preds = %15
  %27 = load %struct.softing*, %struct.softing** %3, align 8
  %28 = getelementptr inbounds %struct.softing, %struct.softing* %27, i32 0, i32 3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_16__*, i32)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.softing*, %struct.softing** %3, align 8
  %35 = getelementptr inbounds %struct.softing, %struct.softing* %34, i32 0, i32 3
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %37, align 8
  %39 = load %struct.softing*, %struct.softing** %3, align 8
  %40 = getelementptr inbounds %struct.softing, %struct.softing* %39, i32 0, i32 2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = call i32 %38(%struct.TYPE_16__* %41, i32 1)
  br label %43

43:                                               ; preds = %33, %26
  %44 = load %struct.softing*, %struct.softing** %3, align 8
  %45 = call i32 @softing_set_reset_dpram(%struct.softing* %44)
  %46 = load %struct.softing*, %struct.softing** %3, align 8
  %47 = getelementptr inbounds %struct.softing, %struct.softing* %46, i32 0, i32 3
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_16__*, i32)* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct.softing*, %struct.softing** %3, align 8
  %54 = getelementptr inbounds %struct.softing, %struct.softing* %53, i32 0, i32 3
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %56, align 8
  %58 = load %struct.softing*, %struct.softing** %3, align 8
  %59 = getelementptr inbounds %struct.softing, %struct.softing* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = call i32 %57(%struct.TYPE_16__* %60, i32 1)
  br label %62

62:                                               ; preds = %52, %43
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %102, %62
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 64
  %67 = load %struct.softing*, %struct.softing** %3, align 8
  %68 = getelementptr inbounds %struct.softing, %struct.softing* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %63
  %73 = load %struct.softing*, %struct.softing** %3, align 8
  %74 = getelementptr inbounds %struct.softing, %struct.softing* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @memcpy_toio(i32* %78, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @softing_card_boot.stream, i64 0, i64 0), i32 64)
  %80 = call i32 (...) @mb()
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %82 = load %struct.softing*, %struct.softing** %3, align 8
  %83 = getelementptr inbounds %struct.softing, %struct.softing* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @memcpy_fromio(i8* %81, i32* %87, i32 64)
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %90 = call i32 @memcmp(i8* %89, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @softing_card_boot.stream, i64 0, i64 0), i32 64)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %72
  br label %102

93:                                               ; preds = %72
  %94 = load %struct.softing*, %struct.softing** %3, align 8
  %95 = getelementptr inbounds %struct.softing, %struct.softing* %94, i32 0, i32 2
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dev_alert(i32* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %221

102:                                              ; preds = %92
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 64
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %63

107:                                              ; preds = %63
  %108 = call i32 (...) @wmb()
  %109 = load %struct.softing*, %struct.softing** %3, align 8
  %110 = getelementptr inbounds %struct.softing, %struct.softing* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.softing*, %struct.softing** %3, align 8
  %116 = load %struct.softing*, %struct.softing** %3, align 8
  %117 = getelementptr inbounds %struct.softing, %struct.softing* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.softing*, %struct.softing** %3, align 8
  %120 = getelementptr inbounds %struct.softing, %struct.softing* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.softing*, %struct.softing** %3, align 8
  %123 = getelementptr inbounds %struct.softing, %struct.softing* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.softing*, %struct.softing** %3, align 8
  %129 = getelementptr inbounds %struct.softing, %struct.softing* %128, i32 0, i32 3
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %127, %133
  %135 = call i32 @softing_load_fw(i32 %114, %struct.softing* %115, i32* %118, i32 %121, i64 %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %107
  br label %221

139:                                              ; preds = %107
  %140 = load %struct.softing*, %struct.softing** %3, align 8
  %141 = getelementptr inbounds %struct.softing, %struct.softing* %140, i32 0, i32 3
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.softing*, %struct.softing** %3, align 8
  %147 = load %struct.softing*, %struct.softing** %3, align 8
  %148 = getelementptr inbounds %struct.softing, %struct.softing* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.softing*, %struct.softing** %3, align 8
  %151 = getelementptr inbounds %struct.softing, %struct.softing* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.softing*, %struct.softing** %3, align 8
  %154 = getelementptr inbounds %struct.softing, %struct.softing* %153, i32 0, i32 3
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.softing*, %struct.softing** %3, align 8
  %160 = getelementptr inbounds %struct.softing, %struct.softing* %159, i32 0, i32 3
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %158, %164
  %166 = call i32 @softing_load_fw(i32 %145, %struct.softing* %146, i32* %149, i32 %152, i64 %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %139
  br label %221

170:                                              ; preds = %139
  %171 = load %struct.softing*, %struct.softing** %3, align 8
  %172 = getelementptr inbounds %struct.softing, %struct.softing* %171, i32 0, i32 3
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %174, align 8
  %176 = icmp ne i32 (%struct.TYPE_16__*, i32)* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %170
  %178 = load %struct.softing*, %struct.softing** %3, align 8
  %179 = getelementptr inbounds %struct.softing, %struct.softing* %178, i32 0, i32 3
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %181, align 8
  %183 = load %struct.softing*, %struct.softing** %3, align 8
  %184 = getelementptr inbounds %struct.softing, %struct.softing* %183, i32 0, i32 2
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = call i32 %182(%struct.TYPE_16__* %185, i32 0)
  br label %187

187:                                              ; preds = %177, %170
  %188 = load %struct.softing*, %struct.softing** %3, align 8
  %189 = call i32 @softing_clr_reset_dpram(%struct.softing* %188)
  %190 = load %struct.softing*, %struct.softing** %3, align 8
  %191 = call i32 @softing_bootloader_command(%struct.softing* %190, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %221

195:                                              ; preds = %187
  %196 = load %struct.softing*, %struct.softing** %3, align 8
  %197 = getelementptr inbounds %struct.softing, %struct.softing* %196, i32 0, i32 3
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.softing*, %struct.softing** %3, align 8
  %203 = call i32 @softing_load_app_fw(i32 %201, %struct.softing* %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %195
  br label %221

207:                                              ; preds = %195
  %208 = load %struct.softing*, %struct.softing** %3, align 8
  %209 = call i32 @softing_chip_poweron(%struct.softing* %208)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %221

213:                                              ; preds = %207
  %214 = load %struct.softing*, %struct.softing** %3, align 8
  %215 = getelementptr inbounds %struct.softing, %struct.softing* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  store i32 1, i32* %216, align 4
  %217 = load %struct.softing*, %struct.softing** %3, align 8
  %218 = getelementptr inbounds %struct.softing, %struct.softing* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = call i32 @mutex_unlock(i32* %219)
  store i32 0, i32* %2, align 4
  br label %266

221:                                              ; preds = %212, %206, %194, %169, %138, %93
  %222 = load %struct.softing*, %struct.softing** %3, align 8
  %223 = getelementptr inbounds %struct.softing, %struct.softing* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  store i32 0, i32* %224, align 4
  %225 = load %struct.softing*, %struct.softing** %3, align 8
  %226 = getelementptr inbounds %struct.softing, %struct.softing* %225, i32 0, i32 3
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  %229 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %228, align 8
  %230 = icmp ne i32 (%struct.TYPE_16__*, i32)* %229, null
  br i1 %230, label %231, label %241

231:                                              ; preds = %221
  %232 = load %struct.softing*, %struct.softing** %3, align 8
  %233 = getelementptr inbounds %struct.softing, %struct.softing* %232, i32 0, i32 3
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %235, align 8
  %237 = load %struct.softing*, %struct.softing** %3, align 8
  %238 = getelementptr inbounds %struct.softing, %struct.softing* %237, i32 0, i32 2
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  %240 = call i32 %236(%struct.TYPE_16__* %239, i32 0)
  br label %241

241:                                              ; preds = %231, %221
  %242 = load %struct.softing*, %struct.softing** %3, align 8
  %243 = call i32 @softing_set_reset_dpram(%struct.softing* %242)
  %244 = load %struct.softing*, %struct.softing** %3, align 8
  %245 = getelementptr inbounds %struct.softing, %struct.softing* %244, i32 0, i32 3
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  %248 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %247, align 8
  %249 = icmp ne i32 (%struct.TYPE_16__*, i32)* %248, null
  br i1 %249, label %250, label %260

250:                                              ; preds = %241
  %251 = load %struct.softing*, %struct.softing** %3, align 8
  %252 = getelementptr inbounds %struct.softing, %struct.softing* %251, i32 0, i32 3
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %254, align 8
  %256 = load %struct.softing*, %struct.softing** %3, align 8
  %257 = getelementptr inbounds %struct.softing, %struct.softing* %256, i32 0, i32 2
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = call i32 %255(%struct.TYPE_16__* %258, i32 1)
  br label %260

260:                                              ; preds = %250, %241
  %261 = load %struct.softing*, %struct.softing** %3, align 8
  %262 = getelementptr inbounds %struct.softing, %struct.softing* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  %264 = call i32 @mutex_unlock(i32* %263)
  %265 = load i32, i32* %4, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %260, %213, %21, %12
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @softing_set_reset_dpram(%struct.softing*) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @memcpy_fromio(i8*, i32*, i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @dev_alert(i32*, i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @softing_load_fw(i32, %struct.softing*, i32*, i32, i64) #1

declare dso_local i32 @softing_clr_reset_dpram(%struct.softing*) #1

declare dso_local i32 @softing_bootloader_command(%struct.softing*, i32, i8*) #1

declare dso_local i32 @softing_load_app_fw(i32, %struct.softing*) #1

declare dso_local i32 @softing_chip_poweron(%struct.softing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
