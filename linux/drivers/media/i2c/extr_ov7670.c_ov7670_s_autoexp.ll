; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_autoexp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_autoexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_COM8 = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@COM8_AEC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7670_s_autoexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_autoexp(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = load i32, i32* @REG_COM8, align 4
  %9 = call i32 @ov7670_read(%struct.v4l2_subdev* %7, i32 %8, i8* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8, i8* @COM8_AEC, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  br label %31

23:                                               ; preds = %12
  %24 = load i8, i8* @COM8_AEC, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %25, -1
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load i32, i32* @REG_COM8, align 4
  %34 = load i8, i8* %6, align 1
  %35 = call i32 @ov7670_write(%struct.v4l2_subdev* %32, i32 %33, i8 zeroext %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
