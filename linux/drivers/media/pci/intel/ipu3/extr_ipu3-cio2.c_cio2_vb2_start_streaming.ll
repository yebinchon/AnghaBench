; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_vb2_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_vb2_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.cio2_queue = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cio2_device = type { i32, %struct.TYPE_4__*, %struct.cio2_queue* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to set power %d\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to start streaming (%d)\0A\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @cio2_vb2_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_vb2_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cio2_queue*, align 8
  %7 = alloca %struct.cio2_device*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.cio2_queue* @vb2q_to_cio2_queue(%struct.vb2_queue* %9)
  store %struct.cio2_queue* %10, %struct.cio2_queue** %6, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.cio2_device* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.cio2_device* %12, %struct.cio2_device** %7, align 8
  %13 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %14 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %15 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %14, i32 0, i32 2
  store %struct.cio2_queue* %13, %struct.cio2_queue** %15, align 8
  %16 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %17 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %16, i32 0, i32 3
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  %19 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %20 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_get_sync(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %28 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %34 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_put_noidle(i32* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %2
  %40 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %41 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %44 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %43, i32 0, i32 2
  %45 = call i32 @media_pipeline_start(i32* %42, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %78

49:                                               ; preds = %39
  %50 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %51 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %52 = call i32 @cio2_hw_init(%struct.cio2_device* %50, %struct.cio2_queue* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %73

56:                                               ; preds = %49
  %57 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %58 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @video, align 4
  %61 = load i32, i32* @s_stream, align 4
  %62 = call i32 @v4l2_subdev_call(i32 %59, i32 %60, i32 %61, i32 1)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %69

66:                                               ; preds = %56
  %67 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %68 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i32 0, i32* %3, align 4
  br label %94

69:                                               ; preds = %65
  %70 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %71 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %72 = call i32 @cio2_hw_exit(%struct.cio2_device* %70, %struct.cio2_queue* %71)
  br label %73

73:                                               ; preds = %69, %55
  %74 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %75 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @media_pipeline_stop(i32* %76)
  br label %78

78:                                               ; preds = %73, %48
  %79 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %80 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.cio2_queue*, %struct.cio2_queue** %6, align 8
  %86 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %87 = call i32 @cio2_vb2_return_all_buffers(%struct.cio2_queue* %85, i32 %86)
  %88 = load %struct.cio2_device*, %struct.cio2_device** %7, align 8
  %89 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @pm_runtime_put(i32* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %78, %66, %26
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.cio2_queue* @vb2q_to_cio2_queue(%struct.vb2_queue*) #1

declare dso_local %struct.cio2_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @media_pipeline_start(i32*, i32*) #1

declare dso_local i32 @cio2_hw_init(%struct.cio2_device*, %struct.cio2_queue*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @cio2_hw_exit(%struct.cio2_device*, %struct.cio2_queue*) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cio2_vb2_return_all_buffers(%struct.cio2_queue*, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
