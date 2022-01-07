; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mscc-miim.c_mscc_miim_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mscc-miim.c_mscc_miim_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }
%struct.mii_bus = type { i8*, %struct.mscc_miim_dev*, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.mscc_miim_dev = type { i8*, i8* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mscc_miim\00", align 1
@mscc_miim_read = common dso_local global i32 0, align 4
@mscc_miim_write = common dso_local global i32 0, align 4
@mscc_miim_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-mii\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to map MIIM registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to map internal phy registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Cannot register MDIO bus (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mscc_miim_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mscc_miim_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.mscc_miim_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %117

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.TYPE_5__* %18, i32 16)
  store %struct.mii_bus* %19, %struct.mii_bus** %5, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %21 = icmp ne %struct.mii_bus* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %117

25:                                               ; preds = %16
  %26 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @mscc_miim_read, align 4
  %29 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %30 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @mscc_miim_write, align 4
  %32 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @mscc_miim_reset, align 4
  %35 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i8* @dev_name(%struct.TYPE_5__* %42)
  %44 = call i32 @snprintf(i32 %39, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %48 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %47, i32 0, i32 2
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 1
  %51 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %50, align 8
  store %struct.mscc_miim_dev* %51, %struct.mscc_miim_dev** %6, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %4, align 8
  %55 = call i8* @devm_ioremap_resource(%struct.TYPE_5__* %53, %struct.resource* %54)
  %56 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %6, align 8
  %57 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %6, align 8
  %59 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %25
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %6, align 8
  %68 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %2, align 4
  br label %117

71:                                               ; preds = %25
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 1)
  store %struct.resource* %74, %struct.resource** %4, align 8
  %75 = load %struct.resource*, %struct.resource** %4, align 8
  %76 = icmp ne %struct.resource* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.resource*, %struct.resource** %4, align 8
  %81 = call i8* @devm_ioremap_resource(%struct.TYPE_5__* %79, %struct.resource* %80)
  %82 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %6, align 8
  %83 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %6, align 8
  %85 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %77
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %6, align 8
  %94 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %117

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %71
  %99 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @of_mdiobus_register(%struct.mii_bus* %99, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %117

113:                                              ; preds = %98
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %116 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.mii_bus* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %107, %89, %63, %22, %13
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_5__*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
