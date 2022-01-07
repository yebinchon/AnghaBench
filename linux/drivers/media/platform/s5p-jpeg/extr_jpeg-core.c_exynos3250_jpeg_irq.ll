; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@EXYNOS3250_TIMER_INT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Interrupt timeout occurred.\0A\00", align 1
@SJPEG_EXYNOS5420 = common dso_local global i64 0, align 8
@EXYNOS3250_STREAM_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Syntax error or unrecoverable error occurred.\0A\00", align 1
@EXYNOS3250_HEADER_STAT = common dso_local global i32 0, align 4
@S5P_JPEG_DECODE = common dso_local global i64 0, align 8
@EXYNOS3250_JPEG_DONE = common dso_local global i32 0, align 4
@EXYNOS3250_WDMA_DONE = common dso_local global i32 0, align 4
@EXYNOS3250_RDMA_DONE = common dso_local global i32 0, align 4
@EXYNOS3250_RESULT_STAT = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @exynos3250_jpeg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos3250_jpeg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s5p_jpeg*, align 8
  %7 = alloca %struct.s5p_jpeg_ctx*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.s5p_jpeg*
  store %struct.s5p_jpeg* %16, %struct.s5p_jpeg** %6, align 8
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %19 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @exynos3250_jpeg_get_timer_status(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @EXYNOS3250_TIMER_INT_STAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %31 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @exynos3250_jpeg_clear_timer_status(i32 %32)
  store i32 1, i32* %12, align 4
  %34 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %35 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %29, %2
  %39 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %40 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @exynos3250_jpeg_get_int_status(i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %44 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @exynos3250_jpeg_clear_int_status(i32 %45, i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %50 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %54 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SJPEG_EXYNOS5420, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %38
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @EXYNOS3250_STREAM_STAT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  store i32 1, i32* %13, align 4
  %66 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %67 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %60, %38
  %71 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %72 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.s5p_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32 %73)
  store %struct.s5p_jpeg_ctx* %74, %struct.s5p_jpeg_ctx** %7, align 8
  %75 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %76 = icmp ne %struct.s5p_jpeg_ctx* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %180

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @EXYNOS3250_HEADER_STAT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @S5P_JPEG_DECODE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %91 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @exynos3250_jpeg_rstart(i32 %92)
  br label %180

94:                                               ; preds = %83, %78
  %95 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %96 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @EXYNOS3250_JPEG_DONE, align 4
  %99 = load i32, i32* @EXYNOS3250_WDMA_DONE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @EXYNOS3250_RDMA_DONE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @EXYNOS3250_RESULT_STAT, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %97, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %94
  %108 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %109 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @exynos3250_jpeg_compressed_size(i32 %110)
  store i64 %111, i64* %10, align 8
  br label %122

112:                                              ; preds = %94
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %119, i32* %11, align 4
  br label %121

120:                                              ; preds = %115
  br label %180

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %107
  %123 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %124 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %126)
  store %struct.vb2_v4l2_buffer* %127, %struct.vb2_v4l2_buffer** %8, align 8
  %128 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %129 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %131)
  store %struct.vb2_v4l2_buffer* %132, %struct.vb2_v4l2_buffer** %9, align 8
  %133 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %134 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %137 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %139 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %143 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %145, i32 %146)
  %148 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %149 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %122
  %154 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %155 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %154, i32 0, i32 0
  %156 = load i64, i64* %10, align 8
  %157 = call i32 @vb2_set_plane_payload(%struct.TYPE_6__* %155, i32 0, i64 %156)
  br label %158

158:                                              ; preds = %153, %122
  %159 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %159, i32 %160)
  %162 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %163 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @exynos3250_jpeg_get_subsampling_mode(i32 %164)
  %166 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %167 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %169 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %168, i32 0, i32 1
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %172 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %175 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @v4l2_m2m_job_finish(i32 %173, i32 %177)
  %179 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %179, i32* %3, align 4
  br label %185

180:                                              ; preds = %120, %89, %77
  %181 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %6, align 8
  %182 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %181, i32 0, i32 1
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %180, %158
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @exynos3250_jpeg_get_timer_status(i32) #1

declare dso_local i32 @exynos3250_jpeg_clear_timer_status(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @exynos3250_jpeg_get_int_status(i32) #1

declare dso_local i32 @exynos3250_jpeg_clear_int_status(i32, i32) #1

declare dso_local %struct.s5p_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @exynos3250_jpeg_rstart(i32) #1

declare dso_local i64 @exynos3250_jpeg_compressed_size(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @exynos3250_jpeg_get_subsampling_mode(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
