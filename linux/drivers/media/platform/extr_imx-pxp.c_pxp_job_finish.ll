; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_job_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_job_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxp_dev = type { i32, i32 }
%struct.pxp_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Instance released before the end of transaction\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Finishing transaction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxp_dev*)* @pxp_job_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxp_job_finish(%struct.pxp_dev* %0) #0 {
  %2 = alloca %struct.pxp_dev*, align 8
  %3 = alloca %struct.pxp_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.pxp_dev* %0, %struct.pxp_dev** %2, align 8
  %7 = load %struct.pxp_dev*, %struct.pxp_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pxp_ctx* @v4l2_m2m_get_curr_priv(i32 %9)
  store %struct.pxp_ctx* %10, %struct.pxp_ctx** %3, align 8
  %11 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %12 = icmp eq %struct.pxp_ctx* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %19)
  store %struct.vb2_v4l2_buffer* %20, %struct.vb2_v4l2_buffer** %4, align 8
  %21 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %24)
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %5, align 8
  %26 = load %struct.pxp_dev*, %struct.pxp_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %31 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %32 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %30, i32 %31)
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %34 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %35 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %33, i32 %34)
  %36 = load %struct.pxp_dev*, %struct.pxp_dev** %2, align 8
  %37 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dprintk(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.pxp_dev*, %struct.pxp_dev** %2, align 8
  %45 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pxp_ctx*, %struct.pxp_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @v4l2_m2m_job_finish(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %15, %13
  ret void
}

declare dso_local %struct.pxp_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
