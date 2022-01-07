; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_register_gpio_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_register_gpio_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32 }
%struct.sm501_platdata = type { i32, %struct.sm501_platdata_gpio_i2c* }
%struct.sm501_platdata_gpio_i2c = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501_devdata*, %struct.sm501_platdata*)* @sm501_register_gpio_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_register_gpio_i2c(%struct.sm501_devdata* %0, %struct.sm501_platdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca %struct.sm501_platdata*, align 8
  %6 = alloca %struct.sm501_platdata_gpio_i2c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %4, align 8
  store %struct.sm501_platdata* %1, %struct.sm501_platdata** %5, align 8
  %9 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %10 = getelementptr inbounds %struct.sm501_platdata, %struct.sm501_platdata* %9, i32 0, i32 1
  %11 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %10, align 8
  store %struct.sm501_platdata_gpio_i2c* %11, %struct.sm501_platdata_gpio_i2c** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %15 = getelementptr inbounds %struct.sm501_platdata, %struct.sm501_platdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %20 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %6, align 8
  %21 = call i32 @sm501_register_gpio_i2c_instance(%struct.sm501_devdata* %19, %struct.sm501_platdata_gpio_i2c* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load %struct.sm501_platdata_gpio_i2c*, %struct.sm501_platdata_gpio_i2c** %6, align 8
  %31 = getelementptr inbounds %struct.sm501_platdata_gpio_i2c, %struct.sm501_platdata_gpio_i2c* %30, i32 1
  store %struct.sm501_platdata_gpio_i2c* %31, %struct.sm501_platdata_gpio_i2c** %6, align 8
  br label %12

32:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @sm501_register_gpio_i2c_instance(%struct.sm501_devdata*, %struct.sm501_platdata_gpio_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
