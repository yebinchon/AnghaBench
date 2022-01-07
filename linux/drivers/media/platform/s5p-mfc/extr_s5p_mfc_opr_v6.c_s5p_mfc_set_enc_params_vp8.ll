; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_vp8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_vp8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_vp8_enc_params }
%struct.s5p_mfc_vp8_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_vp8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_vp8(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  %5 = alloca %struct.s5p_mfc_enc_params*, align 8
  %6 = alloca %struct.s5p_mfc_vp8_enc_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 1
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %3, align 8
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %12, i32 0, i32 0
  %14 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %13, align 8
  store %struct.s5p_mfc_regs* %14, %struct.s5p_mfc_regs** %4, align 8
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 0
  store %struct.s5p_mfc_enc_params* %16, %struct.s5p_mfc_enc_params** %5, align 8
  %17 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.s5p_mfc_vp8_enc_params* %19, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = call i32 (...) @mfc_debug_enter()
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %22 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %21)
  %23 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @readl(i32 %25)
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
  %38 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writel(i32 %36, i32 %39)
  %41 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 3
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @writel(i32 %45, i32 %48)
  %50 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @readl(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, -257
  store i32 %55, i32* %7, align 4
  %56 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %65 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @writel(i32 %63, i32 %66)
  %68 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %69 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %1
  %73 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %72
  %78 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  %83 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %84 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 65535
  %87 = shl i32 %86, 16
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 65535
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @writel(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %82, %77, %72, %1
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, -128
  store i32 %103, i32* %7, align 4
  %104 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 127
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %112 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @writel(i32 %110, i32 %113)
  %115 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @writel(i32 0, i32 %117)
  %119 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %120 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %147, label %123

123:                                              ; preds = %101
  %124 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %125 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  %129 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %130 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 127
  %133 = shl i32 %132, 8
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %137 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 127
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %144 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @writel(i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %128, %123, %101
  %148 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %149 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 127
  %152 = shl i32 %151, 8
  store i32 %152, i32* %7, align 4
  %153 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %154 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 127
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %161 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @writel(i32 %159, i32 %162)
  %164 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %165 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %147
  %170 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %171 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, 65535
  %174 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %175 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @writel(i32 %173, i32 %176)
  %178 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %179 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %178, i32 0, i32 7
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %169
  %183 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %184 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %187 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @writel(i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %182, %169
  br label %191

191:                                              ; preds = %190, %147
  store i32 0, i32* %7, align 4
  %192 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %193 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 1
  %196 = shl i32 %195, 10
  %197 = load i32, i32* %7, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %7, align 4
  %199 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %200 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  switch i32 %201, label %206 [
    i32 131, label %202
    i32 130, label %203
    i32 129, label %204
    i32 128, label %205
  ]

202:                                              ; preds = %191
  store i32 0, i32* %8, align 4
  br label %206

203:                                              ; preds = %191
  store i32 2, i32* %8, align 4
  br label %206

204:                                              ; preds = %191
  store i32 4, i32* %8, align 4
  br label %206

205:                                              ; preds = %191
  store i32 8, i32* %8, align 4
  br label %206

206:                                              ; preds = %191, %205, %204, %203, %202
  %207 = load i32, i32* %8, align 4
  %208 = and i32 %207, 15
  %209 = shl i32 %208, 3
  %210 = load i32, i32* %7, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %7, align 4
  %212 = load %struct.s5p_mfc_vp8_enc_params*, %struct.s5p_mfc_vp8_enc_params** %6, align 8
  %213 = getelementptr inbounds %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_vp8_enc_params* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 2
  %216 = load i32, i32* %7, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %220 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @writel(i32 %218, i32 %221)
  %223 = call i32 (...) @mfc_debug_leave()
  ret i32 0
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
