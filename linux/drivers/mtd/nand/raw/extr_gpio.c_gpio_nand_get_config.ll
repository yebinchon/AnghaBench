; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpio_nand_platdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.gpio_nand_platdata*)* @gpio_nand_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_nand_get_config(%struct.device* %0, %struct.gpio_nand_platdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gpio_nand_platdata*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.gpio_nand_platdata* %1, %struct.gpio_nand_platdata** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load %struct.gpio_nand_platdata*, %struct.gpio_nand_platdata** %5, align 8
  %9 = call i32 @gpio_nand_get_config_of(%struct.device* %7, %struct.gpio_nand_platdata* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i64 @dev_get_platdata(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.gpio_nand_platdata*, %struct.gpio_nand_platdata** %5, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i64 @dev_get_platdata(%struct.device* %20)
  %22 = call i32 @memcpy(%struct.gpio_nand_platdata* %19, i64 %21, i32 4)
  store i32 0, i32* %3, align 4
  br label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %18, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @gpio_nand_get_config_of(%struct.device*, %struct.gpio_nand_platdata*) #1

declare dso_local i64 @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @memcpy(%struct.gpio_nand_platdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
