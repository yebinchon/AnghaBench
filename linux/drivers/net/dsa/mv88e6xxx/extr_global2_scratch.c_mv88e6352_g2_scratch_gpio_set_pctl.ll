; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_scratch.c_mv88e6352_g2_scratch_gpio_set_pctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_scratch.c_mv88e6352_g2_scratch_gpio_set_pctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6352_G2_SCRATCH_GPIO_PCTL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6352_g2_scratch_gpio_set_pctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6352_g2_scratch_gpio_set_pctl(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MV88E6352_G2_SCRATCH_GPIO_PCTL0, align 4
  %14 = load i32, i32* %6, align 4
  %15 = udiv i32 %14, 2
  %16 = add i32 %13, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 4, i32 0
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 7, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @mv88e6xxx_g2_scratch_read(%struct.mv88e6xxx_chip* %24, i32 %25, i32* %12)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %35, %40
  store i32 %41, i32* %12, align 4
  %42 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @mv88e6xxx_g2_scratch_write(%struct.mv88e6xxx_chip* %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %31, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mv88e6xxx_g2_scratch_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g2_scratch_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
