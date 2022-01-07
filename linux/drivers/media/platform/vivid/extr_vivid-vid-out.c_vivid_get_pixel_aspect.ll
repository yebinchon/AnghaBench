; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_get_pixel_aspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_get_pixel_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, %struct.TYPE_2__ }
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
  %5 = call i64 @vivid_is_svid_out(%struct.vivid_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @V4L2_STD_525_60, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @TPG_PIXEL_ASPECT_NTSC, align 4
  br label %18

16:                                               ; preds = %7
  %17 = load i32, i32* @TPG_PIXEL_ASPECT_PAL, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %22 = call i64 @vivid_is_hdmi_out(%struct.vivid_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 720
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %32 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 576
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 480
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @TPG_PIXEL_ASPECT_NTSC, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @TPG_PIXEL_ASPECT_PAL, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %30, %24, %20
  %49 = load i32, i32* @TPG_PIXEL_ASPECT_SQUARE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %46, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @vivid_is_svid_out(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_out(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
