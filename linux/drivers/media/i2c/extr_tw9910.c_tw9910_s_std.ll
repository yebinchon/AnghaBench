; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tw9910_priv = type { i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VVBI = common dso_local global i32 0, align 4
@CROP_HI = common dso_local global i32 0, align 4
@VDELAY_LO = common dso_local global i32 0, align 4
@VACTIVE_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tw9910_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.tw9910_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %15)
  store %struct.tw9910_priv* %16, %struct.tw9910_priv** %7, align 8
  store i32 720, i32* %8, align 4
  store i32 15, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @V4L2_STD_NTSC, align 4
  %19 = load i32, i32* @V4L2_STD_PAL, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %29 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @V4L2_STD_525_60, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  store i32 240, i32* %10, align 4
  store i32 18, i32* %11, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = load i32, i32* @VVBI, align 4
  %37 = call i32 @tw9910_mask_set(%struct.i2c_client* %35, i32 %36, i32 16, i32 16)
  store i32 %37, i32* %12, align 4
  br label %42

38:                                               ; preds = %26
  store i32 288, i32* %10, align 4
  store i32 24, i32* %11, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = load i32, i32* @VVBI, align 4
  %41 = call i32 @tw9910_mask_set(%struct.i2c_client* %39, i32 %40, i32 16, i32 0)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = load i32, i32* @CROP_HI, align 4
  %48 = load i32, i32* %11, align 4
  %49 = lshr i32 %48, 2
  %50 = and i32 %49, 192
  %51 = load i32, i32* %10, align 4
  %52 = lshr i32 %51, 4
  %53 = and i32 %52, 48
  %54 = or i32 %50, %53
  %55 = or i32 %54, 2
  %56 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %46, i32 %47, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %62 = load i32, i32* @VDELAY_LO, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 255
  %65 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %61, i32 %62, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %71 = load i32, i32* @VACTIVE_LO, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %70, i32 %71, i32 %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local i32 @tw9910_mask_set(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
