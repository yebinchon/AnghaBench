; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.sun4i_csi = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Stopping capture\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @sun4i_csi_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_csi_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.sun4i_csi*, align 8
  %4 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.sun4i_csi* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.sun4i_csi* %6, %struct.sun4i_csi** %3, align 8
  %7 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %8 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %12 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @video, align 4
  %15 = load i32, i32* @s_stream, align 4
  %16 = call i32 @v4l2_subdev_call(i32 %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %18 = call i32 @sun4i_csi_capture_stop(%struct.sun4i_csi* %17)
  %19 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %20 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %19, i32 0, i32 3
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %24 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %25 = call i32 @return_all_buffers(%struct.sun4i_csi* %23, i32 %24)
  %26 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %27 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %26, i32 0, i32 3
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %31 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @media_pipeline_stop(i32* %32)
  %34 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %35 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %38 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %42 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sun4i_csi*, %struct.sun4i_csi** %3, align 8
  %46 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dma_free_coherent(i32 %36, i32 %40, i32 %44, i32 %48)
  ret void
}

declare dso_local %struct.sun4i_csi* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @sun4i_csi_capture_stop(%struct.sun4i_csi*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @return_all_buffers(%struct.sun4i_csi*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
