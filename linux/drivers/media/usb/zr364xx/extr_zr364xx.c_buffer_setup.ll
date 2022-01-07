; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.zr364xx_camera* }
%struct.zr364xx_camera = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ZR364XX_DEF_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zr364xx_camera*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %9, align 8
  store %struct.zr364xx_camera* %10, %struct.zr364xx_camera** %7, align 8
  %11 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %7, align 8
  %12 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %7, align 8
  %15 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %7, align 8
  %19 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 3
  %24 = mul nsw i32 %17, %23
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ZR364XX_DEF_BUFS, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %34, %36
  %38 = load i32, i32* @ZR364XX_DEF_BUFS, align 4
  %39 = mul nsw i32 %38, 1024
  %40 = mul nsw i32 %39, 1024
  %41 = icmp ugt i32 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load i32, i32* @ZR364XX_DEF_BUFS, align 4
  %44 = mul nsw i32 %43, 1024
  %45 = mul nsw i32 %44, 1024
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = udiv i32 %45, %47
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %32
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
