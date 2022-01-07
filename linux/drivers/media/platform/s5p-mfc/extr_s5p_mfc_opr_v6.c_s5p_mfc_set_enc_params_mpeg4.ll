; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_mpeg4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_mpeg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_mpeg4_enc_params }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_mpeg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_mpeg4(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  %5 = alloca %struct.s5p_mfc_enc_params*, align 8
  %6 = alloca %struct.s5p_mfc_mpeg4_enc_params*, align 8
  %7 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 1
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  store %struct.s5p_mfc_dev* %10, %struct.s5p_mfc_dev** %3, align 8
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %11, i32 0, i32 0
  %13 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %12, align 8
  store %struct.s5p_mfc_regs* %13, %struct.s5p_mfc_regs** %4, align 8
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 0
  store %struct.s5p_mfc_enc_params* %15, %struct.s5p_mfc_enc_params** %5, align 8
  %16 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.s5p_mfc_mpeg4_enc_params* %18, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = call i32 (...) @mfc_debug_enter()
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %21 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %20)
  %22 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -196609
  store i32 %27, i32* %7, align 4
  %28 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 3
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %37 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writel(i32 %35, i32 %38)
  store i32 0, i32* %7, align 4
  %40 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = shl i32 %43, 8
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 63
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @writel(i32 %53, i32 %56)
  %58 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @readl(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, -257
  store i32 %63, i32* %7, align 4
  %64 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %65 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 1
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @writel(i32 %71, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, -64
  store i32 %77, i32* %7, align 4
  %78 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 63
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @writel(i32 %84, i32 %87)
  store i32 0, i32* %7, align 4
  %89 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %90 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 63
  %93 = shl i32 %92, 8
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %97 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 63
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %104 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @writel(i32 %102, i32 %105)
  %107 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %108 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @writel(i32 0, i32 %109)
  %111 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %112 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %146, label %115

115:                                              ; preds = %1
  %116 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %117 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %146, label %120

120:                                              ; preds = %115
  store i32 0, i32* %7, align 4
  %121 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %122 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 63
  %125 = shl i32 %124, 16
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 63
  %132 = shl i32 %131, 8
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %136 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 63
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %143 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @writel(i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %120, %115, %1
  %147 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %148 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %146
  %152 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %153 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %151
  %157 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %158 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  store i32 0, i32* %7, align 4
  %162 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %163 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 65535
  %166 = shl i32 %165, 16
  %167 = load i32, i32* %7, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %7, align 4
  %169 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %170 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 65535
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %177 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @writel(i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %161, %156, %151, %146
  %181 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %182 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %180
  %187 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %188 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, 65535
  %191 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %192 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @writel(i32 %190, i32 %193)
  %195 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %196 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %186
  %200 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %201 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %204 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @writel(i32 %202, i32 %205)
  br label %207

207:                                              ; preds = %199, %186
  br label %208

208:                                              ; preds = %207, %180
  %209 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %210 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @writel(i32 0, i32 %211)
  %213 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %214 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @writel(i32 0, i32 %215)
  %217 = call i32 (...) @mfc_debug_leave()
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
