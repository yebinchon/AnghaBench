; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_chip_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_chip_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.htcpld_chip = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"htcpld-out\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"htcpld-in\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @htcpld_chip_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpld_chip_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.htcpld_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.htcpld_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.htcpld_chip* %9, %struct.htcpld_chip** %6, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strncmp(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.htcpld_chip*, %struct.htcpld_chip** %6, align 8
  %17 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strncmp(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.htcpld_chip*, %struct.htcpld_chip** %6, align 8
  %27 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = lshr i32 %34, %35
  %37 = and i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.htcpld_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
