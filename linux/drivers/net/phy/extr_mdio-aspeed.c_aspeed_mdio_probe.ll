; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-aspeed.c_aspeed_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-aspeed.c_aspeed_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aspeed_mdio = type { i32 }
%struct.mii_bus = type { i32, i32, %struct.TYPE_3__*, i32, i32, %struct.aspeed_mdio* }

@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@aspeed_mdio_read = common dso_local global i32 0, align 4
@aspeed_mdio_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot register MDIO bus!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aspeed_mdio*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = call %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.TYPE_3__* %8, i32 4)
  store %struct.mii_bus* %9, %struct.mii_bus** %5, align 8
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = icmp ne %struct.mii_bus* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 5
  %18 = load %struct.aspeed_mdio*, %struct.aspeed_mdio** %17, align 8
  store %struct.aspeed_mdio* %18, %struct.aspeed_mdio** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.aspeed_mdio*, %struct.aspeed_mdio** %4, align 8
  %22 = getelementptr inbounds %struct.aspeed_mdio, %struct.aspeed_mdio* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.aspeed_mdio*, %struct.aspeed_mdio** %4, align 8
  %24 = getelementptr inbounds %struct.aspeed_mdio, %struct.aspeed_mdio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.aspeed_mdio*, %struct.aspeed_mdio** %4, align 8
  %30 = getelementptr inbounds %struct.aspeed_mdio, %struct.aspeed_mdio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %75

33:                                               ; preds = %15
  %34 = load i32, i32* @DRV_NAME, align 4
  %35 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snprintf(i32 %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %51 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %50, i32 0, i32 2
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %51, align 8
  %52 = load i32, i32* @aspeed_mdio_read, align 4
  %53 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %54 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @aspeed_mdio_write, align 4
  %56 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %57 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @of_mdiobus_register(%struct.mii_bus* %58, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %33
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 1
  %69 = call i32 @dev_err(%struct.TYPE_3__* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %33
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %72, %struct.mii_bus* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %66, %28, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
