; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_xgmac_mdio.c_xgmac_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_xgmac_mdio.c_xgmac_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mii_bus = type { i8*, %struct.mdio_fsl_priv*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.mdio_fsl_priv = type { i32, i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"could not obtain address\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Freescale XGMAC MDIO Bus\00", align 1
@xgmac_mdio_read = common dso_local global i32 0, align 4
@xgmac_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot register MDIO bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgmac_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.resource, align 8
  %7 = alloca %struct.mdio_fsl_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i32 @of_address_to_resource(%struct.device_node* %13, i32 0, %struct.resource* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_2__* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %93

22:                                               ; preds = %1
  %23 = call %struct.mii_bus* @mdiobus_alloc_size(i32 8)
  store %struct.mii_bus* %23, %struct.mii_bus** %5, align 8
  %24 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %25 = icmp ne %struct.mii_bus* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %93

29:                                               ; preds = %22
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @xgmac_mdio_read, align 4
  %33 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %34 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @xgmac_mdio_write, align 4
  %36 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %37 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 3
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  %42 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %43 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 1
  %51 = load %struct.mdio_fsl_priv*, %struct.mdio_fsl_priv** %50, align 8
  store %struct.mdio_fsl_priv* %51, %struct.mdio_fsl_priv** %7, align 8
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = call i32 @of_iomap(%struct.device_node* %52, i32 0)
  %54 = load %struct.mdio_fsl_priv*, %struct.mdio_fsl_priv** %7, align 8
  %55 = getelementptr inbounds %struct.mdio_fsl_priv, %struct.mdio_fsl_priv* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mdio_fsl_priv*, %struct.mdio_fsl_priv** %7, align 8
  %57 = getelementptr inbounds %struct.mdio_fsl_priv, %struct.mdio_fsl_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %29
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %89

63:                                               ; preds = %29
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.device_node*, %struct.device_node** %66, align 8
  %68 = call i32 @of_property_read_bool(%struct.device_node* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.mdio_fsl_priv*, %struct.mdio_fsl_priv** %7, align 8
  %70 = getelementptr inbounds %struct.mdio_fsl_priv, %struct.mdio_fsl_priv* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %72 = load %struct.device_node*, %struct.device_node** %4, align 8
  %73 = call i32 @of_mdiobus_register(%struct.mii_bus* %71, %struct.device_node* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_err(%struct.TYPE_2__* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %84

80:                                               ; preds = %63
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %83 = call i32 @platform_set_drvdata(%struct.platform_device* %81, %struct.mii_bus* %82)
  store i32 0, i32* %2, align 4
  br label %93

84:                                               ; preds = %76
  %85 = load %struct.mdio_fsl_priv*, %struct.mdio_fsl_priv** %7, align 8
  %86 = getelementptr inbounds %struct.mdio_fsl_priv, %struct.mdio_fsl_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @iounmap(i32 %87)
  br label %89

89:                                               ; preds = %84, %60
  %90 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %91 = call i32 @mdiobus_free(%struct.mii_bus* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %80, %26, %17
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc_size(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
