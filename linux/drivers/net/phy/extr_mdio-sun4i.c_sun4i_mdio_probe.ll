; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-sun4i.c_sun4i_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-sun4i.c_sun4i_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mii_bus = type { i8*, %struct.sun4i_mdio_data*, %struct.TYPE_4__*, i32, i32*, i32* }
%struct.sun4i_mdio_data = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sun4i_mii_bus\00", align 1
@sun4i_mdio_read = common dso_local global i32 0, align 4
@sun4i_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-mii\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"no regulator found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.sun4i_mdio_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = call %struct.mii_bus* @mdiobus_alloc_size(i32 16)
  store %struct.mii_bus* %12, %struct.mii_bus** %5, align 8
  %13 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %14 = icmp ne %struct.mii_bus* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %117

18:                                               ; preds = %1
  %19 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %22 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %21, i32 0, i32 5
  store i32* @sun4i_mdio_read, i32** %22, align 8
  %23 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %24 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %23, i32 0, i32 4
  store i32* @sun4i_mdio_write, i32** %24, align 8
  %25 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i8* @dev_name(%struct.TYPE_4__* %30)
  %32 = call i32 @snprintf(i32 %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 2
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 1
  %39 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %38, align 8
  store %struct.sun4i_mdio_data* %39, %struct.sun4i_mdio_data** %6, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %40, i32 0)
  %42 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %43 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %45 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %18
  %50 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %51 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @PTR_ERR(i32* %52)
  store i32 %53, i32* %7, align 4
  br label %113

54:                                               ; preds = %18
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32* @devm_regulator_get(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %59 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %61 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @IS_ERR(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %54
  %66 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %67 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @PTR_ERR(i32* %68)
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EPROBE_DEFER, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %113

76:                                               ; preds = %65
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_info(%struct.TYPE_4__* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %81 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %91

82:                                               ; preds = %54
  %83 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %84 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @regulator_enable(i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %113

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %76
  %92 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %93 = load %struct.device_node*, %struct.device_node** %4, align 8
  %94 = call i32 @of_mdiobus_register(%struct.mii_bus* %92, %struct.device_node* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %102

98:                                               ; preds = %91
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.mii_bus* %100)
  store i32 0, i32* %2, align 4
  br label %117

102:                                              ; preds = %97
  %103 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %104 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %6, align 8
  %109 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @regulator_disable(i32* %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %89, %73, %49
  %114 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %115 = call i32 @mdiobus_free(%struct.mii_bus* %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %113, %98, %15
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.mii_bus* @mdiobus_alloc_size(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_regulator_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

declare dso_local i32 @regulator_disable(i32*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
