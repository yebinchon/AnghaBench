; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_h264.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_h264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_h264_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64 }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unsupported map type for FMO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_h264 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_h264(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  %5 = alloca %struct.s5p_mfc_enc_params*, align 8
  %6 = alloca %struct.s5p_mfc_h264_enc_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 2
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %3, align 8
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %12, i32 0, i32 0
  %14 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %13, align 8
  store %struct.s5p_mfc_regs* %14, %struct.s5p_mfc_regs** %4, align 8
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 1
  store %struct.s5p_mfc_enc_params* %16, %struct.s5p_mfc_enc_params** %5, align 8
  %17 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.s5p_mfc_h264_enc_params* %19, %struct.s5p_mfc_h264_enc_params** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = call i32 (...) @mfc_debug_enter()
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %22 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %21)
  %23 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %23, i32 0, i32 24
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -196609
  store i32 %28, i32* %7, align 4
  %29 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 3
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %37, i32 0, i32 24
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @writel(i32 %36, i64 %39)
  store i32 0, i32* %7, align 4
  %41 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 255
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 63
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %55, i32 0, i32 23
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @writel(i32 %54, i64 %57)
  %59 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %60 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %59, i32 0, i32 22
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, -257
  store i32 %64, i32* %7, align 4
  %65 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %66 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %73, i32 0, i32 22
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @writel(i32 %72, i64 %75)
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, -64
  store i32 %78, i32* %7, align 4
  %79 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %80 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 63
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %86, i32 0, i32 22
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @writel(i32 %85, i64 %88)
  store i32 0, i32* %7, align 4
  %90 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 63
  %94 = shl i32 %93, 8
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 63
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %104, i32 0, i32 21
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @writel(i32 %103, i64 %106)
  %108 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %109 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %108, i32 0, i32 20
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @writel(i32 0, i64 %110)
  %112 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %113 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %147, label %116

116:                                              ; preds = %1
  %117 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %147, label %121

121:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  %122 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %123 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 63
  %126 = shl i32 %125, 16
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %130 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 63
  %133 = shl i32 %132, 8
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %137 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 63
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %144 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %143, i32 0, i32 20
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @writel(i32 %142, i64 %145)
  br label %147

147:                                              ; preds = %121, %116, %1
  %148 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %149 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %147
  %153 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %154 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %181

157:                                              ; preds = %152
  %158 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %159 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %157
  store i32 0, i32* %7, align 4
  %163 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %164 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 65535
  %167 = shl i32 %166, 16
  %168 = load i32, i32* %7, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %7, align 4
  %170 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %171 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 65535
  %174 = load i32, i32* %7, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %178 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %177, i32 0, i32 19
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @writel(i32 %176, i64 %179)
  br label %181

181:                                              ; preds = %162, %157, %152, %147
  %182 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %183 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %181
  %188 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %189 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 65535
  %192 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %193 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %192, i32 0, i32 18
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @writel(i32 %191, i64 %194)
  %196 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %197 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %187
  %201 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %202 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %205 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %204, i32 0, i32 17
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @writel(i32 %203, i64 %206)
  br label %208

208:                                              ; preds = %200, %187
  br label %209

209:                                              ; preds = %208, %181
  store i32 0, i32* %7, align 4
  %210 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %211 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, 1
  %214 = shl i32 %213, 3
  %215 = load i32, i32* %7, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %219 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @writel(i32 %217, i64 %220)
  %222 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %223 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %209
  %227 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %228 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = ashr i32 %229, 1
  %231 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %232 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %231, i32 0, i32 16
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @writel(i32 %230, i64 %233)
  %235 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %236 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = ashr i32 %237, 1
  %239 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %240 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %239, i32 0, i32 15
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @writel(i32 %238, i64 %241)
  br label %243

243:                                              ; preds = %226, %209
  %244 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %245 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %244, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @readl(i64 %246)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = and i32 %248, -7
  store i32 %249, i32* %7, align 4
  %250 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %251 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %250, i32 0, i32 9
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %252, 3
  %254 = shl i32 %253, 1
  %255 = load i32, i32* %7, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %259 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @writel(i32 %257, i64 %260)
  %262 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %263 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %262, i32 0, i32 10
  %264 = load i32, i32* %263, align 8
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %243
  store i32 16, i32* %7, align 4
  %267 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %268 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %267, i32 0, i32 10
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 255, %269
  %271 = add nsw i32 %270, 1
  %272 = load i32, i32* %7, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %7, align 4
  br label %281

