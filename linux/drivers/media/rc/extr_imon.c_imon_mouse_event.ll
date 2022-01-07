; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_mouse_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_mouse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i32, i64, i64, i32, i32, i32 }

@KEY_CHANNELUP = common dso_local global i64 0, align 8
@KEY_CHANNELDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"sending mouse data via input subsystem\0A\00", align 1
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imon_context*, i8*, i32)* @imon_mouse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imon_mouse_event(%struct.imon_context* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.imon_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.imon_context* %0, %struct.imon_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %14 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %13, i32 0, i32 3
  %15 = load i64, i64* %12, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %18 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 65500
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %8, align 1
  store i32 1, i32* %9, align 4
  br label %203

38:                                               ; preds = %28, %21, %3
  %39 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %40 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 65500
  br i1 %42, label %43, label %158

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 64
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %158

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %158, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 2
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %158, label %65

65:                                               ; preds = %57
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 16
  %76 = ashr i32 %75, 2
  %77 = or i32 %70, %76
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 32
  %83 = ashr i32 %82, 4
  %84 = or i32 %77, %83
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 64
  %90 = ashr i32 %89, 6
  %91 = or i32 %84, %90
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %7, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 2
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %65
  %100 = load i8, i8* %7, align 1
  %101 = sext i8 %100 to i32
  %102 = or i32 %101, -16
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %7, align 1
  br label %104

104:                                              ; preds = %99, %65
  %105 = load i8, i8* %7, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8, i8* %7, align 1
  %108 = sext i8 %107 to i32
  %109 = sdiv i32 %108, 2
  %110 = add nsw i32 %106, %109
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %7, align 1
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 8
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 16
  %122 = ashr i32 %121, 2
  %123 = or i32 %116, %122
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 32
  %129 = ashr i32 %128, 4
  %130 = or i32 %123, %129
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 64
  %136 = ashr i32 %135, 6
  %137 = or i32 %130, %136
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %8, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %104
  %146 = load i8, i8* %8, align 1
  %147 = sext i8 %146 to i32
  %148 = or i32 %147, -16
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %8, align 1
  br label %150

150:                                              ; preds = %145, %104
  %151 = load i8, i8* %8, align 1
  %152 = sext i8 %151 to i32
  %153 = load i8, i8* %8, align 1
  %154 = sext i8 %153 to i32
  %155 = sdiv i32 %154, 2
  %156 = add nsw i32 %152, %155
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %8, align 1
  store i32 2, i32* %9, align 4
  br label %202

158:                                              ; preds = %57, %50, %43, %38
  %159 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %160 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 65500
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %167, 104
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 2, i32* %9, align 4
  br label %201

170:                                              ; preds = %163, %158
  %171 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %172 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @KEY_CHANNELUP, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 2
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 64
  %182 = icmp ne i32 %181, 64
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 1, i32* %11, align 4
  br label %200

184:                                              ; preds = %176, %170
  %185 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %186 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @KEY_CHANNELDOWN, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %184
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 64
  %196 = icmp ne i32 %195, 64
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  store i32 -1, i32* %11, align 4
  br label %199

198:                                              ; preds = %190, %184
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %198, %197
  br label %200

200:                                              ; preds = %199, %183
  br label %201

201:                                              ; preds = %200, %169
  br label %202

202:                                              ; preds = %201, %150
  br label %203

203:                                              ; preds = %202, %31
  %204 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %205 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %204, i32 0, i32 3
  %206 = load i64, i64* %12, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %290

210:                                              ; preds = %203
  %211 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %212 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @dev_dbg(i32 %213, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %210
  %218 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %219 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @REL_WHEEL, align 4
  %222 = load i32, i32* %11, align 4
  %223 = trunc i32 %222 to i8
  %224 = call i32 @input_report_rel(i32 %220, i32 %221, i8 signext %223)
  br label %272

225:                                              ; preds = %210
  %226 = load i8, i8* %7, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i8, i8* %8, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %229, %225
  %234 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %235 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @REL_X, align 4
  %238 = load i8, i8* %7, align 1
  %239 = call i32 @input_report_rel(i32 %236, i32 %237, i8 signext %238)
  %240 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %241 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @REL_Y, align 4
  %244 = load i8, i8* %8, align 1
  %245 = call i32 @input_report_rel(i32 %242, i32 %243, i8 signext %244)
  br label %271

246:                                              ; preds = %229
  %247 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %248 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @BTN_LEFT, align 4
  %251 = load i8*, i8** %5, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = and i32 %254, 1
  %256 = trunc i32 %255 to i8
  %257 = call i32 @input_report_key(i32 %249, i32 %250, i8 zeroext %256)
  %258 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %259 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @BTN_RIGHT, align 4
  %262 = load i8*, i8** %5, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = load i32, i32* %9, align 4
  %267 = ashr i32 %265, %266
  %268 = and i32 %267, 1
  %269 = trunc i32 %268 to i8
  %270 = call i32 @input_report_key(i32 %260, i32 %261, i8 zeroext %269)
  br label %271

271:                                              ; preds = %246, %233
  br label %272

272:                                              ; preds = %271, %217
  %273 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %274 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @input_sync(i32 %275)
  %277 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %278 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %277, i32 0, i32 3
  %279 = load i64, i64* %12, align 8
  %280 = call i32 @spin_lock_irqsave(i32* %278, i64 %279)
  %281 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %282 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %285 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %284, i32 0, i32 2
  store i64 %283, i64* %285, align 8
  %286 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %287 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %286, i32 0, i32 3
  %288 = load i64, i64* %12, align 8
  %289 = call i32 @spin_unlock_irqrestore(i32* %287, i64 %288)
  br label %290

290:                                              ; preds = %272, %203
  %291 = load i32, i32* %10, align 4
  ret i32 %291
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @input_report_rel(i32, i32, i8 signext) #1

declare dso_local i32 @input_report_key(i32, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
