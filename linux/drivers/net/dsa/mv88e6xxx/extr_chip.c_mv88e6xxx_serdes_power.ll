; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_serdes_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_serdes_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6xxx_serdes_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_serdes_power(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @mv88e6xxx_serdes_get_lane(%struct.mv88e6xxx_chip* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @mv88e6xxx_serdes_power_up(%struct.mv88e6xxx_chip* %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %19
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mv88e6xxx_serdes_irq_request(%struct.mv88e6xxx_chip* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %47

33:                                               ; preds = %16
  %34 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mv88e6xxx_serdes_irq_free(%struct.mv88e6xxx_chip* %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %33
  %43 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mv88e6xxx_serdes_power_down(%struct.mv88e6xxx_chip* %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %28
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %40, %26, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mv88e6xxx_serdes_get_lane(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_serdes_power_up(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_serdes_irq_request(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_serdes_irq_free(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_serdes_power_down(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
