; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mii_bus = type { %struct.mv88e6xxx_mdio_bus* }
%struct.mv88e6xxx_mdio_bus = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g2_smi_phy_write(%struct.mv88e6xxx_chip* %0, %struct.mii_bus* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca %struct.mii_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mv88e6xxx_mdio_bus*, align 8
  %13 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store %struct.mii_bus* %1, %struct.mii_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %15, align 8
  store %struct.mv88e6xxx_mdio_bus* %16, %struct.mv88e6xxx_mdio_bus** %12, align 8
  %17 = load %struct.mv88e6xxx_mdio_bus*, %struct.mv88e6xxx_mdio_bus** %12, align 8
  %18 = getelementptr inbounds %struct.mv88e6xxx_mdio_bus, %struct.mv88e6xxx_mdio_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MII_ADDR_C45, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @mv88e6xxx_g2_smi_phy_write_c45(%struct.mv88e6xxx_chip* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %5
  %32 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @mv88e6xxx_g2_smi_phy_write_data_c22(%struct.mv88e6xxx_chip* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @mv88e6xxx_g2_smi_phy_write_c45(%struct.mv88e6xxx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g2_smi_phy_write_data_c22(%struct.mv88e6xxx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
