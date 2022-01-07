; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_i2c_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_i2c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { %struct.mii_bus*, i32, i32, i32, %struct.i2c_adapter* }
%struct.mii_bus = type { i8*, i32 }
%struct.i2c_adapter = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sfp_i2c_read = common dso_local global i32 0, align 4
@sfp_i2c_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SFP I2C Bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp*, %struct.i2c_adapter*)* @sfp_i2c_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_i2c_configure(%struct.sfp* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfp*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %9 = load i32, i32* @I2C_FUNC_I2C, align 4
  %10 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.sfp*, %struct.sfp** %4, align 8
  %18 = getelementptr inbounds %struct.sfp, %struct.sfp* %17, i32 0, i32 4
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %18, align 8
  %19 = load i32, i32* @sfp_i2c_read, align 4
  %20 = load %struct.sfp*, %struct.sfp** %4, align 8
  %21 = getelementptr inbounds %struct.sfp, %struct.sfp* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @sfp_i2c_write, align 4
  %23 = load %struct.sfp*, %struct.sfp** %4, align 8
  %24 = getelementptr inbounds %struct.sfp, %struct.sfp* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sfp*, %struct.sfp** %4, align 8
  %26 = getelementptr inbounds %struct.sfp, %struct.sfp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %29 = call %struct.mii_bus* @mdio_i2c_alloc(i32 %27, %struct.i2c_adapter* %28)
  store %struct.mii_bus* %29, %struct.mii_bus** %6, align 8
  %30 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %31 = call i64 @IS_ERR(%struct.mii_bus* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.mii_bus* %34)
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %15
  %37 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %40 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 8
  %41 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %42 = call i32 @mdiobus_register(%struct.mii_bus* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %47 = call i32 @mdiobus_free(%struct.mii_bus* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %36
  %50 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %51 = load %struct.sfp*, %struct.sfp** %4, align 8
  %52 = getelementptr inbounds %struct.sfp, %struct.sfp* %51, i32 0, i32 0
  store %struct.mii_bus* %50, %struct.mii_bus** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45, %33, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.mii_bus* @mdio_i2c_alloc(i32, %struct.i2c_adapter*) #1

declare dso_local i64 @IS_ERR(%struct.mii_bus*) #1

declare dso_local i32 @PTR_ERR(%struct.mii_bus*) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
