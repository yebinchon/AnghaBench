; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32, %struct.TYPE_3__, %struct.mii_bus*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32 }
%struct.mii_bus = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdio_device_release = common dso_local global i32 0, align 4
@mdio_bus_type = common dso_local global i32 0, align 4
@mdio_device_free = common dso_local global i32 0, align 4
@mdio_device_remove = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mdio_device* @mdio_device_create(%struct.mii_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdio_device*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mdio_device* @kzalloc(i32 48, i32 %7)
  store %struct.mdio_device* %8, %struct.mdio_device** %6, align 8
  %9 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %10 = icmp ne %struct.mdio_device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mdio_device* @ERR_PTR(i32 %13)
  store %struct.mdio_device* %14, %struct.mdio_device** %3, align 8
  br label %52

15:                                               ; preds = %2
  %16 = load i32, i32* @mdio_device_release, align 4
  %17 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %18 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 1
  %22 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %23 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32* %21, i32** %24, align 8
  %25 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %26 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32* @mdio_bus_type, i32** %27, align 8
  %28 = load i32, i32* @mdio_device_free, align 4
  %29 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %30 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @mdio_device_remove, align 4
  %32 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %33 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %35 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %36 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %35, i32 0, i32 2
  store %struct.mii_bus* %34, %struct.mii_bus** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %39 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %41 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %40, i32 0, i32 1
  %42 = load i32, i32* @PHY_ID_FMT, align 4
  %43 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_set_name(%struct.TYPE_3__* %41, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %49 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %48, i32 0, i32 1
  %50 = call i32 @device_initialize(%struct.TYPE_3__* %49)
  %51 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  store %struct.mdio_device* %51, %struct.mdio_device** %3, align 8
  br label %52

52:                                               ; preds = %15, %11
  %53 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  ret %struct.mdio_device* %53
}

declare dso_local %struct.mdio_device* @kzalloc(i32, i32) #1

declare dso_local %struct.mdio_device* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
