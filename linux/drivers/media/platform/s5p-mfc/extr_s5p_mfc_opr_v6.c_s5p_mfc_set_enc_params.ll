; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB = common dso_local global i64 0, align 8
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12M = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV21M = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12MT_16X16 = common dso_local global i64 0, align 8
@TIGHT_CBR_MAX = common dso_local global i64 0, align 8
@S5P_FIMV_E_MV_RANGE_V6_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  %5 = alloca %struct.s5p_mfc_enc_params*, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 6
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %3, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 0
  %12 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %11, align 8
  store %struct.s5p_mfc_regs* %12, %struct.s5p_mfc_regs** %4, align 8
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 5
  store %struct.s5p_mfc_enc_params* %14, %struct.s5p_mfc_enc_params** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = call i32 (...) @mfc_debug_enter()
  %16 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %19, i32 0, i32 24
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writel(i32 %18, i32 %21)
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %26, i32 0, i32 23
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @writel(i32 %25, i32 %28)
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %33, i32 0, i32 22
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @writel(i32 %32, i32 %35)
  %37 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %40, i32 0, i32 21
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @writel(i32 %39, i32 %42)
  %44 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %44, i32 0, i32 20
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @writel(i32 0, i32 %46)
  store i32 0, i32* %6, align 4
  %48 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 65535
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %55, i32 0, i32 19
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @writel(i32 %54, i32 %57)
  %59 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %60 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %6, align 4
  %64 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %65 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %1
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, 8
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @writel(i32 %72, i32 %75)
  %77 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %78 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %77, i32 0, i32 15
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  br label %112

83:                                               ; preds = %1
  %84 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, 8
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @writel(i32 %92, i32 %95)
  %97 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %101 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  br label %111

