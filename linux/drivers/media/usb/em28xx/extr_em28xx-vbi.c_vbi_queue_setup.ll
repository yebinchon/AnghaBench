; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-vbi.c_vbi_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-vbi.c_vbi_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.em28xx = type { %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vbi_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbi_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.em28xx*, align 8
  %13 = alloca %struct.em28xx_v4l2*, align 8
  %14 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.em28xx* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.em28xx* %16, %struct.em28xx** %12, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %12, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 0
  %19 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %18, align 8
  store %struct.em28xx_v4l2* %19, %struct.em28xx_v4l2** %13, align 8
  %20 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %13, align 8
  %21 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %13, align 8
  %24 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %14, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32*, i32** %8, align 8
  store i32 2, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %5
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %14, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %59

48:                                               ; preds = %38
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %48, %34
  %54 = load i32*, i32** %9, align 8
  store i32 1, i32* %54, align 4
  %55 = load i64, i64* %14, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %45
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.em28xx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
