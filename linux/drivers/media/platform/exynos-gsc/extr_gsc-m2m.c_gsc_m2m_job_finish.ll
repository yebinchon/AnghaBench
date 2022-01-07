; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_job_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_job_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_m2m_job_finish(%struct.gsc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.gsc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %8 = icmp ne %struct.gsc_ctx* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %73

15:                                               ; preds = %9
  %16 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %18)
  store %struct.vb2_v4l2_buffer* %19, %struct.vb2_v4l2_buffer** %5, align 8
  %20 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %22)
  store %struct.vb2_v4l2_buffer* %23, %struct.vb2_v4l2_buffer** %6, align 8
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %25 = icmp ne %struct.vb2_v4l2_buffer* %24, null
  br i1 %25, label %26, label %73

26:                                               ; preds = %15
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %28 = icmp ne %struct.vb2_v4l2_buffer* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %57, i32 %58)
  %60 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %60, i32 %61)
  %63 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @v4l2_m2m_job_finish(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %14, %29, %26, %15
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
