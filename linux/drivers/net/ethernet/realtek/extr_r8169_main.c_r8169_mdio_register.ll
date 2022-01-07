; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_mdio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_mdio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.mii_bus = type { i8*, i32, i32, i32, i32*, i32*, %struct.rtl8169_private* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"r8169\00", align 1
@PHY_IGNORE_INTERRUPT = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"r8169-%x\00", align 1
@r8169_mdio_read_reg = common dso_local global i32 0, align 4
@r8169_mdio_write_reg = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*)* @r8169_mdio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8169_mdio_register(%struct.rtl8169_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call %struct.mii_bus* @devm_mdiobus_alloc(i32* %11)
  store %struct.mii_bus* %12, %struct.mii_bus** %5, align 8
  %13 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %14 = icmp ne %struct.mii_bus* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %22 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %23 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %22, i32 0, i32 6
  store %struct.rtl8169_private* %21, %struct.rtl8169_private** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 5
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* @PHY_IGNORE_INTERRUPT, align 4
  %29 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %30 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %34 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_dev_id(%struct.pci_dev* %37)
  %39 = call i32 @snprintf(i32 %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @r8169_mdio_read_reg, align 4
  %41 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @r8169_mdio_write_reg, align 4
  %44 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %45 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %47 = call i32 @mdiobus_register(%struct.mii_bus* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %18
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %18
  %53 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %54 = call i32 @mdiobus_get_phy(%struct.mii_bus* %53, i32 0)
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %56 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %58 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %63 = call i32 @mdiobus_unregister(%struct.mii_bus* %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %52
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %68 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @phy_suspend(i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %61, %50, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @pci_dev_id(%struct.pci_dev*) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32 @mdiobus_get_phy(%struct.mii_bus*, i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @phy_suspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
