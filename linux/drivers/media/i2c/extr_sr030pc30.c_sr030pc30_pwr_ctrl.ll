; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_pwr_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_pwr_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.sr030pc30_info = type { i32, i32 }

@POWER_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @sr030pc30_pwr_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr030pc30_pwr_ctrl(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sr030pc30_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.sr030pc30_info* @to_sr030pc30(%struct.v4l2_subdev* %10)
  store %struct.sr030pc30_info* %11, %struct.sr030pc30_info** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 241, i32 240
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load i32, i32* @POWER_CTRL_REG, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, 2
  %23 = call i32 @cam_i2c_write(%struct.v4l2_subdev* %19, i32 %20, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load i32, i32* @POWER_CTRL_REG, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @cam_i2c_write(%struct.v4l2_subdev* %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %7, align 8
  %37 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %7, align 8
  %42 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.sr030pc30_info* @to_sr030pc30(%struct.v4l2_subdev*) #1

declare dso_local i32 @cam_i2c_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
