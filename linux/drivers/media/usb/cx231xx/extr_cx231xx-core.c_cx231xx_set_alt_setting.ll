; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_set_alt_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_set_alt_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64*, i64 }
%struct.TYPE_12__ = type { i32, i64*, i64 }
%struct.TYPE_11__ = type { i32, i64*, i64 }
%struct.TYPE_10__ = type { i32, i64*, i64 }

@.str = private unnamed_addr constant [60 x i8] c"can't change interface %d alt no. to %d: Max. Pkt size = 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"setting alternate %d with wMaxPacketSize=%u,Interface = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"can't change interface %d alt no. to %d (err=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %210 [
    i32 131, label %12
    i32 130, label %48
    i32 133, label %59
    i32 128, label %95
    i32 129, label %131
    i32 132, label %174
  ]

12:                                               ; preds = %3
  %13 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %12
  %33 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  store i64 %43, i64* %46, align 8
  store i64 %43, i64* %10, align 8
  br label %47

47:                                               ; preds = %32, %12
  br label %211

48:                                               ; preds = %3
  %49 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %50 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  br label %211

59:                                               ; preds = %3
  %60 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %61 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %72 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %59
  %80 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %85 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %83, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %92 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i64 %90, i64* %93, align 8
  store i64 %90, i64* %10, align 8
  br label %94

94:                                               ; preds = %79, %59
  br label %211

95:                                               ; preds = %3
  %96 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %97 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %111 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %95
  %116 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %117 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %121 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %119, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %128 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  store i64 %126, i64* %129, align 8
  store i64 %126, i64* %10, align 8
  br label %130

130:                                              ; preds = %115, %95
  br label %211

131:                                              ; preds = %3
  %132 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %133 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %259

138:                                              ; preds = %131
  %139 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %140 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %9, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %151 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %154 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %158, label %173

158:                                              ; preds = %138
  %159 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %160 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %164 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %162, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %171 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  store i64 %169, i64* %172, align 8
  store i64 %169, i64* %10, align 8
  br label %173

173:                                              ; preds = %158, %138
  br label %211

174:                                              ; preds = %3
  %175 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %176 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %9, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %187 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %190 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = icmp ne i64* %192, null
  br i1 %193, label %194, label %209

194:                                              ; preds = %174
  %195 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %196 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %200 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %198, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %207 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 2
  store i64 %205, i64* %208, align 8
  store i64 %205, i64* %10, align 8
  br label %209

209:                                              ; preds = %194, %174
  br label %211

210:                                              ; preds = %3
  br label %211

211:                                              ; preds = %210, %209, %173, %130, %94, %48, %47
  %212 = load i32, i32* %7, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = load i64, i64* %10, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %214
  %218 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %219 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i64, i64* %9, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 (i32, i8*, i64, i32, ...) @dev_err(i32 %220, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %221, i32 %222)
  %224 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %225 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %217
  store i32 -1, i32* %4, align 4
  br label %259

230:                                              ; preds = %217
  br label %231

231:                                              ; preds = %230, %214, %211
  %232 = load i32, i32* %7, align 4
  %233 = load i64, i64* %10, align 8
  %234 = load i64, i64* %9, align 8
  %235 = call i32 @cx231xx_coredbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %232, i64 %233, i64 %234)
  %236 = load i64, i64* %9, align 8
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %231
  %239 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %240 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i64, i64* %9, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @usb_set_interface(i32 %241, i64 %242, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %238
  %248 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %249 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i64, i64* %9, align 8
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* %8, align 4
  %254 = call i32 (i32, i8*, i64, i32, ...) @dev_err(i32 %250, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %251, i32 %252, i32 %253)
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* %4, align 4
  br label %259

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256, %231
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %257, %247, %229, %137
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @dev_err(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @cx231xx_coredbg(i8*, i32, i64, i64) #1

declare dso_local i32 @usb_set_interface(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
