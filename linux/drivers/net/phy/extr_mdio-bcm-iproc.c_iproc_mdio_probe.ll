; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-iproc.c_iproc_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-iproc.c_iproc_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iproc_mdio_priv = type { i32, %struct.mii_bus* }
%struct.mii_bus = type { i8*, i32, i32, %struct.TYPE_4__*, i32, %struct.iproc_mdio_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to ioremap register\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MDIO bus alloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"iProc MDIO bus\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@iproc_mdio_read = common dso_local global i32 0, align 4
@iproc_mdio_write = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"MDIO bus registration failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Broadcom iProc MDIO bus at 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iproc_mdio_priv*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 2
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.iproc_mdio_priv* @devm_kzalloc(%struct.TYPE_4__* %8, i32 16, i32 %9)
  store %struct.iproc_mdio_priv* %10, %struct.iproc_mdio_priv** %4, align 8
  %11 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %12 = icmp ne %struct.iproc_mdio_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %20 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %22 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 2
  %29 = call i32 @dev_err(%struct.TYPE_4__* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %31 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %108

34:                                               ; preds = %16
  %35 = call %struct.mii_bus* (...) @mdiobus_alloc()
  %36 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %37 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %36, i32 0, i32 1
  store %struct.mii_bus* %35, %struct.mii_bus** %37, align 8
  %38 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %39 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %38, i32 0, i32 1
  %40 = load %struct.mii_bus*, %struct.mii_bus** %39, align 8
  %41 = icmp ne %struct.mii_bus* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 2
  %45 = call i32 @dev_err(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %108

48:                                               ; preds = %34
  %49 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %50 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %49, i32 0, i32 1
  %51 = load %struct.mii_bus*, %struct.mii_bus** %50, align 8
  store %struct.mii_bus* %51, %struct.mii_bus** %5, align 8
  %52 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %53 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %54 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %53, i32 0, i32 5
  store %struct.iproc_mdio_priv* %52, %struct.iproc_mdio_priv** %54, align 8
  %55 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %56 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %58 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @snprintf(i32 %59, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %63, i32 %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 2
  %70 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %71 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %70, i32 0, i32 3
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %71, align 8
  %72 = load i32, i32* @iproc_mdio_read, align 4
  %73 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %74 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @iproc_mdio_write, align 4
  %76 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %77 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %79 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @iproc_mdio_config_clk(i32 %80)
  %82 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @of_mdiobus_register(%struct.mii_bus* %82, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %48
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 2
  %93 = call i32 @dev_err(%struct.TYPE_4__* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %104

94:                                               ; preds = %48
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %97 = call i32 @platform_set_drvdata(%struct.platform_device* %95, %struct.iproc_mdio_priv* %96)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 2
  %100 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %4, align 8
  %101 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_info(%struct.TYPE_4__* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  store i32 0, i32* %2, align 4
  br label %108

104:                                              ; preds = %90
  %105 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %106 = call i32 @mdiobus_free(%struct.mii_bus* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %94, %42, %26, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.iproc_mdio_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @iproc_mdio_config_clk(i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iproc_mdio_priv*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
