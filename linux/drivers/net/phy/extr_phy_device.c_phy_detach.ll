; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.phy_device = type { %struct.TYPE_10__, i32*, %struct.net_device*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_14__, %struct.mii_bus* }
%struct.TYPE_14__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.mii_bus = type { %struct.module* }
%struct.net_device = type { %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.module* }

@.str = private unnamed_addr constant [7 x i8] c"phydev\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"attached_dev\00", align 1
@dev_attr_phy_standalone = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_detach(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  store %struct.module* null, %struct.module** %4, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = call i32 @sysfs_remove_link(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %13
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = call i32 @sysfs_remove_link(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 2
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = call i32 @sysfs_remove_file(i32* %36, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dev_attr_phy_standalone, i32 0, i32 0))
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %40 = call i32 @phy_suspend(%struct.phy_device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 2
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 2
  store %struct.net_device* null, %struct.net_device** %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %54 = call i32 @phy_led_triggers_unregister(%struct.phy_device* %53)
  %55 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.module*, %struct.module** %60, align 8
  %62 = call i32 @module_put(%struct.module* %61)
  %63 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %64 = call i64 @phy_driver_is_genphy(%struct.phy_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %50
  %67 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %68 = call i64 @phy_driver_is_genphy_10g(%struct.phy_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66, %50
  %71 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = call i32 @device_release_driver(%struct.TYPE_14__* %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.mii_bus*, %struct.mii_bus** %78, align 8
  store %struct.mii_bus* %79, %struct.mii_bus** %5, align 8
  %80 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %81 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = call i32 @put_device(%struct.TYPE_14__* %82)
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = icmp ne %struct.net_device* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.module*, %struct.module** %93, align 8
  store %struct.module* %94, %struct.module** %4, align 8
  br label %95

95:                                               ; preds = %86, %75
  %96 = load %struct.module*, %struct.module** %4, align 8
  %97 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %98 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %97, i32 0, i32 0
  %99 = load %struct.module*, %struct.module** %98, align 8
  %100 = icmp ne %struct.module* %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %103 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %102, i32 0, i32 0
  %104 = load %struct.module*, %struct.module** %103, align 8
  %105 = call i32 @module_put(%struct.module* %104)
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %108 = call i32 @phy_device_reset(%struct.phy_device* %107, i32 1)
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @phy_suspend(%struct.phy_device*) #1

declare dso_local i32 @phy_led_triggers_unregister(%struct.phy_device*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i64 @phy_driver_is_genphy(%struct.phy_device*) #1

declare dso_local i64 @phy_driver_is_genphy_10g(%struct.phy_device*) #1

declare dso_local i32 @device_release_driver(%struct.TYPE_14__*) #1

declare dso_local i32 @put_device(%struct.TYPE_14__*) #1

declare dso_local i32 @phy_device_reset(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
