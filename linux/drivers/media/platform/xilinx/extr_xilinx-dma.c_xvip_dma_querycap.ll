; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.xvip_dma = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"xilinx-vipp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"platform:%pOFn:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @xvip_dma_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_dma_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.v4l2_fh*, align 8
  %8 = alloca %struct.xvip_dma*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  store %struct.v4l2_fh* %11, %struct.v4l2_fh** %7, align 8
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.xvip_dma* @to_xvip_dma(i32 %14)
  store %struct.xvip_dma* %15, %struct.xvip_dma** %8, align 8
  %16 = load %struct.xvip_dma*, %struct.xvip_dma** %8, align 8
  %17 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strscpy(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 4)
  %31 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xvip_dma*, %struct.xvip_dma** %8, align 8
  %35 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strscpy(i32 %33, i8* %37, i32 4)
  %39 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xvip_dma*, %struct.xvip_dma** %8, align 8
  %43 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xvip_dma*, %struct.xvip_dma** %8, align 8
  %50 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  ret i32 0
}

declare dso_local %struct.xvip_dma* @to_xvip_dma(i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
