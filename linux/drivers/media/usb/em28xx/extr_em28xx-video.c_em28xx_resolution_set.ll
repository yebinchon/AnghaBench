; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_resolution_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_resolution_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i32, i32, i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_resolution_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_resolution_set(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.em28xx_v4l2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 0
  %8 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  store %struct.em28xx_v4l2* %8, %struct.em28xx_v4l2** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %10 = call i32 @norm_maxw(%struct.em28xx* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %12 = call i32 @norm_maxh(%struct.em28xx* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %3, align 8
  %14 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %13, i32 0, i32 0
  store i32 720, i32* %14, align 4
  %15 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %3, align 8
  %16 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_STD_525_60, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %22, i32 0, i32 2
  store i32 12, i32* %23, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %3, align 8
  %26 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %25, i32 0, i32 2
  store i32 18, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %29 = call i32 @em28xx_set_outfmt(%struct.em28xx* %28)
  %30 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 4
  %33 = ashr i32 %32, 2
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 4
  %36 = ashr i32 %35, 2
  %37 = call i32 @em28xx_accumulator_set(%struct.em28xx* %30, i32 1, i32 %33, i32 1, i32 %36)
  %38 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %39 = call i32 @em28xx_vbi_supported(%struct.em28xx* %38)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @em28xx_capture_area_set(%struct.em28xx* %42, i32 0, i32 2, i32 %43, i32 %44)
  br label %51

46:                                               ; preds = %27
  %47 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @em28xx_capture_area_set(%struct.em28xx* %47, i32 0, i32 0, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %53 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %3, align 8
  %54 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %3, align 8
  %57 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @em28xx_scaler_set(%struct.em28xx* %52, i32 %55, i32 %58)
  ret i32 %59
}

declare dso_local i32 @norm_maxw(%struct.em28xx*) #1

declare dso_local i32 @norm_maxh(%struct.em28xx*) #1

declare dso_local i32 @em28xx_set_outfmt(%struct.em28xx*) #1

declare dso_local i32 @em28xx_accumulator_set(%struct.em28xx*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_vbi_supported(%struct.em28xx*) #1

declare dso_local i32 @em28xx_capture_area_set(%struct.em28xx*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_scaler_set(%struct.em28xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
