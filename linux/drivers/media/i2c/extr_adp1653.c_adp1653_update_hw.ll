; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_update_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_update_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp1653_flash = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32 }

@ADP1653_REG_OUT_SEL_ILED_SHIFT = common dso_local global i32 0, align 4
@ADP1653_REG_CONFIG_TMR_CFG = common dso_local global i32 0, align 4
@ADP1653_REG_CONFIG_TMR_SET_SHIFT = common dso_local global i32 0, align 4
@ADP1653_REG_OUT_SEL_HPLED_SHIFT = common dso_local global i32 0, align 4
@ADP1653_REG_OUT_SEL = common dso_local global i32 0, align 4
@ADP1653_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp1653_flash*)* @adp1653_update_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp1653_update_hw(%struct.adp1653_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adp1653_flash*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adp1653_flash* %0, %struct.adp1653_flash** %3, align 8
  %8 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %9 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %8, i32 0, i32 4
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %12 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ADP1653_INDICATOR_INTENSITY_uA_TO_REG(i32 %15)
  %17 = load i32, i32* @ADP1653_REG_OUT_SEL_ILED_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %20 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %48 [
    i32 129, label %24
    i32 130, label %25
    i32 128, label %37
  ]

24:                                               ; preds = %1
  br label %48

25:                                               ; preds = %1
  %26 = load i32, i32* @ADP1653_REG_CONFIG_TMR_CFG, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %28 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TIMEOUT_US_TO_CODE(i32 %31)
  %33 = load i32, i32* @ADP1653_REG_CONFIG_TMR_SET_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %1
  %38 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %39 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ADP1653_FLASH_INTENSITY_mA_TO_REG(i32 %42)
  %44 = load i32, i32* @ADP1653_REG_OUT_SEL_HPLED_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %1, %37, %25, %24
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @ADP1653_REG_OUT_SEL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %67

57:                                               ; preds = %48
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load i32, i32* @ADP1653_REG_CONFIG, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %64, %55
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ADP1653_INDICATOR_INTENSITY_uA_TO_REG(i32) #1

declare dso_local i32 @TIMEOUT_US_TO_CODE(i32) #1

declare dso_local i32 @ADP1653_FLASH_INTENSITY_mA_TO_REG(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