274:                                              ; preds = %243
  store i32 0, i32* %7, align 4
  %275 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %276 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %275, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = and i32 %277, 15
  %279 = load i32, i32* %7, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %274, %266
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %284 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %283, i32 0, i32 14
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @writel(i32 %282, i64 %285)
  %287 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %288 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %287, i32 0, i32 11
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %281
  store i32 16, i32* %7, align 4
  %292 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %293 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 255, %294
  %296 = add nsw i32 %295, 1
  %297 = load i32, i32* %7, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %7, align 4
  br label %306

299:                                              ; preds = %281
  store i32 0, i32* %7, align 4
  %300 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %301 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %300, i32 0, i32 11
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 15
  %304 = load i32, i32* %7, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %299, %291
  %307 = load i32, i32* %7, align 4
  %308 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %309 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %308, i32 0, i32 13
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @writel(i32 %307, i64 %310)
  %312 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %313 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @readl(i64 %314)
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* %7, align 4
  %317 = and i32 %316, -2
  store i32 %317, i32* %7, align 4
  %318 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %319 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %318, i32 0, i32 12
  %320 = load i32, i32* %319, align 8
  %321 = and i32 %320, 1
  %322 = load i32, i32* %7, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %326 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %325, i32 0, i32 6
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @writel(i32 %324, i64 %327)
  %329 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %330 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %329, i32 0, i32 6
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @readl(i64 %331)
  store i32 %332, i32* %7, align 4
  %333 = load i32, i32* %7, align 4
  %334 = and i32 %333, -129
  store i32 %334, i32* %7, align 4
  %335 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %336 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %335, i32 0, i32 13
  %337 = load i32, i32* %336, align 4
  %338 = sub nsw i32 %337, 1
  %339 = and i32 %338, 1
  %340 = shl i32 %339, 7
  %341 = load i32, i32* %7, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %7, align 4
  %343 = load i32, i32* %7, align 4
  %344 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %345 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %344, i32 0, i32 6
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @writel(i32 %343, i64 %346)
  %348 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %349 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %348, i32 0, i32 6
  %350 = load i64, i64* %349, align 8
  %351 = call i32 @readl(i64 %350)
  store i32 %351, i32* %7, align 4
  %352 = load i32, i32* %7, align 4
  %353 = and i32 %352, -12289
  store i32 %353, i32* %7, align 4
  %354 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %355 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %354, i32 0, i32 14
  %356 = load i32, i32* %355, align 8
  %357 = and i32 %356, 3
  %358 = shl i32 %357, 12
  %359 = load i32, i32* %7, align 4
  %360 = or i32 %359, %358
  store i32 %360, i32* %7, align 4
  %361 = load i32, i32* %7, align 4
  %362 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %363 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %362, i32 0, i32 6
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @writel(i32 %361, i64 %364)
  %366 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %367 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %366, i32 0, i32 12
  %368 = load i64, i64* %367, align 8
  %369 = call i32 @writel(i32 0, i64 %368)
  %370 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %371 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %407

374:                                              ; preds = %306
  store i32 0, i32* %7, align 4
  %375 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %376 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %375, i32 0, i32 15
  %377 = load i32, i32* %376, align 4
  %378 = and i32 %377, 1
  %379 = shl i32 %378, 3
  %380 = load i32, i32* %7, align 4
  %381 = or i32 %380, %379
  store i32 %381, i32* %7, align 4
  %382 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %383 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %382, i32 0, i32 16
  %384 = load i32, i32* %383, align 8
  %385 = and i32 %384, 1
  %386 = shl i32 %385, 2
  %387 = load i32, i32* %7, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %7, align 4
  %389 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %390 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %389, i32 0, i32 17
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 1
  %393 = shl i32 %392, 1
  %394 = load i32, i32* %7, align 4
  %395 = or i32 %394, %393
  store i32 %395, i32* %7, align 4
  %396 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %397 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %396, i32 0, i32 18
  %398 = load i32, i32* %397, align 8
  %399 = and i32 %398, 1
  %400 = load i32, i32* %7, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %7, align 4
  %402 = load i32, i32* %7, align 4
  %403 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %404 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %403, i32 0, i32 12
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @writel(i32 %402, i64 %405)
  br label %407

