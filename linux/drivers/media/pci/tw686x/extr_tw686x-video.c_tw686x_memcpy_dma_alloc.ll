; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_memcpy_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_memcpy_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_video_channel = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.tw686x_dev* }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.tw686x_dev = type { i32, i32 }

@VDMA_B_ADDR = common dso_local global i32* null, align 8
@VDMA_P_ADDR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Allocating buffer but previous still here\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"dma%d: unable to allocate %s-buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw686x_video_channel*, i32)* @tw686x_memcpy_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_memcpy_dma_alloc(%struct.tw686x_video_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw686x_video_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tw686x_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.tw686x_video_channel* %0, %struct.tw686x_video_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %11 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %10, i32 0, i32 5
  %12 = load %struct.tw686x_dev*, %struct.tw686x_dev** %11, align 8
  store %struct.tw686x_dev* %12, %struct.tw686x_dev** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** @VDMA_B_ADDR, align 8
  %17 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %18 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i32*, i32** @VDMA_P_ADDR, align 8
  %24 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %25 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = phi i32 [ %21, %15 ], [ %28, %22 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %32 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @WARN(i8* %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %41 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %44 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %48 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %46, %51
  %53 = ashr i32 %52, 3
  store i32 %53, i32* %8, align 4
  %54 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %55 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %59 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = call i8* @pci_alloc_consistent(i32 %56, i32 %57, i32* %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %29
  %69 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %70 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %69, i32 0, i32 0
  %71 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %72 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %78 = call i32 @v4l2_err(i32* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %73, i8* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %109

81:                                               ; preds = %29
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %84 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %82, i32* %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %92 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i8* %90, i8** %97, align 8
  %98 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %101 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @reg_write(%struct.tw686x_dev* %98, i32 %99, i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %81, %68
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @WARN(i8*, i8*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i8*) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
