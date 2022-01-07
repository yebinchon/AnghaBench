; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_find_best_fit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_find_best_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5695_mode = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }

@supported_modes = common dso_local global %struct.ov5695_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ov5695_mode* (%struct.v4l2_subdev_format*)* @ov5695_find_best_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ov5695_mode* @ov5695_find_best_fit(%struct.v4l2_subdev_format* %0) #0 {
  %2 = alloca %struct.v4l2_subdev_format*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev_format* %0, %struct.v4l2_subdev_format** %2, align 8
  %8 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %2, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %9, %struct.v4l2_mbus_framefmt** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ov5695_mode*, %struct.ov5695_mode** @supported_modes, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.ov5695_mode* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.ov5695_mode*, %struct.ov5695_mode** @supported_modes, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %16, i64 %18
  %20 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %21 = call i32 @ov5695_get_reso_dist(%struct.ov5695_mode* %19, %struct.v4l2_mbus_framefmt* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.ov5695_mode*, %struct.ov5695_mode** @supported_modes, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ov5695_mode, %struct.ov5695_mode* %36, i64 %38
  ret %struct.ov5695_mode* %39
}

declare dso_local i32 @ARRAY_SIZE(%struct.ov5695_mode*) #1

declare dso_local i32 @ov5695_get_reso_dist(%struct.ov5695_mode*, %struct.v4l2_mbus_framefmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
