; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_mii_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_mii_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_6__, %struct.ixgbe_adapter* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_adapter = type { %struct.mii_bus*, %struct.TYPE_4__*, %struct.pci_dev* }
%struct.mii_bus = type { i8*, i32, %struct.device*, %struct.ixgbe_adapter*, i32, i32*, i32* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ixgbe_x550em_a_mii_bus_read = common dso_local global i32 0, align 4
@ixgbe_x550em_a_mii_bus_write = common dso_local global i32 0, align 4
@ixgbe_mii_bus_read = common dso_local global i32 0, align 4
@ixgbe_mii_bus_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-mdio-%s\00", align 1
@ixgbe_driver_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"ixgbe-mdio\00", align 1
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C22 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_mii_bus_init(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 2
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %4, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.mii_bus* @devm_mdiobus_alloc(%struct.device* %21)
  store %struct.mii_bus* %22, %struct.mii_bus** %7, align 8
  %23 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %24 = icmp ne %struct.mii_bus* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %88

28:                                               ; preds = %1
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %42 [
    i32 133, label %32
    i32 132, label %32
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
    i32 136, label %32
    i32 131, label %32
    i32 135, label %32
    i32 134, label %32
  ]

32:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = call i32 @ixgbe_x550em_a_has_mii(%struct.ixgbe_hw* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %83

37:                                               ; preds = %32
  %38 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %39 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %38, i32 0, i32 6
  store i32* @ixgbe_x550em_a_mii_bus_read, i32** %39, align 8
  %40 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 5
  store i32* @ixgbe_x550em_a_mii_bus_write, i32** %41, align 8
  br label %47

42:                                               ; preds = %28
  %43 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 6
  store i32* @ixgbe_mii_bus_read, i32** %44, align 8
  %45 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %46 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %45, i32 0, i32 5
  store i32* @ixgbe_mii_bus_write, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %49 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %52 = load i8*, i8** @ixgbe_driver_name, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = call i8* @pci_name(%struct.pci_dev* %53)
  %55 = call i32 @snprintf(i32 %50, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %54)
  %56 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %57 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %59 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %60 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %59, i32 0, i32 3
  store %struct.ixgbe_adapter* %58, %struct.ixgbe_adapter** %60, align 8
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %63 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %62, i32 0, i32 2
  store %struct.device* %61, %struct.device** %63, align 8
  %64 = call i32 @GENMASK(i32 31, i32 0)
  %65 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %66 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %68 = load i32, i32* @MDIO_SUPPORTS_C22, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %75 = call i32 @mdiobus_register(%struct.mii_bus* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %47
  %79 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %80, i32 0, i32 0
  store %struct.mii_bus* %79, %struct.mii_bus** %81, align 8
  store i32 0, i32* %2, align 4
  br label %88

82:                                               ; preds = %47
  br label %83

83:                                               ; preds = %82, %36
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %86 = call i32 @devm_mdiobus_free(%struct.device* %84, %struct.mii_bus* %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %78, %25
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(%struct.device*) #1

declare dso_local i32 @ixgbe_x550em_a_has_mii(%struct.ixgbe_hw*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32 @devm_mdiobus_free(%struct.device*, %struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
