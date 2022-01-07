; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.saa7134_dmaqueue* }
%struct.saa7134_dmaqueue = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.saa7134_dmaqueue*, align 8
  %13 = alloca %struct.saa7134_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 0
  %17 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %16, align 8
  store %struct.saa7134_dmaqueue* %17, %struct.saa7134_dmaqueue** %12, align 8
  %18 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %12, align 8
  %19 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %18, i32 0, i32 0
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %19, align 8
  store %struct.saa7134_dev* %20, %struct.saa7134_dev** %13, align 8
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = ashr i32 %33, 3
  store i32 %34, i32* %14, align 4
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 48
  br i1 %38, label %82, label %39

39:                                               ; preds = %5
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %41 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %82, label %44

44:                                               ; preds = %39
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 4
  %49 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %50 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %82, label %54

54:                                               ; preds = %44
  %55 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %56 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 4
  %59 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %60 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %54
  %65 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %66 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %69 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %75 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %78 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73, %64, %54, %44, %39, %5
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %97

85:                                               ; preds = %73
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @saa7134_buffer_count(i32 %86, i32 %88)
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 1, i32* %91, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %96 = call i32 @saa7134_enable_analog_tuner(%struct.saa7134_dev* %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %85, %82
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @saa7134_buffer_count(i32, i32) #1

declare dso_local i32 @saa7134_enable_analog_tuner(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