103:                                              ; preds = %83
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, -9
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %108 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @writel(i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %103, %89
  br label %112

112:                                              ; preds = %111, %69
  %113 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %114 = call i32 @s5p_mfc_set_slice_mode(%struct.s5p_mfc_ctx* %113)
  %115 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %119 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %118, i32 0, i32 18
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @writel(i32 %117, i32 %120)
  %122 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %123 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @readl(i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %127 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %112
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, -17
  store i32 %132, i32* %6, align 4
  br label %136

133:                                              ; preds = %112
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, 16
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %139 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %138, i32 0, i32 13
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @writel(i32 %137, i32 %140)
  %142 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %143 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @readl(i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, -513
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %150 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %149, i32 0, i32 13
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @writel(i32 %148, i32 %151)
  %153 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %154 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @V4L2_PIX_FMT_NV12M, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %136
  %161 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %162 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @readl(i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, -129
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %169 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @writel(i32 %167, i32 %170)
  %172 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %173 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %172, i32 0, i32 17
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @writel(i32 0, i32 %174)
  br label %226

176:                                              ; preds = %136
  %177 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %178 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %177, i32 0, i32 3
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @V4L2_PIX_FMT_NV21M, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %176
  %185 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %186 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %185, i32 0, i32 13
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @readl(i32 %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = and i32 %189, -129
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %193 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %192, i32 0, i32 13
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @writel(i32 %191, i32 %194)
  %196 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %197 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %196, i32 0, i32 17
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @writel(i32 1, i32 %198)
  br label %225

200:                                              ; preds = %176
  %201 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %202 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %201, i32 0, i32 3
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @V4L2_PIX_FMT_NV12MT_16X16, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %200
  %209 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %210 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %209, i32 0, i32 13
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @readl(i32 %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = or i32 %213, 128
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %217 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %216, i32 0, i32 13
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @writel(i32 %215, i32 %218)
  %220 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %221 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %220, i32 0, i32 17
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @writel(i32 0, i32 %222)
  br label %224

224:                                              ; preds = %208, %200
  br label %225

225:                                              ; preds = %224, %184
  br label %226

226:                                              ; preds = %225, %160
  %227 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %228 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %227, i32 0, i32 13
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @readl(i32 %229)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = or i32 %231, 256
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %235 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %234, i32 0, i32 13
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @writel(i32 %233, i32 %236)
  %238 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %239 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %238, i32 0, i32 16
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @writel(i32 0, i32 %240)
  %242 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %243 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %242, i32 0, i32 13
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %276

246:                                              ; preds = %226
  store i32 0, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = zext i32 %247 to i64
  %249 = or i64 %248, 2147483648
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %6, align 4
  %251 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %252 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 255
  %255 = shl i32 %254, 16
  %256 = load i32, i32* %6, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %6, align 4
  %258 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %259 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, 255
  %262 = shl i32 %261, 8
  %263 = load i32, i32* %6, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %6, align 4
  %265 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %266 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 255
  %269 = load i32, i32* %6, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %273 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %272, i32 0, i32 16
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @writel(i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %246, %226
  store i32 0, i32* %6, align 4
  %277 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %278 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = and i32 %279, 1
  %281 = shl i32 %280, 9
  %282 = load i32, i32* %6, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %6, align 4
  %284 = load i32, i32* %6, align 4
  %285 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %286 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %285, i32 0, i32 12
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @writel(i32 %284, i32 %287)
  %289 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %290 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %276
  %294 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %295 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %298 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %297, i32 0, i32 15
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @writel(i32 %296, i32 %299)
  br label %306

301:                                              ; preds = %276
  %302 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %303 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %302, i32 0, i32 15
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @writel(i32 1, i32 %304)
  br label %306

306:                                              ; preds = %301, %293
  %307 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %308 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %328

311:                                              ; preds = %306
  %312 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %313 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %312, i32 0, i32 8
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @TIGHT_CBR_MAX, align 8
  %316 = icmp slt i64 %314, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %311
  %318 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %319 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %318, i32 0, i32 14
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @writel(i32 1, i32 %320)
  br label %327

322:                                              ; preds = %311
  %323 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %324 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %323, i32 0, i32 14
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @writel(i32 2, i32 %325)
  br label %327

327:                                              ; preds = %322, %317
  br label %328

328:                                              ; preds = %327, %306
  %329 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %330 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %329, i32 0, i32 13
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @readl(i32 %331)
  store i32 %332, i32* %6, align 4
  %333 = load i32, i32* %6, align 4
  %334 = and i32 %333, -5
  store i32 %334, i32* %6, align 4
  %335 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %336 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %335, i32 0, i32 9
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, 1
  %339 = shl i32 %338, 2
  %340 = load i32, i32* %6, align 4
  %341 = or i32 %340, %339
  store i32 %341, i32* %6, align 4
  %342 = load i32, i32* %6, align 4
  %343 = and i32 %342, -4
  store i32 %343, i32* %6, align 4
  %344 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %345 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %344, i32 0, i32 10
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, 3
  %348 = load i32, i32* %6, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %6, align 4
  %350 = load i32, i32* %6, align 4
  %351 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %352 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %351, i32 0, i32 13
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @writel(i32 %350, i32 %353)
  %355 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %356 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %355, i32 0, i32 12
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @readl(i32 %357)
  store i32 %358, i32* %6, align 4
  %359 = load i32, i32* %6, align 4
  %360 = and i32 %359, -1025
  store i32 %360, i32* %6, align 4
  %361 = load i32, i32* %6, align 4
  %362 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %363 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %362, i32 0, i32 12
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @writel(i32 %361, i32 %364)
  %366 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %367 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %366, i32 0, i32 11
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @S5P_FIMV_E_MV_RANGE_V6_MASK, align 4
  %370 = and i32 %368, %369
  store i32 %370, i32* %6, align 4
  %371 = load i32, i32* %6, align 4
  %372 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %373 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %372, i32 0, i32 11
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @writel(i32 %371, i32 %374)
  %376 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %377 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %376, i32 0, i32 12
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @S5P_FIMV_E_MV_RANGE_V6_MASK, align 4
  %380 = and i32 %378, %379
  store i32 %380, i32* %6, align 4
  %381 = load i32, i32* %6, align 4
  %382 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %383 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %382, i32 0, i32 10
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @writel(i32 %381, i32 %384)
  %386 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %387 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %386, i32 0, i32 9
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @writel(i32 0, i32 %388)
  %390 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %391 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %390, i32 0, i32 8
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @writel(i32 0, i32 %392)
  %394 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %395 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @writel(i32 0, i32 %396)
  %398 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %399 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @writel(i32 0, i32 %400)
  %402 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %403 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @writel(i32 0, i32 %404)
  %406 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %407 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @writel(i32 0, i32 %408)
  %410 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %411 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @writel(i32 0, i32 %412)
  %414 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %415 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @writel(i32 0, i32 %416)
  %418 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %419 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @writel(i32 0, i32 %420)
  %422 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %423 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @writel(i32 0, i32 %424)
  %426 = call i32 (...) @mfc_debug_leave()
  ret i32 0
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @s5p_mfc_set_slice_mode(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
