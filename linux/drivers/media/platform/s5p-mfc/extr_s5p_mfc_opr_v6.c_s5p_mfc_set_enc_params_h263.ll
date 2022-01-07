; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_h263.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_h263.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_mpeg4_enc_params }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_h263 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_h263(%struct.s5p_mfc_ctx* %0) #0 {
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
  %17 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.s5p_mfc_mpeg4_enc_params* %18, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = call i32 (...) @mfc_debug_enter()
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %21 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %20)
  store i32 0, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 16
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @writel(i32 %24, i32 %27)
  %29 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @readl(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, -257
  store i32 %34, i32* %7, align 4
  %35 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 1
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @writel(i32 %42, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -64
  store i32 %48, i32* %7, align 4
  %49 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 63
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @writel(i32 %55, i32 %58)
  store i32 0, i32* %7, align 4
  %60 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %61 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 63
  %64 = shl i32 %63, 8
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %68 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 63
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @writel(i32 %73, i32 %76)
  %78 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @writel(i32 0, i32 %80)
  %82 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %83 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %1
  %87 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %88 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %117, label %91

91:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  %92 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %93 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 63
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %100 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 63
  %103 = shl i32 %102, 8
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %6, align 8
  %107 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 63
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %114 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @writel(i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %91, %86, %1
  %118 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %119 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %117
  %123 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %124 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %122
  %128 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  %133 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %134 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 65535
  %137 = shl i32 %136, 16
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %141 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 65535
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %148 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @writel(i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %132, %127, %122, %117
  %152 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %153 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %151
  %158 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %159 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 65535
  %162 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %163 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @writel(i32 %161, i32 %164)
  %166 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %167 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %157
  %171 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %172 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %175 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @writel(i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %170, %157
  br label %179

179:                                              ; preds = %178, %151
  %180 = call i32 (...) @mfc_debug_leave()
  ret i32 0
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
