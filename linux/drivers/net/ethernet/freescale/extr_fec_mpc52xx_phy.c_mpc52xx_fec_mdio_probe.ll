; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx_phy.c_mpc52xx_fec_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx_phy.c_mpc52xx_fec_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mii_bus = type { i8*, %struct.device*, %struct.mpc52xx_fec_mdio_priv*, i32, i32, i32 }
%struct.mpc52xx_fec_mdio_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"mpc52xx MII bus\00", align 1
@mpc52xx_fec_mdio_read = common dso_local global i32 0, align 4
@mpc52xx_fec_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_fec_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca %struct.mpc52xx_fec_mdio_priv*, align 8
  %8 = alloca %struct.resource, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %16, %struct.mii_bus** %6, align 8
  %17 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %18 = icmp eq %struct.mii_bus* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mpc52xx_fec_mdio_priv* @kzalloc(i32 8, i32 %23)
  store %struct.mpc52xx_fec_mdio_priv* %24, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %25 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %26 = icmp eq %struct.mpc52xx_fec_mdio_priv* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %100

30:                                               ; preds = %22
  %31 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %32 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @mpc52xx_fec_mdio_read, align 4
  %34 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @mpc52xx_fec_mdio_write, align 4
  %37 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i32 @of_address_to_resource(%struct.device_node* %39, i32 0, %struct.resource* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %100

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @resource_size(%struct.resource* %8)
  %48 = call %struct.TYPE_3__* @ioremap(i32 %46, i32 %47)
  %49 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %50 = getelementptr inbounds %struct.mpc52xx_fec_mdio_priv, %struct.mpc52xx_fec_mdio_priv* %49, i32 0, i32 0
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %50, align 8
  %51 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %52 = getelementptr inbounds %struct.mpc52xx_fec_mdio_priv, %struct.mpc52xx_fec_mdio_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp eq %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %100

58:                                               ; preds = %44
  %59 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %60 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snprintf(i32 %61, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %67 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %68 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %67, i32 0, i32 2
  store %struct.mpc52xx_fec_mdio_priv* %66, %struct.mpc52xx_fec_mdio_priv** %68, align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %71 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %70, i32 0, i32 1
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %74 = call i32 @dev_set_drvdata(%struct.device* %72, %struct.mii_bus* %73)
  %75 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %76 = getelementptr inbounds %struct.mpc52xx_fec_mdio_priv, %struct.mpc52xx_fec_mdio_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = load %struct.device_node*, %struct.device_node** %81, align 8
  %83 = call i32 @mpc5xxx_get_bus_frequency(%struct.device_node* %82)
  %84 = ashr i32 %83, 20
  %85 = sdiv i32 %84, 5
  %86 = shl i32 %85, 1
  %87 = call i32 @out_be32(i32* %78, i32 %86)
  %88 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = call i32 @of_mdiobus_register(%struct.mii_bus* %88, %struct.device_node* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %58
  br label %95

94:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %106

95:                                               ; preds = %93
  %96 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %97 = getelementptr inbounds %struct.mpc52xx_fec_mdio_priv, %struct.mpc52xx_fec_mdio_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = call i32 @iounmap(%struct.TYPE_3__* %98)
  br label %100

100:                                              ; preds = %95, %55, %43, %27
  %101 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %7, align 8
  %102 = call i32 @kfree(%struct.mpc52xx_fec_mdio_priv* %101)
  %103 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %104 = call i32 @mdiobus_free(%struct.mii_bus* %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %100, %94, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local %struct.mpc52xx_fec_mdio_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local %struct.TYPE_3__* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.mii_bus*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @mpc5xxx_get_bus_frequency(%struct.device_node*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @iounmap(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.mpc52xx_fec_mdio_priv*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
