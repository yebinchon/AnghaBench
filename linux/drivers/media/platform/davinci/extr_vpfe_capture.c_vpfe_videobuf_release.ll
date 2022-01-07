; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_videobuf_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_videobuf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { %struct.vpfe_device* }
%struct.vpfe_device = type { i32, i32, i32 }
%struct.videobuf_buffer = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vpfe_videobuf_release\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.videobuf_buffer*)* @vpfe_videobuf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_videobuf_release(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.vpfe_fh*, align 8
  %6 = alloca %struct.vpfe_device*, align 8
  %7 = alloca i64, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.vpfe_fh*, %struct.vpfe_fh** %9, align 8
  store %struct.vpfe_fh* %10, %struct.vpfe_fh** %5, align 8
  %11 = load %struct.vpfe_fh*, %struct.vpfe_fh** %5, align 8
  %12 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %11, i32 0, i32 0
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %12, align 8
  store %struct.vpfe_device* %13, %struct.vpfe_device** %6, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %16 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %15, i32 0, i32 2
  %17 = call i32 @v4l2_dbg(i32 1, i32 %14, i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %19 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %23 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %30 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %31 = call i32 @videobuf_dma_contig_free(%struct.videobuf_queue* %29, %struct.videobuf_buffer* %30)
  %32 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %33 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @videobuf_dma_contig_free(%struct.videobuf_queue*, %struct.videobuf_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
