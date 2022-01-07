; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.vpbe_layer = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vpbe_buffer_prepare\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"buffer_prepare:offset is not aligned to 32 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @vpbe_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.vpbe_layer*, align 8
  %6 = alloca %struct.vpbe_device*, align 8
  %7 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 0
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  store %struct.vb2_queue* %10, %struct.vb2_queue** %4, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.vpbe_layer* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.vpbe_layer* %12, %struct.vpbe_layer** %5, align 8
  %13 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %14 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.vpbe_device*, %struct.vpbe_device** %16, align 8
  store %struct.vpbe_device* %17, %struct.vpbe_device** %6, align 8
  %18 = load i32, i32* @debug, align 4
  %19 = load %struct.vpbe_device*, %struct.vpbe_device** %6, align 8
  %20 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %19, i32 0, i32 0
  %21 = call i32 @v4l2_dbg(i32 1, i32 %18, i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %23 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %24 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %22, i32 0, i32 %26)
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %29 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %28, i32 0)
  %30 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %31 = call i64 @vb2_plane_size(%struct.vb2_buffer* %30, i32 0)
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %1
  %37 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %38 = call i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %37, i32 0)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @IS_ALIGNED(i64 %39, i32 8)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.vpbe_device*, %struct.vpbe_device** %6, align 8
  %44 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %43, i32 0, i32 0
  %45 = call i32 @v4l2_err(i32* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %33
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.vpbe_layer* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
