; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_dt_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_dt_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8*, i32, i32*, i32*, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no mdio definition found.\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"emac_mdio\00", align 1
@emac_mii_bus_read = common dso_local global i32 0, align 4
@emac_mii_bus_write = common dso_local global i32 0, align 4
@emac_mii_bus_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"cannot register MDIO bus %s (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*)* @emac_dt_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dt_mdio_probe(%struct.emac_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_instance*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.emac_instance* %0, %struct.emac_instance** %3, align 8
  %6 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %7 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.device_node* @of_get_child_by_name(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %17 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %115

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call i32 @of_device_is_available(%struct.device_node* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %111

30:                                               ; preds = %23
  %31 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %32 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = call %struct.TYPE_11__* @devm_mdiobus_alloc(%struct.TYPE_12__* %34)
  %36 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %37 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %36, i32 0, i32 0
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %37, align 8
  %38 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %39 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %111

45:                                               ; preds = %30
  %46 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %47 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %50 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 6
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %54 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %60 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 5
  store i32 %58, i32* %62, align 8
  %63 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %64 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %66, align 8
  %67 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %68 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  store i32* @emac_mii_bus_read, i32** %70, align 8
  %71 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %72 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  store i32* @emac_mii_bus_write, i32** %74, align 8
  %75 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %76 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i32* @emac_mii_bus_reset, i32** %78, align 8
  %79 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %80 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %85 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %86 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @snprintf(i32 %83, i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %92 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load %struct.device_node*, %struct.device_node** %4, align 8
  %95 = call i32 @of_mdiobus_register(%struct.TYPE_11__* %93, %struct.device_node* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %45
  %99 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %100 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %104 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %98, %45
  br label %111

111:                                              ; preds = %110, %42, %27
  %112 = load %struct.device_node*, %struct.device_node** %4, align 8
  %113 = call i32 @of_node_put(%struct.device_node* %112)
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %15
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.TYPE_11__* @devm_mdiobus_alloc(%struct.TYPE_12__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_11__*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
