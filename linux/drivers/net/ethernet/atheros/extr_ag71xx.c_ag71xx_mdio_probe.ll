; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i8*, i32, %struct.device*, %struct.ag71xx*, i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i8* }
%struct.ag71xx = type { i32, i32, %struct.mii_bus*, i32, %struct.net_device*, %struct.TYPE_2__* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.device }

@ag71xx_mdio_probe.mii_bus = internal global %struct.mii_bus* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get mdio clk.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to enable mdio clk.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to get reset mdio.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ag71xx_mdio\00", align 1
@ag71xx_mdio_mii_read = common dso_local global i32 0, align 4
@ag71xx_mdio_mii_write = common dso_local global i32 0, align 4
@ag71xx_mdio_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_probe(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %10 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %14 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %13, i32 0, i32 4
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %6, align 8
  %19 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %20 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %19, i32 0, i32 2
  store %struct.mii_bus* null, %struct.mii_bus** %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @devm_clk_get(%struct.device* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %24 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %26 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %32 = load i32, i32* @probe, align 4
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @netif_err(%struct.ag71xx* %31, i32 %32, %struct.net_device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %36 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %145

39:                                               ; preds = %1
  %40 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %41 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_prepare_enable(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %48 = load i32, i32* @probe, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netif_err(%struct.ag71xx* %47, i32 %48, %struct.net_device* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %145

52:                                               ; preds = %39
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call %struct.mii_bus* @devm_mdiobus_alloc(%struct.device* %53)
  store %struct.mii_bus* %54, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %55 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %56 = icmp ne %struct.mii_bus* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %139

60:                                               ; preds = %52
  %61 = load %struct.device_node*, %struct.device_node** %6, align 8
  %62 = call i32 @of_reset_control_get_exclusive(%struct.device_node* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %64 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %66 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %72 = load i32, i32* @probe, align 4
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @netif_err(%struct.ag71xx* %71, i32 %72, %struct.net_device* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %76 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %145

79:                                               ; preds = %60
  %80 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %81 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %81, align 8
  %82 = load i32, i32* @ag71xx_mdio_mii_read, align 4
  %83 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %84 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @ag71xx_mdio_mii_write, align 4
  %86 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %87 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @ag71xx_mdio_reset, align 4
  %89 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %90 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %92 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %93 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %92, i32 0, i32 3
  store %struct.ag71xx* %91, %struct.ag71xx** %93, align 8
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %96 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %95, i32 0, i32 2
  store %struct.device* %94, %struct.device** %96, align 8
  %97 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %98 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %101 = load %struct.device_node*, %struct.device_node** %6, align 8
  %102 = getelementptr inbounds %struct.device_node, %struct.device_node* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %105 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @snprintf(i32 %99, i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %103, i32 %106)
  %108 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %109 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %79
  %114 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %115 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @reset_control_assert(i32 %116)
  %118 = call i32 @msleep(i32 100)
  %119 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %120 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @reset_control_deassert(i32 %121)
  %123 = call i32 @msleep(i32 200)
  br label %124

124:                                              ; preds = %113, %79
  %125 = load %struct.device_node*, %struct.device_node** %6, align 8
  %126 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %126, %struct.device_node** %7, align 8
  %127 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %128 = load %struct.device_node*, %struct.device_node** %7, align 8
  %129 = call i32 @of_mdiobus_register(%struct.mii_bus* %127, %struct.device_node* %128)
  store i32 %129, i32* %8, align 4
  %130 = load %struct.device_node*, %struct.device_node** %7, align 8
  %131 = call i32 @of_node_put(%struct.device_node* %130)
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %139

135:                                              ; preds = %124
  %136 = load %struct.mii_bus*, %struct.mii_bus** @ag71xx_mdio_probe.mii_bus, align 8
  %137 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %138 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %137, i32 0, i32 2
  store %struct.mii_bus* %136, %struct.mii_bus** %138, align 8
  store i32 0, i32* %2, align 4
  br label %145

139:                                              ; preds = %134, %57
  %140 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %141 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @clk_disable_unprepare(i32 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %135, %70, %46, %30
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @netif_err(%struct.ag71xx*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(%struct.device*) #1

declare dso_local i32 @of_reset_control_get_exclusive(%struct.device_node*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
