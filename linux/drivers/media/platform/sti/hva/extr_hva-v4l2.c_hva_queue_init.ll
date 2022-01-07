; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32, i32, i32 }
%struct.hva_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@MIN_FRAMES = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@MIN_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vb2_queue*, %struct.vb2_queue*)* @hva_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_queue_init(i8* %0, %struct.vb2_queue* %1, %struct.vb2_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca %struct.hva_ctx*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.vb2_queue* %1, %struct.vb2_queue** %6, align 8
  store %struct.vb2_queue* %2, %struct.vb2_queue** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hva_ctx*
  store %struct.hva_ctx* %11, %struct.hva_ctx** %8, align 8
  %12 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 0
  store i32 4, i32* %16, align 4
  %17 = load i32, i32* @MIN_FRAMES, align 4
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %29 = call i32 @queue_init(%struct.hva_ctx* %27, %struct.vb2_queue* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %3
  %35 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %37 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %39 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %38, i32 0, i32 0
  store i32 4, i32* %39, align 4
  %40 = load i32, i32* @MIN_STREAMS, align 4
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %42 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %49 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %51 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %52 = call i32 @queue_init(%struct.hva_ctx* %50, %struct.vb2_queue* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %34, %32
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @queue_init(%struct.hva_ctx*, %struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