407:                                              ; preds = %374, %306
  %408 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %409 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %408, i32 0, i32 6
  %410 = load i64, i64* %409, align 8
  %411 = call i32 @readl(i64 %410)
  %412 = load i32, i32* %7, align 4
  %413 = and i32 %412, -33
  store i32 %413, i32* %7, align 4
  %414 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %415 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %414, i32 0, i32 19
  %416 = load i32, i32* %415, align 4
  %417 = and i32 %416, 1
  %418 = shl i32 %417, 5
  %419 = load i32, i32* %7, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %7, align 4
  %421 = load i32, i32* %7, align 4
  %422 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %423 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %422, i32 0, i32 6
  %424 = load i64, i64* %423, align 8
  %425 = call i32 @writel(i32 %421, i64 %424)
  %426 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %427 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %426, i32 0, i32 11
  %428 = load i64, i64* %427, align 8
  %429 = call i32 @writel(i32 0, i64 %428)
  %430 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %431 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %430, i32 0, i32 10
  %432 = load i64, i64* %431, align 8
  %433 = call i32 @writel(i32 0, i64 %432)
  %434 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %435 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %434, i32 0, i32 19
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %474

438:                                              ; preds = %407
  store i32 0, i32* %7, align 4
  %439 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %440 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %439, i32 0, i32 20
  %441 = load i32, i32* %440, align 8
  %442 = and i32 %441, 255
  %443 = load i32, i32* %7, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %7, align 4
  %445 = load i32, i32* %7, align 4
  %446 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %447 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %446, i32 0, i32 11
  %448 = load i64, i64* %447, align 8
  %449 = call i32 @writel(i32 %445, i64 %448)
  %450 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %451 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %450, i32 0, i32 20
  %452 = load i32, i32* %451, align 8
  %453 = icmp eq i32 %452, 255
  br i1 %453, label %454, label %473

454:                                              ; preds = %438
  store i32 0, i32* %7, align 4
  %455 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %456 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %455, i32 0, i32 21
  %457 = load i32, i32* %456, align 4
  %458 = and i32 %457, 65535
  %459 = shl i32 %458, 16
  %460 = load i32, i32* %7, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %7, align 4
  %462 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %463 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %462, i32 0, i32 22
  %464 = load i32, i32* %463, align 8
  %465 = and i32 %464, 65535
  %466 = load i32, i32* %7, align 4
  %467 = or i32 %466, %465
  store i32 %467, i32* %7, align 4
  %468 = load i32, i32* %7, align 4
  %469 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %470 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %469, i32 0, i32 10
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @writel(i32 %468, i64 %471)
  br label %473

473:                                              ; preds = %454, %438
  br label %474

474:                                              ; preds = %473, %407
  %475 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %476 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %475, i32 0, i32 6
  %477 = load i64, i64* %476, align 8
  %478 = call i32 @readl(i64 %477)
  %479 = load i32, i32* %7, align 4
  %480 = and i32 %479, -17
  store i32 %480, i32* %7, align 4
  %481 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %482 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %481, i32 0, i32 23
  %483 = load i32, i32* %482, align 4
  %484 = and i32 %483, 1
  %485 = shl i32 %484, 4
  %486 = load i32, i32* %7, align 4
  %487 = or i32 %486, %485
  store i32 %487, i32* %7, align 4
  %488 = load i32, i32* %7, align 4
  %489 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %490 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %489, i32 0, i32 6
  %491 = load i64, i64* %490, align 8
  %492 = call i32 @writel(i32 %488, i64 %491)
  %493 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %494 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %493, i32 0, i32 9
  %495 = load i64, i64* %494, align 8
  %496 = call i32 @writel(i32 0, i64 %495)
  %497 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %498 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %497, i32 0, i32 23
  %499 = load i32, i32* %498, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %513

