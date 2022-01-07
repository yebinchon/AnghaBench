; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_complete_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_complete_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32*, %struct.vb2_queue*, %struct.TYPE_4__* }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, %struct.cal_ctx*, i32 }
%struct.cal_ctx = type { i32, %struct.TYPE_4__, i32, %struct.video_device, %struct.TYPE_3__, %struct.vb2_queue, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@tpf_default = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@cal_video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@cal_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"V4L2 device registered as %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cal_ctx*)* @cal_complete_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_complete_ctx(%struct.cal_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cal_ctx*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %3, align 8
  %7 = load i32, i32* @tpf_default, align 4
  %8 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %10, i32 0, i32 0
  store i32 192000000, i32* %11, align 8
  %12 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %12, i32 0, i32 6
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %15, i32 0, i32 2
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %18, i32 0, i32 5
  store %struct.vb2_queue* %19, %struct.vb2_queue** %5, align 8
  %20 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @VB2_MMAP, align 4
  %24 = load i32, i32* @VB2_DMABUF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VB2_READ, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 8
  store %struct.cal_ctx* %30, %struct.cal_ctx** %32, align 8
  %33 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %34 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %33, i32 0, i32 1
  store i32 4, i32* %34, align 4
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 7
  store i32* @cal_video_qops, i32** %36, align 8
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %38 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %37, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %38, align 8
  %39 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %40 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %41 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %42, i32 0, i32 2
  %44 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %45 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %47 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %46, i32 0, i32 2
  store i32 3, i32* %47, align 8
  %48 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %55 = call i32 @vb2_queue_init(%struct.vb2_queue* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %1
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %97

60:                                               ; preds = %1
  %61 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %65, i32 0, i32 3
  store %struct.video_device* %66, %struct.video_device** %4, align 8
  %67 = load %struct.video_device*, %struct.video_device** %4, align 8
  %68 = bitcast %struct.video_device* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 bitcast (%struct.video_device* @cal_videodev to i8*), i64 24, i1 false)
  %69 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %69, i32 0, i32 1
  %71 = load %struct.video_device*, %struct.video_device** %4, align 8
  %72 = getelementptr inbounds %struct.video_device, %struct.video_device* %71, i32 0, i32 2
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %74 = load %struct.video_device*, %struct.video_device** %4, align 8
  %75 = getelementptr inbounds %struct.video_device, %struct.video_device* %74, i32 0, i32 1
  store %struct.vb2_queue* %73, %struct.vb2_queue** %75, align 8
  %76 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %76, i32 0, i32 2
  %78 = load %struct.video_device*, %struct.video_device** %4, align 8
  %79 = getelementptr inbounds %struct.video_device, %struct.video_device* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.video_device*, %struct.video_device** %4, align 8
  %81 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %82 = call i32 @video_set_drvdata(%struct.video_device* %80, %struct.cal_ctx* %81)
  %83 = load %struct.video_device*, %struct.video_device** %4, align 8
  %84 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %85 = load i32, i32* @video_nr, align 4
  %86 = call i32 @video_register_device(%struct.video_device* %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %60
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %97

91:                                               ; preds = %60
  %92 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %92, i32 0, i32 1
  %94 = load %struct.video_device*, %struct.video_device** %4, align 8
  %95 = call i32 @video_device_node_name(%struct.video_device* %94)
  %96 = call i32 @v4l2_info(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %89, %58
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.cal_ctx*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
