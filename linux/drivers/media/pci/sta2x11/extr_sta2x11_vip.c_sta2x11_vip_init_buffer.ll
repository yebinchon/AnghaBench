; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_init_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_init_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta2x11_vip = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32, i32*, i32*, %struct.sta2x11_vip*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Cannot configure coherent mask\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@vip_video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sta2x11_vip*)* @sta2x11_vip_init_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2x11_vip_init_buffer(%struct.sta2x11_vip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sta2x11_vip*, align 8
  %4 = alloca i32, align 4
  store %struct.sta2x11_vip* %0, %struct.sta2x11_vip** %3, align 8
  %5 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %6 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @DMA_BIT_MASK(i32 29)
  %10 = call i32 @dma_set_coherent_mask(i32* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %15 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %14, i32 0, i32 5
  %16 = call i32 @v4l2_err(i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %20 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %19, i32 0, i32 2
  %21 = call i32 @memset(%struct.TYPE_5__* %20, i32 0, i32 4)
  %22 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %23 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %24 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @VB2_MMAP, align 4
  %27 = load i32, i32* @VB2_READ, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %30 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %33 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %34 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  store %struct.sta2x11_vip* %32, %struct.sta2x11_vip** %35, align 8
  %36 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %37 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 4, i32* %38, align 4
  %39 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %40 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  store i32* @vip_video_qops, i32** %41, align 8
  %42 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %43 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  store i32* @vb2_dma_contig_memops, i32** %44, align 8
  %45 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %46 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %47 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %50 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %54 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i32* %52, i32** %55, align 8
  %56 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %57 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %56, i32 0, i32 3
  %58 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %59 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32* %57, i32** %60, align 8
  %61 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %62 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %61, i32 0, i32 2
  %63 = call i32 @vb2_queue_init(%struct.TYPE_5__* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %18
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %18
  %69 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %70 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %69, i32 0, i32 1
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %73 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_init(i32* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %66, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_5__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
