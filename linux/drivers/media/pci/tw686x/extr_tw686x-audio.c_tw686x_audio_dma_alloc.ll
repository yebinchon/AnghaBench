; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tw686x_audio_channel = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i8* }

@TW686X_DMA_MODE_MEMCPY = common dso_local global i64 0, align 8
@ADMA_B_ADDR = common dso_local global i32* null, align 8
@ADMA_P_ADDR = common dso_local global i32* null, align 8
@AUDIO_DMA_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"dma%d: unable to allocate audio DMA %s-buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw686x_dev*, %struct.tw686x_audio_channel*)* @tw686x_audio_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_audio_dma_alloc(%struct.tw686x_dev* %0, %struct.tw686x_audio_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw686x_dev*, align 8
  %5 = alloca %struct.tw686x_audio_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %4, align 8
  store %struct.tw686x_audio_channel* %1, %struct.tw686x_audio_channel** %5, align 8
  %9 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %10 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TW686X_DMA_MODE_MEMCPY, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %95, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %98

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32*, i32** @ADMA_B_ADDR, align 8
  %24 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %5, align 8
  %25 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  br label %36

29:                                               ; preds = %19
  %30 = load i32*, i32** @ADMA_P_ADDR, align 8
  %31 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %5, align 8
  %32 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i32 [ %28, %22 ], [ %35, %29 ]
  store i32 %37, i32* %7, align 4
  %38 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %39 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* @AUDIO_DMA_SIZE_MAX, align 4
  %42 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %5, align 8
  %43 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i8* @pci_alloc_consistent(%struct.TYPE_4__* %40, i32 %41, i32* %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %36
  %53 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %54 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %5, align 8
  %58 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %59, i8* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %99

67:                                               ; preds = %36
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %5, align 8
  %70 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i8* %68, i8** %75, align 8
  %76 = load i32, i32* @AUDIO_DMA_SIZE_MAX, align 4
  %77 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %5, align 8
  %78 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %5, align 8
  %87 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @reg_write(%struct.tw686x_dev* %84, i32 %85, i32 %93)
  br label %95

95:                                               ; preds = %67
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %16

98:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %52, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i8* @pci_alloc_consistent(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i8*) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
