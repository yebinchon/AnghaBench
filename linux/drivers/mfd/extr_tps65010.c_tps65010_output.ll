; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tps65010 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @tps65010_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65010_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps65010*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.tps65010* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.tps65010* %13, %struct.tps65010** %8, align 8
  %14 = load %struct.tps65010*, %struct.tps65010** %8, align 8
  %15 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @tps65010_set_gpio_out_value(i32 %26, i32 %27)
  br label %48

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %30, 6
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = sub i32 %33, 3
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ON, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @OFF, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @tps65010_set_led(i32 %34, i32 %42)
  br label %47

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @tps65010_set_vib(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %24
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.tps65010* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @tps65010_set_gpio_out_value(i32, i32) #1

declare dso_local i32 @tps65010_set_led(i32, i32) #1

declare dso_local i32 @tps65010_set_vib(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
