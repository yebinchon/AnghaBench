; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_video_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_video_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { %struct.TYPE_8__*, %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TW5864_INPUTS = common dso_local global i32 0, align 4
@H264_BUF_CNT = common dso_local global i32 0, align 4
@H264_VLC_BUF_SIZE = common dso_local global i32 0, align 4
@H264_MV_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tw5864_video_fini(%struct.tw5864_dev* %0) #0 {
  %2 = alloca %struct.tw5864_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.tw5864_dev* %0, %struct.tw5864_dev** %2, align 8
  %4 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %5 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %4, i32 0, i32 3
  %6 = call i32 @tasklet_kill(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TW5864_INPUTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %13 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @tw5864_video_input_fini(i32* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %7

22:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %76, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @H264_BUF_CNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %23
  %28 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %29 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* @H264_VLC_BUF_SIZE, align 4
  %33 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %34 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %43 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_free_coherent(i32* %31, i32 %32, i32 %41, i32 %50)
  %52 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %53 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* @H264_MV_BUF_SIZE, align 4
  %57 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %58 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %67 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dma_free_coherent(i32* %55, i32 %56, i32 %65, i32 %74)
  br label %76

76:                                               ; preds = %27
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %23

79:                                               ; preds = %23
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @tw5864_video_input_fini(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
