; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_copy_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_copy_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i64 }
%struct.em28xx_buffer = type { i64, i64, i8*, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Overflow of %zu bytes past buffer end (1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Overflow of %zu bytes past buffer end(2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, %struct.em28xx_buffer*, i8*, i64)* @em28xx_copy_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_copy_video(%struct.em28xx* %0, %struct.em28xx_buffer* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.em28xx*, align 8
  %6 = alloca %struct.em28xx_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.em28xx_v4l2*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %5, align 8
  store %struct.em28xx_buffer* %1, %struct.em28xx_buffer** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 0
  %21 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %20, align 8
  store %struct.em28xx_v4l2* %21, %struct.em28xx_v4l2** %9, align 8
  %22 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %23 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 1
  store i32 %25, i32* %18, align 4
  %26 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %35, %4
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %12, align 8
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %48 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %43
  %57 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  br label %67

60:                                               ; preds = %51
  %61 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %60, %56
  %68 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %70, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = urem i64 %77, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %83 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %67
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %18, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %15, align 4
  br label %99

92:                                               ; preds = %67
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %18, align 4
  %95 = mul nsw i32 %93, %94
  %96 = mul nsw i32 %95, 2
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %92, %86
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr i8, i8* %100, i64 %102
  store i8* %103, i8** %11, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* %17, align 4
  br label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %16, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %16, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %121 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %124 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = icmp ugt i8* %119, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %114
  %129 = load i8*, i8** %11, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %134 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %137 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = ptrtoint i8* %132 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %146 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %149 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i8*, i8** %11, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %128, %114
  %159 = load i32, i32* %16, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %263

162:                                              ; preds = %158
  %163 = load i8*, i8** %11, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @memcpy(i8* %163, i8* %164, i32 %165)
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %17, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %17, align 4
  br label %170

170:                                              ; preds = %249, %162
  %171 = load i32, i32* %17, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %257

173:                                              ; preds = %170
  %174 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %175 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* %16, align 4
  %180 = load i8*, i8** %11, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr i8, i8* %180, i64 %181
  store i8* %182, i8** %11, align 8
  br label %190

183:                                              ; preds = %173
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i8*, i8** %11, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr i8, i8* %187, i64 %188
  store i8* %189, i8** %11, align 8
  br label %190

190:                                              ; preds = %183, %178
  %191 = load i32, i32* %16, align 4
  %192 = load i8*, i8** %12, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr i8, i8* %192, i64 %193
  store i8* %194, i8** %12, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %17, align 4
  store i32 %199, i32* %16, align 4
  br label %202

200:                                              ; preds = %190
  %201 = load i32, i32* %18, align 4
  store i32 %201, i32* %16, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = load i8*, i8** %11, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %208 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %211 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  %214 = icmp ugt i8* %206, %213
  br i1 %214, label %215, label %245

215:                                              ; preds = %202
  %216 = load i8*, i8** %11, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %221 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %224 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  %227 = ptrtoint i8* %219 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  %231 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %230)
  %232 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %233 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %236 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  %239 = load i8*, i8** %11, align 8
  %240 = ptrtoint i8* %238 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %17, align 4
  store i32 %244, i32* %16, align 4
  br label %245

245:                                              ; preds = %215, %202
  %246 = load i32, i32* %16, align 4
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  br label %257

249:                                              ; preds = %245
  %250 = load i8*, i8** %11, align 8
  %251 = load i8*, i8** %12, align 8
  %252 = load i32, i32* %16, align 4
  %253 = call i32 @memcpy(i8* %250, i8* %251, i32 %252)
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %17, align 4
  %256 = sub nsw i32 %255, %254
  store i32 %256, i32* %17, align 4
  br label %170

257:                                              ; preds = %248, %170
  %258 = load i64, i64* %8, align 8
  %259 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %6, align 8
  %260 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %261, %258
  store i64 %262, i64* %260, align 8
  br label %263

263:                                              ; preds = %257, %161
  ret void
}

declare dso_local i32 @em28xx_isocdbg(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
