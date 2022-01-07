; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mdio_device** }

@EBUSY = common dso_local global i32 0, align 4
@MDIO_DEVICE_FLAG_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdiobus_register_device(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %5 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %6 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mdio_device**, %struct.mdio_device*** %8, align 8
  %10 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %11 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.mdio_device*, %struct.mdio_device** %9, i64 %12
  %14 = load %struct.mdio_device*, %struct.mdio_device** %13, align 8
  %15 = icmp ne %struct.mdio_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %21 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MDIO_DEVICE_FLAG_PHY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %28 = call i32 @mdiobus_register_gpiod(%struct.mdio_device* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %26
  %34 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %35 = call i32 @mdiobus_register_reset(%struct.mdio_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %33
  %41 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %42 = call i32 @mdio_device_reset(%struct.mdio_device* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %19
  %44 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %45 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %46 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.mdio_device**, %struct.mdio_device*** %48, align 8
  %50 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %51 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.mdio_device*, %struct.mdio_device** %49, i64 %52
  store %struct.mdio_device* %44, %struct.mdio_device** %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %43, %38, %31, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @mdiobus_register_gpiod(%struct.mdio_device*) #1

declare dso_local i32 @mdiobus_register_reset(%struct.mdio_device*) #1

declare dso_local i32 @mdio_device_reset(%struct.mdio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
