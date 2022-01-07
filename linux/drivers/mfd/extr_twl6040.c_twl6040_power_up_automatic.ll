; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_power_up_automatic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_power_up_automatic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6040 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for READYINT\0A\00", align 1
@TWL6040_REG_INTID = common dso_local global i32 0, align 4
@TWL6040_READYINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"automatic power-up failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6040*)* @twl6040_power_up_automatic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_power_up_automatic(%struct.twl6040* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl6040*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twl6040* %0, %struct.twl6040** %3, align 8
  %6 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %7 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gpio_set_value(i32 %8, i32 1)
  %10 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %11 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %10, i32 0, i32 2
  %12 = call i32 @msecs_to_jiffies(i32 144)
  %13 = call i32 @wait_for_completion_timeout(i32* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %1
  %17 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %18 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %22 = load i32, i32* @TWL6040_REG_INTID, align 4
  %23 = call i32 @twl6040_reg_read(%struct.twl6040* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TWL6040_READYINT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %16
  %29 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %30 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %34 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gpio_set_value(i32 %35, i32 0)
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @twl6040_reg_read(%struct.twl6040*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
