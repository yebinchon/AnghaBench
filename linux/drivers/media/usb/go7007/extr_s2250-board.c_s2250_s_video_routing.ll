; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_s2250_s_video_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_s2250_s_video_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s2250 = type { i64, i32 }
%struct.i2c_client = type { i32 }

@V4L2_STD_NTSC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @s2250_s_video_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2250_s_video_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.s2250*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.s2250* @to_state(%struct.v4l2_subdev* %13)
  store %struct.s2250* %14, %struct.s2250** %10, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %11, align 8
  %17 = load %struct.s2250*, %struct.s2250** %10, align 8
  %18 = getelementptr inbounds %struct.s2250, %struct.s2250* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_STD_NTSC, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = or i32 32, %28
  %30 = call i32 @write_reg_fp(%struct.i2c_client* %27, i32 32, i32 %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %32 = call i32 @write_reg_fp(%struct.i2c_client* %31, i32 33, i32 1634)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %34 = call i32 @write_reg_fp(%struct.i2c_client* %33, i32 320, i32 96)
  br label %51

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = or i32 64, %40
  %42 = call i32 @write_reg_fp(%struct.i2c_client* %39, i32 32, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %44 = call i32 @write_reg_fp(%struct.i2c_client* %43, i32 33, i32 1638)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %46 = call i32 @write_reg_fp(%struct.i2c_client* %45, i32 320, i32 96)
  br label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.s2250*, %struct.s2250** %10, align 8
  %54 = getelementptr inbounds %struct.s2250, %struct.s2250* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.s2250* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @write_reg_fp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
