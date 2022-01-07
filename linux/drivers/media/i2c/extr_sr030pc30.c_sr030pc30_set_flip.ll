; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_set_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_set_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.sr030pc30_info = type { i64, i64 }

@VDO_CTL2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @sr030pc30_set_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr030pc30_set_flip(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.sr030pc30_info*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.sr030pc30_info* @to_sr030pc30(%struct.v4l2_subdev* %6)
  store %struct.sr030pc30_info* %7, %struct.sr030pc30_info** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = load i32, i32* @VDO_CTL2_REG, align 4
  %10 = call i32 @cam_i2c_read(%struct.v4l2_subdev* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 124
  store i32 %17, i32* %5, align 4
  %18 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %4, align 8
  %19 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %4, align 8
  %27 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 2
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = load i32, i32* @VDO_CTL2_REG, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, 128
  %38 = call i32 @cam_i2c_write(%struct.v4l2_subdev* %34, i32 %35, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.sr030pc30_info* @to_sr030pc30(%struct.v4l2_subdev*) #1

declare dso_local i32 @cam_i2c_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @cam_i2c_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
