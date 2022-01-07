; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_init_videobuf2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_init_videobuf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32, %struct.TYPE_2__, %struct.vb2_queue }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_queue = type { i32, i32, i32*, i32*, i32*, i32, i32, %struct.pxa_camera_dev*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@pxac_vb2_ops = common dso_local global i32 0, align 4
@vb2_dma_sg_memops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vb2_queue_init(vq=%p): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_camera_dev*)* @pxa_camera_init_videobuf2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_init_videobuf2(%struct.pxa_camera_dev* %0) #0 {
  %2 = alloca %struct.pxa_camera_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %2, align 8
  %5 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %5, i32 0, i32 2
  store %struct.vb2_queue* %6, %struct.vb2_queue** %4, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %8 = call i32 @memset(%struct.vb2_queue* %7, i32 0, i32 56)
  %9 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @VB2_MMAP, align 4
  %13 = load i32, i32* @VB2_USERPTR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @VB2_DMABUF, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 7
  store %struct.pxa_camera_dev* %19, %struct.pxa_camera_dev** %21, align 8
  %22 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  %27 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %34 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %33, i32 0, i32 4
  store i32* @pxac_vb2_ops, i32** %34, align 8
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 3
  store i32* @vb2_dma_sg_memops, i32** %36, align 8
  %37 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %37, i32 0, i32 0
  %39 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %40 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %42 = call i32 @vb2_queue_init(%struct.vb2_queue* %41)
  store i32 %42, i32* %3, align 4
  %43 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %44 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %43)
  %45 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.vb2_queue* %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.vb2_queue*, i32, i32) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.vb2_queue*, i32) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