501:                                              ; preds = %474
  store i32 0, i32* %7, align 4
  %502 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %503 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %502, i32 0, i32 24
  %504 = load i32, i32* %503, align 8
  %505 = and i32 %504, 65535
  %506 = load i32, i32* %7, align 4
  %507 = or i32 %506, %505
  store i32 %507, i32* %7, align 4
  %508 = load i32, i32* %7, align 4
  %509 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %510 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %509, i32 0, i32 9
  %511 = load i64, i64* %510, align 8
  %512 = call i32 @writel(i32 %508, i64 %511)
  br label %513

513:                                              ; preds = %501, %474
  %514 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %515 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %514, i32 0, i32 6
  %516 = load i64, i64* %515, align 8
  %517 = call i32 @readl(i64 %516)
  %518 = load i32, i32* %7, align 4
  %519 = and i32 %518, -1537
  store i32 %519, i32* %7, align 4
  %520 = load i32, i32* %7, align 4
  %521 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %522 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %521, i32 0, i32 6
  %523 = load i64, i64* %522, align 8
  %524 = call i32 @writel(i32 %520, i64 %523)
  %525 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %526 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %525, i32 0, i32 6
  %527 = load i64, i64* %526, align 8
  %528 = call i32 @readl(i64 %527)
  %529 = load i32, i32* %7, align 4
  %530 = and i32 %529, -16385
  store i32 %530, i32* %7, align 4
  %531 = load i32, i32* %7, align 4
  %532 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %533 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %532, i32 0, i32 6
  %534 = load i64, i64* %533, align 8
  %535 = call i32 @writel(i32 %531, i64 %534)
  %536 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %537 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %536, i32 0, i32 6
  %538 = load i64, i64* %537, align 8
  %539 = call i32 @readl(i64 %538)
  %540 = load i32, i32* %7, align 4
  %541 = and i32 %540, -65
  store i32 %541, i32* %7, align 4
  %542 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %543 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %542, i32 0, i32 25
  %544 = load i32, i32* %543, align 4
  %545 = and i32 %544, 1
  %546 = shl i32 %545, 6
  %547 = load i32, i32* %7, align 4
  %548 = or i32 %547, %546
  store i32 %548, i32* %7, align 4
  %549 = load i32, i32* %7, align 4
  %550 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %551 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %550, i32 0, i32 6
  %552 = load i64, i64* %551, align 8
  %553 = call i32 @writel(i32 %549, i64 %552)
  %554 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %555 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %554, i32 0, i32 6
  %556 = load i64, i64* %555, align 8
  %557 = call i32 @readl(i64 %556)
  %558 = load i32, i32* %7, align 4
  %559 = and i32 %558, -257
  store i32 %559, i32* %7, align 4
  %560 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %561 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %560, i32 0, i32 23
  %562 = load i32, i32* %561, align 4
  %563 = and i32 %562, 1
  %564 = shl i32 %563, 8
  %565 = load i32, i32* %7, align 4
  %566 = or i32 %565, %564
  store i32 %566, i32* %7, align 4
  %567 = load i32, i32* %7, align 4
  %568 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %569 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %568, i32 0, i32 6
  %570 = load i64, i64* %569, align 8
  %571 = call i32 @writel(i32 %567, i64 %570)
  store i32 0, i32* %7, align 4
  %572 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %573 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %572, i32 0, i32 38
  %574 = load i64, i64* %573, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %635

576:                                              ; preds = %513
  %577 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %578 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %577, i32 0, i32 26
  %579 = load i32, i32* %578, align 8
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %635

581:                                              ; preds = %576
  %582 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %583 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %582, i32 0, i32 27
  %584 = load i32, i32* %583, align 4
  %585 = and i32 %584, 1
  %586 = shl i32 %585, 3
  %587 = load i32, i32* %7, align 4
  %588 = or i32 %587, %586
  store i32 %588, i32* %7, align 4
  %589 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %590 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %589, i32 0, i32 26
  %591 = load i32, i32* %590, align 8
  %592 = and i32 %591, 7
  %593 = load i32, i32* %7, align 4
  %594 = or i32 %593, %592
  store i32 %594, i32* %7, align 4
  %595 = load i32, i32* %7, align 4
  %596 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %597 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %596, i32 0, i32 7
  %598 = load i64, i64* %597, align 8
  %599 = call i32 @writel(i32 %595, i64 %598)
  store i32 0, i32* %8, align 4
  br label %600

