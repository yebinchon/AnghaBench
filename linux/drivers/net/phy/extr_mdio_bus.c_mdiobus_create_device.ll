; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }
%struct.mdio_board_info = type { i64, i32, i32 }
%struct.mdio_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@mdio_device_bus_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, %struct.mdio_board_info*)* @mdiobus_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdiobus_create_device(%struct.mii_bus* %0, %struct.mdio_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca %struct.mdio_board_info*, align 8
  %6 = alloca %struct.mdio_device*, align 8
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store %struct.mdio_board_info* %1, %struct.mdio_board_info** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %9 = load %struct.mdio_board_info*, %struct.mdio_board_info** %5, align 8
  %10 = getelementptr inbounds %struct.mdio_board_info, %struct.mdio_board_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mdio_device* @mdio_device_create(%struct.mii_bus* %8, i32 %11)
  store %struct.mdio_device* %12, %struct.mdio_device** %6, align 8
  %13 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %14 = call i64 @IS_ERR(%struct.mdio_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %21 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mdio_board_info*, %struct.mdio_board_info** %5, align 8
  %24 = getelementptr inbounds %struct.mdio_board_info, %struct.mdio_board_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strncpy(i32 %22, i32 %25, i32 4)
  %27 = load i32, i32* @mdio_device_bus_match, align 4
  %28 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %29 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mdio_board_info*, %struct.mdio_board_info** %5, align 8
  %31 = getelementptr inbounds %struct.mdio_board_info, %struct.mdio_board_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %35 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %38 = call i32 @mdio_device_register(%struct.mdio_device* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %19
  %42 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %43 = call i32 @mdio_device_free(%struct.mdio_device* %42)
  br label %44

44:                                               ; preds = %41, %19
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.mdio_device* @mdio_device_create(%struct.mii_bus*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mdio_device*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @mdio_device_register(%struct.mdio_device*) #1

declare dso_local i32 @mdio_device_free(%struct.mdio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
