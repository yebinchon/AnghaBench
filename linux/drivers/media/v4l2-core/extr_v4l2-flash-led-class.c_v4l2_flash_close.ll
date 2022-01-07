; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.v4l2_flash = type { i64*, %struct.led_classdev*, %struct.led_classdev_flash* }
%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { %struct.led_classdev }

@STROBE_SOURCE = common dso_local global i64 0, align 8
@V4L2_FLASH_STROBE_SOURCE_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @v4l2_flash_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_flash_close(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_fh*, align 8
  %6 = alloca %struct.v4l2_flash*, align 8
  %7 = alloca %struct.led_classdev_flash*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca %struct.led_classdev*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.v4l2_flash* @v4l2_subdev_to_v4l2_flash(%struct.v4l2_subdev* %11)
  store %struct.v4l2_flash* %12, %struct.v4l2_flash** %6, align 8
  %13 = load %struct.v4l2_flash*, %struct.v4l2_flash** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %13, i32 0, i32 2
  %15 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %14, align 8
  store %struct.led_classdev_flash* %15, %struct.led_classdev_flash** %7, align 8
  %16 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %7, align 8
  %17 = icmp ne %struct.led_classdev_flash* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %7, align 8
  %20 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %19, i32 0, i32 0
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi %struct.led_classdev* [ %20, %18 ], [ null, %21 ]
  store %struct.led_classdev* %23, %struct.led_classdev** %8, align 8
  %24 = load %struct.v4l2_flash*, %struct.v4l2_flash** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %24, i32 0, i32 1
  %26 = load %struct.led_classdev*, %struct.led_classdev** %25, align 8
  store %struct.led_classdev* %26, %struct.led_classdev** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %27, i32 0, i32 0
  %29 = call i32 @v4l2_fh_is_singular(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %75

32:                                               ; preds = %22
  %33 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %34 = icmp ne %struct.led_classdev* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %37 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.v4l2_flash*, %struct.v4l2_flash** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @STROBE_SOURCE, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load %struct.v4l2_flash*, %struct.v4l2_flash** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @STROBE_SOURCE, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @V4L2_FLASH_STROBE_SOURCE_SOFTWARE, align 4
  %54 = call i32 @v4l2_ctrl_s_ctrl(i64 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %46, %35
  %56 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %57 = call i32 @led_sysfs_enable(%struct.led_classdev* %56)
  %58 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %59 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %55, %32
  %62 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %63 = icmp ne %struct.led_classdev* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %66 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %69 = call i32 @led_sysfs_enable(%struct.led_classdev* %68)
  %70 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %71 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %73

73:                                               ; preds = %64, %61
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %31
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.v4l2_flash* @v4l2_subdev_to_v4l2_flash(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_fh_is_singular(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i64, i32) #1

declare dso_local i32 @led_sysfs_enable(%struct.led_classdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
