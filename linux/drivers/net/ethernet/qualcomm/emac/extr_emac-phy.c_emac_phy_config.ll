; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-phy.c_emac_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-phy.c_emac_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.emac_adapter = type { %struct.TYPE_10__*, %struct.mii_bus* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mii_bus = type { i8*, %struct.emac_adapter*, %struct.TYPE_11__*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"emac-mdio\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@emac_mdio_read = common dso_local global i32 0, align 4
@emac_mdio_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not register mdio bus\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"phy-channel\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"could not find external phy\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_phy_config(%struct.platform_device* %0, %struct.emac_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.emac_adapter* %1, %struct.emac_adapter** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call %struct.mii_bus* @devm_mdiobus_alloc(%struct.TYPE_11__* %16)
  store %struct.mii_bus* %17, %struct.mii_bus** %7, align 8
  %18 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %18, i32 0, i32 1
  store %struct.mii_bus* %17, %struct.mii_bus** %19, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %21 = icmp ne %struct.mii_bus* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %127

25:                                               ; preds = %2
  %26 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %29 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @snprintf(i32 %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @emac_mdio_read, align 4
  %37 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @emac_mdio_write, align 4
  %40 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %45 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %44, i32 0, i32 2
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %45, align 8
  %46 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %47 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %48 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %47, i32 0, i32 1
  store %struct.emac_adapter* %46, %struct.emac_adapter** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 1
  %51 = call i64 @has_acpi_companion(%struct.TYPE_11__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %25
  %54 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %55 = call i32 @mdiobus_register(%struct.mii_bus* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 1
  %61 = call i32 @dev_err(%struct.TYPE_11__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %127

63:                                               ; preds = %53
  %64 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 1
  %66 = call i32 @device_property_read_u32(%struct.TYPE_11__* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %71 = call %struct.TYPE_10__* @phy_find_first(%struct.mii_bus* %70)
  %72 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %73 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %72, i32 0, i32 0
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %73, align 8
  br label %80

74:                                               ; preds = %63
  %75 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call %struct.TYPE_10__* @mdiobus_get_phy(%struct.mii_bus* %75, i32 %76)
  %78 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %79 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %78, i32 0, i32 0
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %79, align 8
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = icmp ne %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %87 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i32 @get_device(i32* %90)
  br label %92

92:                                               ; preds = %85, %80
  br label %113

93:                                               ; preds = %25
  %94 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %95 = load %struct.device_node*, %struct.device_node** %6, align 8
  %96 = call i32 @of_mdiobus_register(%struct.mii_bus* %94, %struct.device_node* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 1
  %102 = call i32 @dev_err(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %127

104:                                              ; preds = %93
  %105 = load %struct.device_node*, %struct.device_node** %6, align 8
  %106 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %106, %struct.device_node** %10, align 8
  %107 = load %struct.device_node*, %struct.device_node** %10, align 8
  %108 = call %struct.TYPE_10__* @of_phy_find_device(%struct.device_node* %107)
  %109 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %110 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %109, i32 0, i32 0
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %110, align 8
  %111 = load %struct.device_node*, %struct.device_node** %10, align 8
  %112 = call i32 @of_node_put(%struct.device_node* %111)
  br label %113

113:                                              ; preds = %104, %92
  %114 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %115 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 1
  %121 = call i32 @dev_err(%struct.TYPE_11__* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %123 = call i32 @mdiobus_unregister(%struct.mii_bus* %122)
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %118, %99, %58, %22
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(%struct.TYPE_11__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @has_acpi_companion(%struct.TYPE_11__*) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @phy_find_first(%struct.mii_bus*) #1

declare dso_local %struct.TYPE_10__* @mdiobus_get_phy(%struct.mii_bus*, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
