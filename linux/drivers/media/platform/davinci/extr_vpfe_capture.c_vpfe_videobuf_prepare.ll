; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_videobuf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_videobuf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { %struct.vpfe_device* }
%struct.vpfe_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.videobuf_buffer = type { i64, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vpfe_buffer_prepare\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @vpfe_videobuf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_videobuf_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpfe_fh*, align 8
  %9 = alloca %struct.vpfe_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %13 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %12, i32 0, i32 0
  %14 = load %struct.vpfe_fh*, %struct.vpfe_fh** %13, align 8
  store %struct.vpfe_fh* %14, %struct.vpfe_fh** %8, align 8
  %15 = load %struct.vpfe_fh*, %struct.vpfe_fh** %8, align 8
  %16 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %15, i32 0, i32 0
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %16, align 8
  store %struct.vpfe_device* %17, %struct.vpfe_device** %9, align 8
  %18 = load i32, i32* @debug, align 4
  %19 = load %struct.vpfe_device*, %struct.vpfe_device** %9, align 8
  %20 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %19, i32 0, i32 1
  %21 = call i32 @v4l2_dbg(i32 1, i32 %18, i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %23 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %3
  %28 = load %struct.vpfe_device*, %struct.vpfe_device** %9, align 8
  %29 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vpfe_device*, %struct.vpfe_device** %9, align 8
  %37 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vpfe_device*, %struct.vpfe_device** %9, align 8
  %45 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %56 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %57 = call i32 @videobuf_iolock(%struct.videobuf_queue* %55, %struct.videobuf_buffer* %56, i32* null)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %27
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %76

62:                                               ; preds = %27
  %63 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %64 = call i64 @videobuf_to_dma_contig(%struct.videobuf_buffer* %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @ALIGN(i64 %65, i32 32)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %62
  %72 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %73 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %3
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %68, %60
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.videobuf_buffer*, i32*) #1

declare dso_local i64 @videobuf_to_dma_contig(%struct.videobuf_buffer*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
