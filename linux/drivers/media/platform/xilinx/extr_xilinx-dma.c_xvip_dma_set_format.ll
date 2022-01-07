; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xvip_dma = type { %struct.xvip_video_format*, i32, i32 }
%struct.xvip_video_format = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @xvip_dma_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_dma_set_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.xvip_dma*, align 8
  %10 = alloca %struct.xvip_video_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  store %struct.v4l2_fh* %13, %struct.v4l2_fh** %8, align 8
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %15 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.xvip_dma* @to_xvip_dma(i32 %16)
  store %struct.xvip_dma* %17, %struct.xvip_dma** %9, align 8
  %18 = load %struct.xvip_dma*, %struct.xvip_dma** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @__xvip_dma_try_format(%struct.xvip_dma* %18, i32* %21, %struct.xvip_video_format** %10)
  %23 = load %struct.xvip_dma*, %struct.xvip_dma** %9, align 8
  %24 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %23, i32 0, i32 2
  %25 = call i64 @vb2_is_busy(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %40

30:                                               ; preds = %3
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xvip_dma*, %struct.xvip_dma** %9, align 8
  %36 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.xvip_video_format*, %struct.xvip_video_format** %10, align 8
  %38 = load %struct.xvip_dma*, %struct.xvip_dma** %9, align 8
  %39 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %38, i32 0, i32 0
  store %struct.xvip_video_format* %37, %struct.xvip_video_format** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.xvip_dma* @to_xvip_dma(i32) #1

declare dso_local i32 @__xvip_dma_try_format(%struct.xvip_dma*, i32*, %struct.xvip_video_format**) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
