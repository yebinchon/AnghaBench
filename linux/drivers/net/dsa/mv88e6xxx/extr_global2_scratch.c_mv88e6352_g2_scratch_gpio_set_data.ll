; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_scratch.c_mv88e6352_g2_scratch_gpio_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_scratch.c_mv88e6352_g2_scratch_gpio_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32* }

@MV88E6352_G2_SCRATCH_GPIO_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6352_g2_scratch_gpio_set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6352_g2_scratch_gpio_set_data(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 7
  %12 = shl i32 1, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %13, 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @MV88E6352_G2_SCRATCH_GPIO_DATA0, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %23 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %21
  store i32 %29, i32* %27, align 4
  br label %41

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %34 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %32
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %30, %20
  %42 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %45 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mv88e6xxx_g2_scratch_write(%struct.mv88e6xxx_chip* %42, i32 %43, i32 %50)
  ret i32 %51
}

declare dso_local i32 @mv88e6xxx_g2_scratch_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
