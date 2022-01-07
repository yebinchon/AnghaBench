; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mv88e6xxx_mdio_bus* }
%struct.mv88e6xxx_mdio_bus = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@MV88E6XXX_FAMILY_6165 = common dso_local global i64 0, align 8
@MV88E6XXX_PORT_SWITCH_ID_PROD_6390 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @mv88e6xxx_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mv88e6xxx_mdio_bus*, align 8
  %9 = alloca %struct.mv88e6xxx_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %13, align 8
  store %struct.mv88e6xxx_mdio_bus* %14, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %15 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %8, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %15, i32 0, i32 0
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %16, align 8
  store %struct.mv88e6xxx_chip* %17, %struct.mv88e6xxx_chip** %9, align 8
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %19 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32*)*, i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %77

29:                                               ; preds = %3
  %30 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %31 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %30)
  %32 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %33 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32*)*, i32 (%struct.mv88e6xxx_chip*, %struct.mii_bus*, i32, i32, i32*)** %37, align 8
  %39 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %40 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 %38(%struct.mv88e6xxx_chip* %39, %struct.mii_bus* %40, i32 %41, i32 %42, i32* %10)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %45 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MII_PHYSID2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %29
  %50 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %51 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MV88E6XXX_FAMILY_6165, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 1008
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @MV88E6XXX_PORT_SWITCH_ID_PROD_6390, align 4
  %63 = ashr i32 %62, 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %26
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
