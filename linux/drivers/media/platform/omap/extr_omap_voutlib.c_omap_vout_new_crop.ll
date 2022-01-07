; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_new_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_new_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i64, i32 }
%struct.v4l2_window = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64 }
%struct.v4l2_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.v4l2_rect = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_vout_new_crop(%struct.v4l2_pix_format* %0, %struct.v4l2_rect* %1, %struct.v4l2_window* %2, %struct.v4l2_framebuffer* %3, %struct.v4l2_rect* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca %struct.v4l2_window*, align 8
  %10 = alloca %struct.v4l2_framebuffer*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.v4l2_rect, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %7, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %8, align 8
  store %struct.v4l2_window* %2, %struct.v4l2_window** %9, align 8
  store %struct.v4l2_framebuffer* %3, %struct.v4l2_framebuffer** %10, align 8
  store %struct.v4l2_rect* %4, %struct.v4l2_rect** %11, align 8
  %15 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %16 = bitcast %struct.v4l2_rect* %12 to i8*
  %17 = bitcast %struct.v4l2_rect* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %23
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %5
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %34
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  %40 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %28
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i64 [ %50, %48 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  br label %71

67:                                               ; preds = %55
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i32 [ %66, %64 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %75, %77
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %86, %88
  %90 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %83, %71
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp sgt i64 %97, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %107, %109
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  store i32 %111, i32* %112, align 8
  br label %113

113:                                              ; preds = %103, %91
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = and i64 %115, -2
  store i64 %116, i64* %114, align 8
  %117 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, -2
  store i32 %119, i32* %117, align 8
  %120 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sle i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123, %113
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %408

130:                                              ; preds = %123
  %131 = call i64 (...) @omap_vout_dss_omap24xx()
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %137 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %135, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 768
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  store i64 768, i64* %146, align 8
  br label %147

147:                                              ; preds = %145, %141
  br label %148

148:                                              ; preds = %147, %133
  br label %149

149:                                              ; preds = %148, %130
  %150 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 1024, %151
  %153 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %154 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sdiv i32 %152, %156
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %13, align 8
  %159 = call i64 (...) @omap_vout_dss_omap24xx()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %149
  %162 = load i64, i64* %13, align 8
  %163 = icmp ugt i64 %162, 2048
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i64 2048, i64* %13, align 8
  br label %173

165:                                              ; preds = %161, %149
  %166 = call i64 (...) @omap_vout_dss_omap34xx()
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i64, i64* %13, align 8
  %170 = icmp ugt i64 %169, 4096
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i64 4096, i64* %13, align 8
  br label %172

172:                                              ; preds = %171, %168, %165
  br label %173

173:                                              ; preds = %172, %164
  %174 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 1024, %175
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %13, align 8
  %179 = udiv i64 %177, %178
  %180 = and i64 %179, -2
  %181 = trunc i64 %180 to i32
  %182 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %183 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %186 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %173
  %191 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %192 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i32 2, i32* %193, align 8
  br label %194

194:                                              ; preds = %190, %173
  %195 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %196 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %201 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %199, %203
  %205 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %10, align 8
  %206 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp sgt i64 %204, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %194
  %211 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %10, align 8
  %212 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %216 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %214, %218
  %220 = and i64 %219, -2
  %221 = trunc i64 %220 to i32
  %222 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %223 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %210
  %229 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  store i32 2, i32* %229, align 8
  br label %230

230:                                              ; preds = %228, %210
  br label %231

231:                                              ; preds = %230, %194
  %232 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = mul nsw i64 1024, %233
  %235 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %236 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = sdiv i64 %234, %239
  store i64 %240, i64* %14, align 8
  %241 = call i64 (...) @omap_vout_dss_omap24xx()
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %231
  %244 = load i64, i64* %14, align 8
  %245 = icmp ugt i64 %244, 2048
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  store i64 2048, i64* %14, align 8
  br label %255

247:                                              ; preds = %243, %231
  %248 = call i64 (...) @omap_vout_dss_omap34xx()
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i64, i64* %14, align 8
  %252 = icmp ugt i64 %251, 4096
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store i64 4096, i64* %14, align 8
  br label %254

254:                                              ; preds = %253, %250, %247
  br label %255

255:                                              ; preds = %254, %246
  %256 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = mul nsw i64 1024, %257
  %259 = load i64, i64* %14, align 8
  %260 = udiv i64 %258, %259
  %261 = and i64 %260, -2
  %262 = trunc i64 %261 to i32
  %263 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %264 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 2
  store i32 %262, i32* %265, align 8
  %266 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %267 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %255
  %272 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %273 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  store i32 2, i32* %274, align 8
  br label %275

275:                                              ; preds = %271, %255
  %276 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %277 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %282 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %280, %284
  %286 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %10, align 8
  %287 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp sgt i64 %285, %289
  br i1 %290, label %291, label %312

291:                                              ; preds = %275
  %292 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %10, align 8
  %293 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %297 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %295, %299
  %301 = and i64 %300, -2
  %302 = trunc i64 %301 to i32
  %303 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %304 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 2
  store i32 %302, i32* %305, align 8
  %306 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %291
  %310 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  store i64 2, i64* %310, align 8
  br label %311

311:                                              ; preds = %309, %291
  br label %312

312:                                              ; preds = %311, %275
  %313 = call i64 (...) @omap_vout_dss_omap24xx()
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %365

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %319 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sdiv i32 %317, %321
  %323 = icmp sge i32 %322, 2
  br i1 %323, label %324, label %331

324:                                              ; preds = %315
  %325 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %326 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = mul nsw i32 %328, 2
  %330 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  store i32 %329, i32* %330, align 8
  br label %331

331:                                              ; preds = %324, %315
  %332 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %335 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = sdiv i64 %333, %338
  %340 = icmp sge i64 %339, 2
  br i1 %340, label %341, label %349

341:                                              ; preds = %331
  %342 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %343 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = mul nsw i32 %345, 2
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  store i64 %347, i64* %348, align 8
  br label %349

349:                                              ; preds = %341, %331
  %350 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = icmp sgt i64 %351, 768
  br i1 %352, label %353, label %364

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %357 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %355, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %353
  %362 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  store i64 768, i64* %362, align 8
  br label %363

363:                                              ; preds = %361, %353
  br label %364

364:                                              ; preds = %363, %349
  br label %404

365:                                              ; preds = %312
  %366 = call i64 (...) @omap_vout_dss_omap34xx()
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %403

368:                                              ; preds = %365
  %369 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %372 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = sdiv i32 %370, %374
  %376 = icmp sge i32 %375, 4
  br i1 %376, label %377, label %384

377:                                              ; preds = %368
  %378 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %379 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = mul nsw i32 %381, 4
  %383 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 3
  store i32 %382, i32* %383, align 8
  br label %384

384:                                              ; preds = %377, %368
  %385 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %388 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = sext i32 %390 to i64
  %392 = sdiv i64 %386, %391
  %393 = icmp sge i64 %392, 4
  br i1 %393, label %394, label %402

394:                                              ; preds = %384
  %395 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %396 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = mul nsw i32 %398, 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  store i64 %400, i64* %401, align 8
  br label %402

402:                                              ; preds = %394, %384
  br label %403

403:                                              ; preds = %402, %365
  br label %404

404:                                              ; preds = %403, %364
  %405 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %406 = bitcast %struct.v4l2_rect* %405 to i8*
  %407 = bitcast %struct.v4l2_rect* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %406, i8* align 8 %407, i64 32, i1 false)
  store i32 0, i32* %6, align 4
  br label %408

408:                                              ; preds = %404, %127
  %409 = load i32, i32* %6, align 4
  ret i32 %409
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @omap_vout_dss_omap24xx(...) #2

declare dso_local i64 @omap_vout_dss_omap34xx(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
