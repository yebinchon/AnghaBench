; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pci_mdio.c_enetc_pci_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pci_mdio.c_enetc_pci_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.enetc_mdio_priv = type { %struct.enetc_hw* }
%struct.enetc_hw = type { i32 }
%struct.mii_bus = type { i32, %struct.enetc_mdio_priv*, %struct.device*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENETC_MDIO_BUS_NAME = common dso_local global i32 0, align 4
@enetc_mdio_read = common dso_local global i32 0, align 4
@enetc_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"device enable failed\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"pci_request_region failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"iomap failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @enetc_pci_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_pci_mdio_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.enetc_mdio_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.enetc_hw*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.enetc_hw* @devm_kzalloc(%struct.device* %13, i32 4, i32 %14)
  store %struct.enetc_hw* %15, %struct.enetc_hw** %8, align 8
  %16 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %17 = icmp ne %struct.enetc_hw* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.device* %22, i32 8)
  store %struct.mii_bus* %23, %struct.mii_bus** %9, align 8
  %24 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %25 = icmp ne %struct.mii_bus* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %115

29:                                               ; preds = %21
  %30 = load i32, i32* @ENETC_MDIO_BUS_NAME, align 4
  %31 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %32 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @enetc_mdio_read, align 4
  %34 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @enetc_mdio_write, align 4
  %37 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 2
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %43 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %42, i32 0, i32 1
  %44 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %43, align 8
  store %struct.enetc_mdio_priv* %44, %struct.enetc_mdio_priv** %6, align 8
  %45 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %46 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %6, align 8
  %47 = getelementptr inbounds %struct.enetc_mdio_priv, %struct.enetc_mdio_priv* %46, i32 0, i32 0
  store %struct.enetc_hw* %45, %struct.enetc_hw** %47, align 8
  %48 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %49 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = call i8* @dev_name(%struct.device* %52)
  %54 = call i32 @snprintf(i32 %50, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pcie_flr(%struct.pci_dev* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pci_enable_device_mem(%struct.pci_dev* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %29
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %115

65:                                               ; preds = %29
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = load i32, i32* @KBUILD_MODNAME, align 4
  %68 = call i32 @pci_request_region(%struct.pci_dev* %66, i32 0, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %111

74:                                               ; preds = %65
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @pci_iomap(%struct.pci_dev* %75, i32 0, i32 0)
  %77 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %78 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %80 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @ENXIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %108

88:                                               ; preds = %74
  %89 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @of_mdiobus_register(%struct.mii_bus* %89, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %101

97:                                               ; preds = %88
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %100 = call i32 @pci_set_drvdata(%struct.pci_dev* %98, %struct.mii_bus* %99)
  store i32 0, i32* %3, align 4
  br label %115

101:                                              ; preds = %96
  %102 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %6, align 8
  %103 = getelementptr inbounds %struct.enetc_mdio_priv, %struct.enetc_mdio_priv* %102, i32 0, i32 0
  %104 = load %struct.enetc_hw*, %struct.enetc_hw** %103, align 8
  %105 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @iounmap(i32 %106)
  br label %108

108:                                              ; preds = %101, %83
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i32 @pci_release_mem_regions(%struct.pci_dev* %109)
  br label %111

111:                                              ; preds = %108, %71
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = call i32 @pci_disable_device(%struct.pci_dev* %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %97, %61, %26, %18
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.enetc_hw* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.device*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @pcie_flr(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mii_bus*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
