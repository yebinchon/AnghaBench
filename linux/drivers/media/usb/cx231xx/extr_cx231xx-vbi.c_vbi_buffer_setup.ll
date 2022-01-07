; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_vbi_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_vbi_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, i32 }

@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@PAL_VBI_LINES = common dso_local global i32 0, align 4
@NTSC_VBI_LINES = common dso_local global i32 0, align 4
@CX231XX_DEF_VBI_BUF = common dso_local global i32 0, align 4
@CX231XX_MIN_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @vbi_buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbi_buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  %9 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %11 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %10, i32 0, i32 0
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %11, align 8
  store %struct.cx231xx_fh* %12, %struct.cx231xx_fh** %7, align 8
  %13 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %14 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %13, i32 0, i32 0
  %15 = load %struct.cx231xx*, %struct.cx231xx** %14, align 8
  store %struct.cx231xx* %15, %struct.cx231xx** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_STD_625_50, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @PAL_VBI_LINES, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @NTSC_VBI_LINES, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %30, %31
  %33 = mul nsw i32 %32, 2
  %34 = mul nsw i32 %33, 2
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @CX231XX_DEF_VBI_BUF, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CX231XX_MIN_BUF, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @CX231XX_MIN_BUF, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %42
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
