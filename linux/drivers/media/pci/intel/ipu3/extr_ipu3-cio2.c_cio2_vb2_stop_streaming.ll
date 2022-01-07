; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_vb2_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_vb2_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.cio2_queue = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cio2_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to stop sensor streaming\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @cio2_vb2_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cio2_vb2_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.cio2_queue*, align 8
  %4 = alloca %struct.cio2_device*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.cio2_queue* @vb2q_to_cio2_queue(%struct.vb2_queue* %5)
  store %struct.cio2_queue* %6, %struct.cio2_queue** %3, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = call %struct.cio2_device* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.cio2_device* %8, %struct.cio2_device** %4, align 8
  %9 = load %struct.cio2_queue*, %struct.cio2_queue** %3, align 8
  %10 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @video, align 4
  %13 = load i32, i32* @s_stream, align 4
  %14 = call i64 @v4l2_subdev_call(i32 %11, i32 %12, i32 %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.cio2_device*, %struct.cio2_device** %4, align 8
  %18 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.cio2_device*, %struct.cio2_device** %4, align 8
  %24 = load %struct.cio2_queue*, %struct.cio2_queue** %3, align 8
  %25 = call i32 @cio2_hw_exit(%struct.cio2_device* %23, %struct.cio2_queue* %24)
  %26 = load %struct.cio2_device*, %struct.cio2_device** %4, align 8
  %27 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @synchronize_irq(i32 %30)
  %32 = load %struct.cio2_queue*, %struct.cio2_queue** %3, align 8
  %33 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %34 = call i32 @cio2_vb2_return_all_buffers(%struct.cio2_queue* %32, i32 %33)
  %35 = load %struct.cio2_queue*, %struct.cio2_queue** %3, align 8
  %36 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @media_pipeline_stop(i32* %37)
  %39 = load %struct.cio2_device*, %struct.cio2_device** %4, align 8
  %40 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_put(i32* %42)
  %44 = load %struct.cio2_device*, %struct.cio2_device** %4, align 8
  %45 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  ret void
}

declare dso_local %struct.cio2_queue* @vb2q_to_cio2_queue(%struct.vb2_queue*) #1

declare dso_local %struct.cio2_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cio2_hw_exit(%struct.cio2_device*, %struct.cio2_queue*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @cio2_vb2_return_all_buffers(%struct.cio2_queue*, i32) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
