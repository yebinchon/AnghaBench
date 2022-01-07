; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpiomtd = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.gpiomtd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.gpiomtd* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.gpiomtd* %5, %struct.gpiomtd** %3, align 8
  %6 = load %struct.gpiomtd*, %struct.gpiomtd** %3, align 8
  %7 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %6, i32 0, i32 2
  %8 = call i32 @nand_release(i32* %7)
  %9 = load %struct.gpiomtd*, %struct.gpiomtd** %3, align 8
  %10 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.gpiomtd*, %struct.gpiomtd** %3, align 8
  %15 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IS_ERR(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.gpiomtd*, %struct.gpiomtd** %3, align 8
  %21 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpiod_set_value(i64 %22, i32 0)
  br label %24

24:                                               ; preds = %19, %13, %1
  %25 = load %struct.gpiomtd*, %struct.gpiomtd** %3, align 8
  %26 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.gpiomtd*, %struct.gpiomtd** %3, align 8
  %31 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @IS_ERR(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.gpiomtd*, %struct.gpiomtd** %3, align 8
  %37 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gpiod_set_value(i64 %38, i32 0)
  br label %40

40:                                               ; preds = %35, %29, %24
  ret i32 0
}

declare dso_local %struct.gpiomtd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
