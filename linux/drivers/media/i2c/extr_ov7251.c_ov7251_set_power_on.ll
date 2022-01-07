; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_set_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_set_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7251 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"clk prepare enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov7251*)* @ov7251_set_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7251_set_power_on(%struct.ov7251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov7251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ov7251* %0, %struct.ov7251** %3, align 8
  %6 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %7 = call i32 @ov7251_regulators_enable(%struct.ov7251* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %14 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %21 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %25 = call i32 @ov7251_regulators_disable(%struct.ov7251* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %12
  %28 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %29 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpiod_set_value_cansleep(i32 %30, i32 1)
  %32 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %33 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DIV_ROUND_UP(i32 %34, i32 1000)
  %36 = call i32 @DIV_ROUND_UP(i32 65536000, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1000
  %40 = call i32 @usleep_range(i32 %37, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %27, %19, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ov7251_regulators_enable(%struct.ov7251*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ov7251_regulators_disable(%struct.ov7251*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
