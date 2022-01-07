; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i64, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32*, i8*, %struct.tpg_data }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.tpg_data = type { i32* }
%struct.vivid_buffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*, %struct.vivid_buffer*)* @vivid_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_overlay(%struct.vivid_dev* %0, %struct.vivid_buffer* %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca %struct.vivid_buffer*, align 8
  %5 = alloca %struct.tpg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store %struct.vivid_buffer* %1, %struct.vivid_buffer** %4, align 8
  %18 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %18, i32 0, i32 8
  store %struct.tpg_data* %19, %struct.tpg_data** %5, align 8
  %20 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %21 = call i32 @tpg_g_twopixelsize(%struct.tpg_data* %20, i32 0)
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 7
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = call i8* @vb2_plane_vaddr(i32* %28, i32 0)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %39 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %49 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br label %52

52:                                               ; preds = %47, %2
  %53 = phi i1 [ false, %2 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %260

61:                                               ; preds = %52
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67, %61
  %74 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %75 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %78 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %260

83:                                               ; preds = %73, %67
  %84 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %85 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = mul i32 %87, %88
  %90 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %91 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul i32 %93, %94
  %96 = add i32 %89, %95
  %97 = load i8*, i8** %8, align 8
  %98 = zext i32 %96 to i64
  %99 = getelementptr i8, i8* %97, i64 %98
  store i8* %99, i8** %8, align 8
  %100 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %101 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %83
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %126

112:                                              ; preds = %83
  %113 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %114 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %123, %112
  br label %126

126:                                              ; preds = %125, %106
  %127 = load i32, i32* %15, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %260

130:                                              ; preds = %126
  %131 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %132 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %137 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %140 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %138, %143
  %145 = load i8*, i8** %7, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr i8, i8* %145, i64 %146
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %135, %130
  %149 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %150 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %253, %148
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %155 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %156, %157
  %159 = icmp slt i32 %153, %158
  br i1 %159, label %160, label %260

160:                                              ; preds = %152
  %161 = load i32, i32* %14, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %166 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %164, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %163, %160
  br label %253

172:                                              ; preds = %163
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %200

175:                                              ; preds = %172
  %176 = load i8*, i8** %7, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %6, align 4
  %179 = mul i32 %177, %178
  %180 = zext i32 %179 to i64
  %181 = getelementptr i8, i8* %176, i64 %180
  %182 = load i8*, i8** %8, align 8
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %6, align 4
  %185 = mul i32 %183, %184
  %186 = zext i32 %185 to i64
  %187 = getelementptr i8, i8* %182, i64 %186
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %6, align 4
  %190 = mul i32 %188, %189
  %191 = call i32 @memcpy(i8* %181, i8* %187, i32 %190)
  %192 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %193 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i8*, i8** %7, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr i8, i8* %197, i64 %198
  store i8* %199, i8** %7, align 8
  br label %253

200:                                              ; preds = %172
  store i32 0, i32* %17, align 4
  br label %201

201:                                              ; preds = %241, %200
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %244

205:                                              ; preds = %201
  %206 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %207 = load i32, i32* %14, align 4
  %208 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %209 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %207, %210
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %216, %217
  %219 = call i32 @valid_pix(%struct.vivid_dev* %206, i32 %211, i32 %214, i32 %215, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %205
  br label %241

222:                                              ; preds = %205
  %223 = load i8*, i8** %7, align 8
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %6, align 4
  %228 = mul i32 %226, %227
  %229 = zext i32 %228 to i64
  %230 = getelementptr i8, i8* %223, i64 %229
  %231 = load i8*, i8** %8, align 8
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %16, align 4
  %234 = add nsw i32 %232, %233
  %235 = load i32, i32* %6, align 4
  %236 = mul i32 %234, %235
  %237 = zext i32 %236 to i64
  %238 = getelementptr i8, i8* %231, i64 %237
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @memcpy(i8* %230, i8* %238, i32 %239)
  br label %241

241:                                              ; preds = %222, %221
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %17, align 4
  br label %201

244:                                              ; preds = %201
  %245 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %246 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i8*, i8** %7, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr i8, i8* %250, i64 %251
  store i8* %252, i8** %7, align 8
  br label %253

253:                                              ; preds = %244, %175, %171
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i8*, i8** %8, align 8
  %258 = zext i32 %256 to i64
  %259 = getelementptr i8, i8* %257, i64 %258
  store i8* %259, i8** %8, align 8
  br label %152

260:                                              ; preds = %60, %82, %129, %152
  ret void
}

declare dso_local i32 @tpg_g_twopixelsize(%struct.tpg_data*, i32) #1

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @valid_pix(%struct.vivid_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
