; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_sg_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_sg_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_video_channel = type { i64, i8**, %struct.tw686x_dev*, %struct.tw686x_dma_desc* }
%struct.tw686x_dev = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.tw686x_dma_desc = type { i32, i8*, i64 }

@DMA_PAGE_TABLE1_ADDR = common dso_local global i32* null, align 8
@DMA_PAGE_TABLE0_ADDR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"dma%d: unable to allocate %s-buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TW686X_SG_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw686x_video_channel*, i32)* @tw686x_sg_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_sg_dma_alloc(%struct.tw686x_video_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw686x_video_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tw686x_dma_desc*, align 8
  %7 = alloca %struct.tw686x_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.tw686x_video_channel* %0, %struct.tw686x_video_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %11 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %10, i32 0, i32 3
  %12 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %12, i64 %14
  store %struct.tw686x_dma_desc* %15, %struct.tw686x_dma_desc** %6, align 8
  %16 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %17 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %16, i32 0, i32 2
  %18 = load %struct.tw686x_dev*, %struct.tw686x_dev** %17, align 8
  store %struct.tw686x_dev* %18, %struct.tw686x_dev** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32*, i32** @DMA_PAGE_TABLE1_ADDR, align 8
  %23 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %24 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32*, i32** @DMA_PAGE_TABLE0_ADDR, align 8
  %30 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %31 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi i32 [ %27, %21 ], [ %34, %28 ]
  store i32 %36, i32* %8, align 4
  %37 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %6, align 8
  %38 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %43 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %6, align 8
  %46 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %6, align 8
  %49 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %48, i32 0, i32 0
  %50 = call i8* @pci_alloc_consistent(i32 %44, i64 %47, i32* %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %41
  %54 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %55 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %54, i32 0, i32 1
  %56 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %57 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @v4l2_err(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %58, i8* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %103

66:                                               ; preds = %41
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %6, align 8
  %69 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %6, align 8
  %73 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @reg_write(%struct.tw686x_dev* %70, i32 %71, i32 %74)
  br label %95

76:                                               ; preds = %35
  %77 = load %struct.tw686x_dev*, %struct.tw686x_dev** %7, align 8
  %78 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %89 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @TW686X_SG_TABLE_SIZE, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %90, %92
  %94 = getelementptr i8, i8* %87, i64 %93
  store i8* %94, i8** %9, align 8
  br label %95

95:                                               ; preds = %76, %66
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %98 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  store i8* %96, i8** %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %95, %53
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i8* @pci_alloc_consistent(i32, i64, i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i8*) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
