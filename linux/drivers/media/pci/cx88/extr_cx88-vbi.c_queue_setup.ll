; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vbi.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vbi.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.cx8800_dev* }
%struct.cx8800_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VBI_LINE_NTSC_COUNT = common dso_local global i32 0, align 4
@VBI_LINE_LENGTH = common dso_local global i32 0, align 4
@VBI_LINE_PAL_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.cx8800_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 0
  %14 = load %struct.cx8800_dev*, %struct.cx8800_dev** %13, align 8
  store %struct.cx8800_dev* %14, %struct.cx8800_dev** %11, align 8
  %15 = load i32*, i32** %8, align 8
  store i32 1, i32* %15, align 4
  %16 = load %struct.cx8800_dev*, %struct.cx8800_dev** %11, align 8
  %17 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_STD_525_60, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* @VBI_LINE_NTSC_COUNT, align 4
  %26 = load i32, i32* @VBI_LINE_LENGTH, align 4
  %27 = mul nsw i32 %25, %26
  %28 = mul nsw i32 %27, 2
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  br label %38

31:                                               ; preds = %5
  %32 = load i32, i32* @VBI_LINE_PAL_COUNT, align 4
  %33 = load i32, i32* @VBI_LINE_LENGTH, align 4
  %34 = mul nsw i32 %32, %33
  %35 = mul nsw i32 %34, 2
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %24
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
