; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_functionality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_functionality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.em28xx_i2c_bus* }
%struct.em28xx_i2c_bus = type { i64 }

@EM28XX_I2C_ALGO_EM28XX = common dso_local global i64 0, align 8
@EM28XX_I2C_ALGO_EM25XX_BUS_B = common dso_local global i64 0, align 8
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_EMUL = common dso_local global i32 0, align 4
@EM28XX_I2C_ALGO_EM2800 = common dso_local global i64 0, align 8
@I2C_FUNC_SMBUS_WRITE_BLOCK_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown i2c bus algorithm.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @functionality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @functionality(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.em28xx_i2c_bus*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 0
  %7 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %6, align 8
  store %struct.em28xx_i2c_bus* %7, %struct.em28xx_i2c_bus** %4, align 8
  %8 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %4, align 8
  %9 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EM28XX_I2C_ALGO_EM28XX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %4, align 8
  %15 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EM28XX_I2C_ALGO_EM25XX_BUS_B, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @I2C_FUNC_I2C, align 4
  %21 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %13
  %24 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %4, align 8
  %25 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EM28XX_I2C_ALGO_EM2800, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @I2C_FUNC_I2C, align 4
  %31 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BLOCK_DATA, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %29, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
