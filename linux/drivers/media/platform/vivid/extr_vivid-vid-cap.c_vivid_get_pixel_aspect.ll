; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_get_pixel_aspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_get_pixel_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@TPG_PIXEL_ASPECT_NTSC = common dso_local global i32 0, align 4
@TPG_PIXEL_ASPECT_PAL = common dso_local global i32 0, align 4
@TPG_PIXEL_ASPECT_SQUARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*)* @vivid_get_pixel_aspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_get_pixel_aspect(%struct.vivid_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vivid_dev*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  %4 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %5 = call i64 @vivid_is_sdtv_cap(%struct.vivid_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @V4L2_STD_525_60, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32, i32* @TPG_PIXEL_ASPECT_NTSC, align 4
  br label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @TPG_PIXEL_ASPECT_PAL, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %2, align 4
  br label %55

25:                                               ; preds = %1
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %27 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 720
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %37 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 576
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 480
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @TPG_PIXEL_ASPECT_NTSC, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @TPG_PIXEL_ASPECT_PAL, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %35, %29, %25
  %54 = load i32, i32* @TPG_PIXEL_ASPECT_SQUARE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %23
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
