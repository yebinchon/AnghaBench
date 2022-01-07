; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mv88e6xxx_mdio_bus* }
%struct.mv88e6xxx_mdio_bus = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @mv88e6xxx_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mv88e6xxx_mdio_bus*, align 8
  %11 = alloca %struct.mv88e6xxx_chip*, align 8
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %14, align 8
  store %struct.mv88e6xxx_mdio_bus* %15, %struct.mv88e6xxx_mdio_bus** %10, align 8
  %16 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %10, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %16, i32 0, i32 0
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %17, align 8
  store %struct.mv88e6xxx_chip* %18, %struct.mv88e6xxx_chip** %11, align 8
  %19 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  %20 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %49

30:                                               ; preds = %4
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  %32 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %31)
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  %34 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32)** %38, align 8
  %40 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  %41 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 %39(%struct.mv88e6xxx_chip* %40, %struct.mii_bus* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  %47 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %30, %27
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
