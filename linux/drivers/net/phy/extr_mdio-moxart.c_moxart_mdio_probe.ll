; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-moxart.c_moxart_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-moxart.c_moxart_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mii_bus = type { i8*, %struct.moxart_mdio_data*, i32*, %struct.TYPE_2__*, i32, i32*, i32*, i32* }
%struct.moxart_mdio_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MOXA ART Ethernet MII\00", align 1
@moxart_mdio_read = common dso_local global i32 0, align 4
@moxart_mdio_write = common dso_local global i32 0, align 4
@moxart_mdio_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s-%d-mii\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@PHY_IGNORE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @moxart_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.moxart_mdio_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = call %struct.mii_bus* @mdiobus_alloc_size(i32 4)
  store %struct.mii_bus* %13, %struct.mii_bus** %5, align 8
  %14 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %15 = icmp ne %struct.mii_bus* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %91

19:                                               ; preds = %1
  %20 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %23 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %22, i32 0, i32 7
  store i32* @moxart_mdio_read, i32** %23, align 8
  %24 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %25 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %24, i32 0, i32 6
  store i32* @moxart_mdio_write, i32** %25, align 8
  %26 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 5
  store i32* @moxart_mdio_reset, i32** %27, align 8
  %28 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %29 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snprintf(i32 %30, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 2
  %41 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 3
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %55, %19
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @PHY_MAX_ADDR, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* @PHY_IGNORE_INTERRUPT, align 4
  %49 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %60 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %59, i32 0, i32 1
  %61 = load %struct.moxart_mdio_data*, %struct.moxart_mdio_data** %60, align 8
  store %struct.moxart_mdio_data* %61, %struct.moxart_mdio_data** %6, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %62, i32 0)
  %64 = load %struct.moxart_mdio_data*, %struct.moxart_mdio_data** %6, align 8
  %65 = getelementptr inbounds %struct.moxart_mdio_data, %struct.moxart_mdio_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.moxart_mdio_data*, %struct.moxart_mdio_data** %6, align 8
  %67 = getelementptr inbounds %struct.moxart_mdio_data, %struct.moxart_mdio_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load %struct.moxart_mdio_data*, %struct.moxart_mdio_data** %6, align 8
  %73 = getelementptr inbounds %struct.moxart_mdio_data, %struct.moxart_mdio_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %7, align 4
  br label %87

76:                                               ; preds = %58
  %77 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %78 = load %struct.device_node*, %struct.device_node** %4, align 8
  %79 = call i32 @of_mdiobus_register(%struct.mii_bus* %77, %struct.device_node* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %87

83:                                               ; preds = %76
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %86 = call i32 @platform_set_drvdata(%struct.platform_device* %84, %struct.mii_bus* %85)
  store i32 0, i32* %2, align 4
  br label %91

87:                                               ; preds = %82, %71
  %88 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %89 = call i32 @mdiobus_free(%struct.mii_bus* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %83, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mii_bus* @mdiobus_alloc_size(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
