; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c___s5k6aa_get_crop_rect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c___s5k6aa_get_crop_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32 }
%struct.s5k6aa = type { i32, %struct.v4l2_rect }
%struct.v4l2_subdev_pad_config = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_rect* (%struct.s5k6aa*, %struct.v4l2_subdev_pad_config*, i32)* @__s5k6aa_get_crop_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_rect* @__s5k6aa_get_crop_rect(%struct.s5k6aa* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.s5k6aa*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %13 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %12, i32 0, i32 1
  store %struct.v4l2_rect* %13, %struct.v4l2_rect** %4, align 8
  br label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %21 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %20, i32 0, i32 0
  %22 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %23 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(i32* %21, %struct.v4l2_subdev_pad_config* %22, i32 0)
  store %struct.v4l2_rect* %23, %struct.v4l2_rect** %4, align 8
  br label %24

24:                                               ; preds = %14, %11
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  ret %struct.v4l2_rect* %25
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
