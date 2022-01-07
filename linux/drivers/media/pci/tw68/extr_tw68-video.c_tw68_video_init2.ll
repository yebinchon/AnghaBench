; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_video_init2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_video_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32*, %struct.tw68_dev*, i32*, i32*, i32, i32 }
%struct.tw68_dev = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@tvnorms = common dso_local global i32* null, align 8
@V4L2_PIX_FMT_BGR24 = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@tw68_video_qops = common dso_local global i32 0, align 4
@vb2_dma_sg_memops = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_KSWAPD_RECLAIM = common dso_local global i32 0, align 4
@tw68_video_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw68_video_init2(%struct.tw68_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw68_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tw68_dev* %0, %struct.tw68_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %8 = load i32*, i32** @tvnorms, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = call i32 @set_tvnorm(%struct.tw68_dev* %7, i32* %9)
  %11 = load i32, i32* @V4L2_PIX_FMT_BGR24, align 4
  %12 = call i32 @format_by_fourcc(i32 %11)
  %13 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %14 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %16 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %15, i32 0, i32 0
  store i32 720, i32* %16, align 8
  %17 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %17, i32 0, i32 1
  store i32 576, i32* %18, align 4
  %19 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %20 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %21 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %23 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %22, i32 0, i32 7
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %26 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %27 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 10
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %30 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %31 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 9
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @VB2_MMAP, align 4
  %34 = load i32, i32* @VB2_USERPTR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VB2_READ, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VB2_DMABUF, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %41 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %44 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 8
  store i32* @tw68_video_qops, i32** %45, align 8
  %46 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %47 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  store i32* @vb2_dma_sg_memops, i32** %48, align 8
  %49 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %50 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %51 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 6
  store %struct.tw68_dev* %49, %struct.tw68_dev** %52, align 8
  %53 = load i32, i32* @__GFP_DMA32, align 4
  %54 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %57 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %60 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 4, i32* %61, align 8
  %62 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %63 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %62, i32 0, i32 4
  %64 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %65 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  store i32* %63, i32** %66, align 8
  %67 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %68 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  store i32 2, i32* %69, align 4
  %70 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %71 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %70, i32 0, i32 6
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %75 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  store i32* %73, i32** %76, align 8
  %77 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %78 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %77, i32 0, i32 3
  %79 = call i32 @vb2_queue_init(%struct.TYPE_8__* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %2
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %112

84:                                               ; preds = %2
  %85 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %86 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %85, i32 0, i32 2
  %87 = bitcast %struct.TYPE_7__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 bitcast (%struct.TYPE_7__* @tw68_video_template to i8*), i64 24, i1 false)
  %88 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %89 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %88, i32 0, i32 5
  %90 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %91 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32* %89, i32** %92, align 8
  %93 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %94 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %93, i32 0, i32 4
  %95 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %96 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32* %94, i32** %97, align 8
  %98 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %99 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %98, i32 0, i32 3
  %100 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %101 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %102, align 8
  %103 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %104 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %103, i32 0, i32 2
  %105 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %106 = call i32 @video_set_drvdata(%struct.TYPE_7__* %104, %struct.tw68_dev* %105)
  %107 = load %struct.tw68_dev*, %struct.tw68_dev** %4, align 8
  %108 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %107, i32 0, i32 2
  %109 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @video_register_device(%struct.TYPE_7__* %108, i32 %109, i32 %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %84, %82
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @set_tvnorm(%struct.tw68_dev*, i32*) #1

declare dso_local i32 @format_by_fourcc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.tw68_dev*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
