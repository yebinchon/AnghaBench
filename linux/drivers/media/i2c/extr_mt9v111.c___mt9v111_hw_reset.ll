; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v111_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9v111_dev*)* @__mt9v111_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt9v111_hw_reset(%struct.mt9v111_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9v111_dev*, align 8
  store %struct.mt9v111_dev* %0, %struct.mt9v111_dev** %3, align 8
  %4 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %5 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gpiod_set_value(i32 %14, i32 1)
  %16 = call i32 @usleep_range(i32 500, i32 1000)
  %17 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpiod_set_value(i32 %19, i32 0)
  %21 = call i32 @usleep_range(i32 500, i32 1000)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %11, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
