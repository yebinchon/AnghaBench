; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu_ctx = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@JCCMD_SRST = common dso_local global i32 0, align 4
@JCCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jpu_ctx*, i32)* @jpu_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpu_cleanup(%struct.jpu_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.jpu_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.jpu_ctx* %0, %struct.jpu_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %17)
  store %struct.vb2_v4l2_buffer* %18, %struct.vb2_v4l2_buffer** %5, align 8
  %19 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %22)
  store %struct.vb2_v4l2_buffer* %23, %struct.vb2_v4l2_buffer** %6, align 8
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %25 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %26 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %24, i32 %25)
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %28 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %29 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* @JCCMD_SRST, align 4
  %37 = load i32, i32* @JCCMD, align 4
  %38 = call i32 @jpu_write(%struct.TYPE_4__* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.jpu_ctx*, %struct.jpu_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @v4l2_m2m_job_finish(i32 %50, i32 %54)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @jpu_write(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
