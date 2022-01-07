; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.isp_video = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.isp_video_fh = type { i32, %struct.isp_video*, %struct.TYPE_6__, %struct.TYPE_9__, %struct.vb2_queue }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32*, %struct.isp_video_fh*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@isp_video_queue_ops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @isp_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.isp_video*, align 8
  %5 = alloca %struct.isp_video_fh*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.isp_video* @video_drvdata(%struct.file* %8)
  store %struct.isp_video* %9, %struct.isp_video** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.isp_video_fh* @kzalloc(i32 72, i32 %10)
  store %struct.isp_video_fh* %11, %struct.isp_video_fh** %5, align 8
  %12 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %13 = icmp eq %struct.isp_video_fh* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %122

17:                                               ; preds = %1
  %18 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %19 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %18, i32 0, i32 0
  %20 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %21 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %20, i32 0, i32 2
  %22 = call i32 @v4l2_fh_init(i32* %19, %struct.TYPE_7__* %21)
  %23 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %24 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %23, i32 0, i32 0
  %25 = call i32 @v4l2_fh_add(i32* %24)
  %26 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %27 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i32* @omap3isp_get(%struct.TYPE_8__* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %108

34:                                               ; preds = %17
  %35 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %36 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @v4l2_pipeline_pm_use(i32* %37, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %43 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 @omap3isp_put(%struct.TYPE_8__* %44)
  br label %108

46:                                               ; preds = %34
  %47 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %48 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %47, i32 0, i32 4
  store %struct.vb2_queue* %48, %struct.vb2_queue** %6, align 8
  %49 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %50 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @VB2_MMAP, align 4
  %55 = load i32, i32* @VB2_USERPTR, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %58 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %60 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %61 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %60, i32 0, i32 6
  store %struct.isp_video_fh* %59, %struct.isp_video_fh** %61, align 8
  %62 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %63 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %62, i32 0, i32 5
  store i32* @isp_video_queue_ops, i32** %63, align 8
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 4
  store i32* @vb2_dma_contig_memops, i32** %65, align 8
  %66 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %67 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %66, i32 0, i32 1
  store i32 4, i32* %67, align 4
  %68 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %72 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %77 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %79 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %78, i32 0, i32 4
  %80 = call i32 @vb2_queue_init(%struct.vb2_queue* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %46
  %84 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %85 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @omap3isp_put(%struct.TYPE_8__* %86)
  br label %108

88:                                               ; preds = %46
  %89 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %90 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %89, i32 0, i32 3
  %91 = call i32 @memset(%struct.TYPE_9__* %90, i32 0, i32 4)
  %92 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %93 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %96 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %99 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %102 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %103 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %102, i32 0, i32 1
  store %struct.isp_video* %101, %struct.isp_video** %103, align 8
  %104 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %105 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %104, i32 0, i32 0
  %106 = load %struct.file*, %struct.file** %3, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 0
  store i32* %105, i32** %107, align 8
  br label %108

108:                                              ; preds = %88, %83, %41, %31
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %113 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %112, i32 0, i32 0
  %114 = call i32 @v4l2_fh_del(i32* %113)
  %115 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %116 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %115, i32 0, i32 0
  %117 = call i32 @v4l2_fh_exit(i32* %116)
  %118 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %119 = call i32 @kfree(%struct.isp_video_fh* %118)
  br label %120

120:                                              ; preds = %111, %108
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %14
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.isp_video* @video_drvdata(%struct.file*) #1

declare dso_local %struct.isp_video_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i32* @omap3isp_get(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @omap3isp_put(%struct.TYPE_8__*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.isp_video_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
