; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v111_dev = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @__mt9v111_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt9v111_power_on(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.mt9v111_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev* %6)
  store %struct.mt9v111_dev* %7, %struct.mt9v111_dev** %4, align 8
  %8 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_set_rate(i32 %19, i32 %22)
  %24 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpiod_set_value(i32 %26, i32 0)
  %28 = call i32 @usleep_range(i32 500, i32 1000)
  %29 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpiod_set_value(i32 %31, i32 1)
  %33 = call i32 @usleep_range(i32 500, i32 1000)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %16, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
