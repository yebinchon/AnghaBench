; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v111_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @__mt9v111_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt9v111_power_off(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.mt9v111_dev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev* %4)
  store %struct.mt9v111_dev* %5, %struct.mt9v111_dev** %3, align 8
  %6 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gpiod_set_value(i32 %8, i32 0)
  %10 = call i32 @usleep_range(i32 500, i32 1000)
  %11 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpiod_set_value(i32 %13, i32 1)
  %15 = call i32 @usleep_range(i32 500, i32 1000)
  %16 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  ret i32 0
}

declare dso_local %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