600:                                              ; preds = %631, %581
  %601 = load i32, i32* %8, align 4
  %602 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %603 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %602, i32 0, i32 26
  %604 = load i32, i32* %603, align 8
  %605 = icmp slt i32 %601, %604
  br i1 %605, label %606, label %613

606:                                              ; preds = %600
  %607 = load i32, i32* %8, align 4
  %608 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %609 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %608, i32 0, i32 28
  %610 = load i32*, i32** %609, align 8
  %611 = call i32 @ARRAY_SIZE(i32* %610)
  %612 = icmp slt i32 %607, %611
  br label %613

613:                                              ; preds = %606, %600
  %614 = phi i1 [ false, %600 ], [ %612, %606 ]
  br i1 %614, label %615, label %634

615:                                              ; preds = %613
  %616 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %617 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %616, i32 0, i32 28
  %618 = load i32*, i32** %617, align 8
  %619 = load i32, i32* %8, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %618, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %624 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %623, i32 0, i32 8
  %625 = load i64, i64* %624, align 8
  %626 = load i32, i32* %8, align 4
  %627 = mul nsw i32 %626, 4
  %628 = sext i32 %627 to i64
  %629 = add nsw i64 %625, %628
  %630 = call i32 @writel(i32 %622, i64 %629)
  br label %631

631:                                              ; preds = %615
  %632 = load i32, i32* %8, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %8, align 4
  br label %600

634:                                              ; preds = %613
  br label %635

635:                                              ; preds = %634, %576, %513
  %636 = load i32, i32* %7, align 4
  %637 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %638 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %637, i32 0, i32 7
  %639 = load i64, i64* %638, align 8
  %640 = call i32 @writel(i32 %636, i64 %639)
  %641 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %642 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %641, i32 0, i32 6
  %643 = load i64, i64* %642, align 8
  %644 = call i32 @readl(i64 %643)
  %645 = load i32, i32* %7, align 4
  %646 = and i32 %645, -33554433
  store i32 %646, i32* %7, align 4
  %647 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %648 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %647, i32 0, i32 29
  %649 = load i32, i32* %648, align 8
  %650 = and i32 %649, 1
  %651 = shl i32 %650, 25
  %652 = load i32, i32* %7, align 4
  %653 = or i32 %652, %651
  store i32 %653, i32* %7, align 4
  %654 = load i32, i32* %7, align 4
  %655 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %656 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %655, i32 0, i32 6
  %657 = load i64, i64* %656, align 8
  %658 = call i32 @writel(i32 %654, i64 %657)
  %659 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %660 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %659, i32 0, i32 29
  %661 = load i32, i32* %660, align 8
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %682

663:                                              ; preds = %635
  store i32 0, i32* %7, align 4
  %664 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %665 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %664, i32 0, i32 30
  %666 = load i32, i32* %665, align 4
  %667 = and i32 %666, 1
  %668 = shl i32 %667, 2
  %669 = load i32, i32* %7, align 4
  %670 = or i32 %669, %668
  store i32 %670, i32* %7, align 4
  %671 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %672 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %671, i32 0, i32 31
  %673 = load i32, i32* %672, align 8
  %674 = and i32 %673, 3
  %675 = load i32, i32* %7, align 4
  %676 = or i32 %675, %674
  store i32 %676, i32* %7, align 4
  %677 = load i32, i32* %7, align 4
  %678 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %679 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %678, i32 0, i32 5
  %680 = load i64, i64* %679, align 8
  %681 = call i32 @writel(i32 %677, i64 %680)
  br label %682

682:                                              ; preds = %663, %635
  %683 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %684 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %683, i32 0, i32 37
  %685 = load i64, i64* %684, align 8
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %786

687:                                              ; preds = %682
  %688 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %689 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %688, i32 0, i32 32
  %690 = load i32, i32* %689, align 4
  switch i32 %690, label %761 [
    i32 131, label %691
    i32 129, label %728
    i32 130, label %737
    i32 128, label %737
  ]

691:                                              ; preds = %687
  %692 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %693 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %692, i32 0, i32 33
  %694 = load i32, i32* %693, align 8
  %695 = icmp sgt i32 %694, 4
  br i1 %695, label %696, label %699

