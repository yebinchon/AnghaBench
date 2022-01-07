; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-i2c.c_mdio_i2c_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-i2c.c_mdio_i2c_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.i2c_adapter*, i32, i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i2c:%s\00", align 1
@i2c_mii_read = common dso_local global i32 0, align 4
@i2c_mii_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mii_bus* @mdio_i2c_alloc(%struct.device* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %8 = load i32, i32* @I2C_FUNC_I2C, align 4
  %9 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mii_bus* @ERR_PTR(i32 %13)
  store %struct.mii_bus* %14, %struct.mii_bus** %3, align 8
  br label %44

15:                                               ; preds = %2
  %16 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %16, %struct.mii_bus** %6, align 8
  %17 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %18 = icmp ne %struct.mii_bus* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.mii_bus* @ERR_PTR(i32 %21)
  store %struct.mii_bus* %22, %struct.mii_bus** %3, align 8
  br label %44

23:                                               ; preds = %15
  %24 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %25 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i8* @dev_name(%struct.device* %28)
  %30 = call i32 @snprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 3
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load i32, i32* @i2c_mii_read, align 4
  %35 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @i2c_mii_write, align 4
  %38 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %39 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %41 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 0
  store %struct.i2c_adapter* %40, %struct.i2c_adapter** %42, align 8
  %43 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  store %struct.mii_bus* %43, %struct.mii_bus** %3, align 8
  br label %44

44:                                               ; preds = %23, %19, %11
  %45 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  ret %struct.mii_bus* %45
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.mii_bus* @ERR_PTR(i32) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
