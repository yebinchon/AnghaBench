; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6390_serdes_power_10g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6390_serdes_power_10g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MV88E6390_PCS_CONTROL_1 = common dso_local global i32 0, align 4
@MV88E6390_PCS_CONTROL_1_RESET = common dso_local global i32 0, align 4
@MV88E6390_PCS_CONTROL_1_LOOPBACK = common dso_local global i32 0, align 4
@MV88E6390_PCS_CONTROL_1_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6390_serdes_power_10g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6390_serdes_power_10g(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %14 = load i32, i32* @MV88E6390_PCS_CONTROL_1, align 4
  %15 = call i32 @mv88e6390_serdes_read(%struct.mv88e6xxx_chip* %11, i32 %12, i32 %13, i32 %14, i32* %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MV88E6390_PCS_CONTROL_1_RESET, align 4
  %26 = load i32, i32* @MV88E6390_PCS_CONTROL_1_LOOPBACK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MV88E6390_PCS_CONTROL_1_PDOWN, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %24, %30
  store i32 %31, i32* %9, align 4
  br label %36

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MV88E6390_PCS_CONTROL_1_PDOWN, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %44 = load i32, i32* @MV88E6390_PCS_CONTROL_1, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mv88e6390_serdes_write(%struct.mv88e6xxx_chip* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %40, %36
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mv88e6390_serdes_read(%struct.mv88e6xxx_chip*, i32, i32, i32, i32*) #1

declare dso_local i32 @mv88e6390_serdes_write(%struct.mv88e6xxx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
