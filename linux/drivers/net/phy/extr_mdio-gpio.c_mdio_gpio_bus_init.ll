; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-gpio.c_mdio_gpio_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-gpio.c_mdio_gpio_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i8*, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.mdio_gpio_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mdio_gpio_platform_data = type { i32, i32 }

@mdio_gpio_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GPIO Bitbanged MDIO\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"gpio-%x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mii_bus* (%struct.device*, %struct.mdio_gpio_info*, i32)* @mdio_gpio_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mii_bus* @mdio_gpio_bus_init(%struct.device* %0, %struct.mdio_gpio_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mdio_gpio_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdio_gpio_platform_data*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.mdio_gpio_info* %1, %struct.mdio_gpio_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.mdio_gpio_platform_data* @dev_get_platdata(%struct.device* %10)
  store %struct.mdio_gpio_platform_data* %11, %struct.mdio_gpio_platform_data** %8, align 8
  %12 = load %struct.mdio_gpio_info*, %struct.mdio_gpio_info** %6, align 8
  %13 = getelementptr inbounds %struct.mdio_gpio_info, %struct.mdio_gpio_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* @mdio_gpio_ops, i32** %14, align 8
  %15 = load %struct.mdio_gpio_info*, %struct.mdio_gpio_info** %6, align 8
  %16 = getelementptr inbounds %struct.mdio_gpio_info, %struct.mdio_gpio_info* %15, i32 0, i32 0
  %17 = call %struct.mii_bus* @alloc_mdio_bitbang(%struct.TYPE_2__* %16)
  store %struct.mii_bus* %17, %struct.mii_bus** %9, align 8
  %18 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %19 = icmp ne %struct.mii_bus* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.mii_bus* null, %struct.mii_bus** %4, align 8
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %23 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 4
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @snprintf(i32 %32, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %41 = call i32 @strncpy(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.mdio_gpio_platform_data*, %struct.mdio_gpio_platform_data** %8, align 8
  %44 = icmp ne %struct.mdio_gpio_platform_data* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.mdio_gpio_platform_data*, %struct.mdio_gpio_platform_data** %8, align 8
  %47 = getelementptr inbounds %struct.mdio_gpio_platform_data, %struct.mdio_gpio_platform_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mdio_gpio_platform_data*, %struct.mdio_gpio_platform_data** %8, align 8
  %52 = getelementptr inbounds %struct.mdio_gpio_platform_data, %struct.mdio_gpio_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %55 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %45, %42
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %59 = call i32 @dev_set_drvdata(%struct.device* %57, %struct.mii_bus* %58)
  %60 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  store %struct.mii_bus* %60, %struct.mii_bus** %4, align 8
  br label %61

61:                                               ; preds = %56, %20
  %62 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  ret %struct.mii_bus* %62
}

declare dso_local %struct.mdio_gpio_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.mii_bus* @alloc_mdio_bitbang(%struct.TYPE_2__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
