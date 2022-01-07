; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }

@ADV7183_BRIGHTNESS = common dso_local global i32 0, align 4
@ADV7183_CONTRAST = common dso_local global i32 0, align 4
@ADV7183_SD_SATURATION_CB = common dso_local global i32 0, align 4
@ADV7183_SD_SATURATION_CR = common dso_local global i32 0, align 4
@ADV7183_SD_OFFSET_CB = common dso_local global i32 0, align 4
@ADV7183_SD_OFFSET_CR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @adv7183_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %52 [
    i32 131, label %14
    i32 130, label %25
    i32 128, label %30
    i32 129, label %41
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 127, %18
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = load i32, i32* @ADV7183_BRIGHTNESS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @adv7183_write(%struct.v4l2_subdev* %21, i32 %22, i32 %23)
  br label %55

25:                                               ; preds = %1
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load i32, i32* @ADV7183_CONTRAST, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @adv7183_write(%struct.v4l2_subdev* %26, i32 %27, i32 %28)
  br label %55

30:                                               ; preds = %1
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load i32, i32* @ADV7183_SD_SATURATION_CB, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 8
  %35 = call i32 @adv7183_write(%struct.v4l2_subdev* %31, i32 %32, i32 %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = load i32, i32* @ADV7183_SD_SATURATION_CR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = call i32 @adv7183_write(%struct.v4l2_subdev* %36, i32 %37, i32 %39)
  br label %55

41:                                               ; preds = %1
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %43 = load i32, i32* @ADV7183_SD_OFFSET_CB, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 8
  %46 = call i32 @adv7183_write(%struct.v4l2_subdev* %42, i32 %43, i32 %45)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %48 = load i32, i32* @ADV7183_SD_OFFSET_CR, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @adv7183_write(%struct.v4l2_subdev* %47, i32 %48, i32 %50)
  br label %55

52:                                               ; preds = %1
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %41, %30, %25, %20
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local i32 @adv7183_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