696:                                              ; preds = %691
  %697 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %698 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %697, i32 0, i32 33
  store i32 4, i32* %698, align 8
  br label %699

699:                                              ; preds = %696, %691
  store i32 0, i32* %8, align 4
  br label %700

700:                                              ; preds = %724, %699
  %701 = load i32, i32* %8, align 4
  %702 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %703 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %702, i32 0, i32 33
  %704 = load i32, i32* %703, align 8
  %705 = and i32 %704, 15
  %706 = icmp slt i32 %701, %705
  br i1 %706, label %707, label %727

707:                                              ; preds = %700
  %708 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %709 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %708, i32 0, i32 36
  %710 = load i32*, i32** %709, align 8
  %711 = load i32, i32* %8, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds i32, i32* %710, i64 %712
  %714 = load i32, i32* %713, align 4
  %715 = sub nsw i32 %714, 1
  %716 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %717 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %716, i32 0, i32 4
  %718 = load i32, i32* %717, align 8
  %719 = load i32, i32* %8, align 4
  %720 = mul nsw i32 %719, 4
  %721 = add nsw i32 %718, %720
  %722 = sext i32 %721 to i64
  %723 = call i32 @writel(i32 %715, i64 %722)
  br label %724

724:                                              ; preds = %707
  %725 = load i32, i32* %8, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %8, align 4
  br label %700

727:                                              ; preds = %700
  br label %770

728:                                              ; preds = %687
  %729 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %730 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %729, i32 0, i32 33
  %731 = load i32, i32* %730, align 8
  %732 = icmp sgt i32 %731, 4
  br i1 %732, label %733, label %736

733:                                              ; preds = %728
  %734 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %735 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %734, i32 0, i32 33
  store i32 4, i32* %735, align 8
  br label %736

736:                                              ; preds = %733, %728
  br label %770

737:                                              ; preds = %687, %687
  %738 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %739 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %738, i32 0, i32 33
  %740 = load i32, i32* %739, align 8
  %741 = icmp sgt i32 %740, 2
  br i1 %741, label %742, label %745

742:                                              ; preds = %737
  %743 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %744 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %743, i32 0, i32 33
  store i32 2, i32* %744, align 8
  br label %745

745:                                              ; preds = %742, %737
  %746 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %747 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %746, i32 0, i32 34
  %748 = load i32, i32* %747, align 4
  %749 = and i32 %748, 1
  %750 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %751 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %750, i32 0, i32 3
  %752 = load i64, i64* %751, align 8
  %753 = call i32 @writel(i32 %749, i64 %752)
  %754 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %755 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %754, i32 0, i32 35
  %756 = load i32, i32* %755, align 8
  %757 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %758 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %757, i32 0, i32 2
  %759 = load i64, i64* %758, align 8
  %760 = call i32 @writel(i32 %756, i64 %759)
  br label %770

761:                                              ; preds = %687
  %762 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %763 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %762, i32 0, i32 32
  %764 = load i32, i32* %763, align 4
  %765 = call i32 @mfc_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %764)
  %766 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %767 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %766, i32 0, i32 32
  store i32 0, i32* %767, align 4
  %768 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %769 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %768, i32 0, i32 33
  store i32 1, i32* %769, align 8
  br label %770

770:                                              ; preds = %761, %745, %736, %727
  %771 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %772 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %771, i32 0, i32 32
  %773 = load i32, i32* %772, align 4
  %774 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %775 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %774, i32 0, i32 1
  %776 = load i64, i64* %775, align 8
  %777 = call i32 @writel(i32 %773, i64 %776)
  %778 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %6, align 8
  %779 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %778, i32 0, i32 33
  %780 = load i32, i32* %779, align 8
  %781 = sub nsw i32 %780, 1
  %782 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %783 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %782, i32 0, i32 0
  %784 = load i64, i64* %783, align 8
  %785 = call i32 @writel(i32 %781, i64 %784)
  br label %791

786:                                              ; preds = %682
  %787 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %788 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %787, i32 0, i32 0
  %789 = load i64, i64* %788, align 8
  %790 = call i32 @writel(i32 0, i64 %789)
  br label %791

791:                                              ; preds = %786, %770
  %792 = call i32 (...) @mfc_debug_leave()
  ret i32 0
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mfc_err(i8*, i32) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
