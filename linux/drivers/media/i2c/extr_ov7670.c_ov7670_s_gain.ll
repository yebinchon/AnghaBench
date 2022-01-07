; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_GAIN = common dso_local global i32 0, align 4
@REG_COM8 = common dso_local global i32 0, align 4
@COM8_AGC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7670_s_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_gain(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = load i32, i32* @REG_GAIN, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 255
  %11 = trunc i32 %10 to i8
  %12 = call i32 @ov7670_write(%struct.v4l2_subdev* %7, i32 %8, i8 zeroext %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = load i32, i32* @REG_COM8, align 4
  %18 = call i32 @ov7670_read(%struct.v4l2_subdev* %16, i32 %17, i8* %6)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load i32, i32* @REG_COM8, align 4
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @COM8_AGC, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = trunc i32 %26 to i8
  %28 = call i32 @ov7670_write(%struct.v4l2_subdev* %19, i32 %20, i8 zeroext %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %15, %2
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
