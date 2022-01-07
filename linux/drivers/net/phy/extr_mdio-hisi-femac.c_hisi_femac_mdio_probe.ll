; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-hisi-femac.c_hisi_femac_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-hisi-femac.c_hisi_femac_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mii_bus = type { i8*, %struct.hisi_femac_mdio_data*, %struct.TYPE_2__*, i32, i32*, i32* }
%struct.hisi_femac_mdio_data = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hisi_femac_mii_bus\00", align 1
@hisi_femac_mdio_read = common dso_local global i32 0, align 4
@hisi_femac_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_femac_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.hisi_femac_mdio_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = call %struct.mii_bus* @mdiobus_alloc_size(i32 8)
  store %struct.mii_bus* %12, %struct.mii_bus** %5, align 8
  %13 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %14 = icmp ne %struct.mii_bus* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %98

18:                                               ; preds = %1
  %19 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %22 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %21, i32 0, i32 5
  store i32* @hisi_femac_mdio_read, i32** %22, align 8
  %23 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %24 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %23, i32 0, i32 4
  store i32* @hisi_femac_mdio_write, i32** %24, align 8
  %25 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i32 %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 2
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 1
  %39 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %38, align 8
  store %struct.hisi_femac_mdio_data* %39, %struct.hisi_femac_mdio_data** %6, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %40, i32 0)
  %42 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %43 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %45 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %18
  %50 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %51 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %7, align 4
  br label %94

54:                                               ; preds = %18
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = call i32 @devm_clk_get(%struct.TYPE_2__* %56, i32* null)
  %58 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %59 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %61 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %67 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %94

70:                                               ; preds = %54
  %71 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %72 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @clk_prepare_enable(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %94

78:                                               ; preds = %70
  %79 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = call i32 @of_mdiobus_register(%struct.mii_bus* %79, %struct.device_node* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %89

85:                                               ; preds = %78
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %86, %struct.mii_bus* %87)
  store i32 0, i32* %2, align 4
  br label %98

89:                                               ; preds = %84
  %90 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %6, align 8
  %91 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_disable_unprepare(i32 %92)
  br label %94

94:                                               ; preds = %89, %77, %65, %49
  %95 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %96 = call i32 @mdiobus_free(%struct.mii_bus* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %85, %15
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.mii_bus* @mdiobus_alloc_size(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
