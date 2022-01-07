; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.v4l2_flash = type { %struct.led_classdev*, %struct.led_classdev_flash* }
%struct.led_classdev = type { i32 }
%struct.led_classdev_flash = type { %struct.led_classdev }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @v4l2_flash_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_flash_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
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
  %14 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %13, i32 0, i32 1
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
  %25 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %24, i32 0, i32 0
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
  br label %93

32:                                               ; preds = %22
  %33 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %34 = icmp ne %struct.led_classdev* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %37 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %40 = call i32 @led_sysfs_disable(%struct.led_classdev* %39)
  %41 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %42 = call i32 @led_trigger_remove(%struct.led_classdev* %41)
  %43 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %44 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %35, %32
  %47 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %48 = icmp ne %struct.led_classdev* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %51 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %54 = call i32 @led_sysfs_disable(%struct.led_classdev* %53)
  %55 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %56 = call i32 @led_trigger_remove(%struct.led_classdev* %55)
  %57 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %58 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %60

60:                                               ; preds = %49, %46
  %61 = load %struct.v4l2_flash*, %struct.v4l2_flash** %6, align 8
  %62 = call i32 @__sync_device_with_v4l2_controls(%struct.v4l2_flash* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %93

67:                                               ; preds = %65
  %68 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %69 = icmp ne %struct.led_classdev* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %72 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %75 = call i32 @led_sysfs_enable(%struct.led_classdev* %74)
  %76 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %77 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %70, %67
  %80 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %81 = icmp ne %struct.led_classdev* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %84 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %83, i32 0, i32 0
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %87 = call i32 @led_sysfs_enable(%struct.led_classdev* %86)
  %88 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %89 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %82, %79
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %66, %31
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.v4l2_flash* @v4l2_subdev_to_v4l2_flash(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_fh_is_singular(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @led_sysfs_disable(%struct.led_classdev*) #1

declare dso_local i32 @led_trigger_remove(%struct.led_classdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__sync_device_with_v4l2_controls(%struct.v4l2_flash*) #1

declare dso_local i32 @led_sysfs_enable(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
