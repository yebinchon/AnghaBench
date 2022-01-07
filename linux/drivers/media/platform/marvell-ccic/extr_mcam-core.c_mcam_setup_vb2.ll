; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_setup_vb2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_setup_vb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32, i32, i32, i32, i32, i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32, i32, i32*, i32*, i32, i32, i32*, %struct.mcam_camera*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@mcam_ctlr_dma_contig = common dso_local global i32 0, align 4
@mcam_ctlr_dma_sg = common dso_local global i32 0, align 4
@mcam_ctlr_dma_vmalloc = common dso_local global i32 0, align 4
@mcam_dma_contig_done = common dso_local global i32 0, align 4
@mcam_dma_sg_done = common dso_local global i32 0, align 4
@mcam_frame_tasklet = common dso_local global i32 0, align 4
@mcam_vb2_ops = common dso_local global i32 0, align 4
@mcam_vb2_sg_ops = common dso_local global i32 0, align 4
@mcam_vmalloc_done = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@vb2_dma_sg_memops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcam_camera*)* @mcam_setup_vb2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_setup_vb2(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %4 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %5 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %4, i32 0, i32 7
  store %struct.vb2_queue* %5, %struct.vb2_queue** %3, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %7 = call i32 @memset(%struct.vb2_queue* %6, i32 0, i32 56)
  %8 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %10 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 7
  store %struct.mcam_camera* %11, %struct.mcam_camera** %13, align 8
  %14 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %15 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %14, i32 0, i32 6
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %16, i32 0, i32 6
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @VB2_MMAP, align 4
  %22 = load i32, i32* @VB2_USERPTR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VB2_DMABUF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VB2_READ, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 1
  store i32 4, i32* %31, align 4
  %32 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %33 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %38 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %37, i32 0, i32 4
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %41 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %46 [
    i32 130, label %43
    i32 129, label %44
    i32 128, label %45
  ]

43:                                               ; preds = %1
  br label %46

44:                                               ; preds = %1
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %1, %45, %44, %43
  %47 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %48 = call i32 @vb2_queue_init(%struct.vb2_queue* %47)
  ret i32 %48
}

declare dso_local i32 @memset(%struct.vb2_queue*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
