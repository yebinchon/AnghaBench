; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_strobe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_strobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp1653_flash = type { %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32 }

@ADP1653_REG_OUT_SEL_ILED_SHIFT = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_FLASH = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ADP1653_REG_OUT_SEL = common dso_local global i32 0, align 4
@ADP1653_REG_OUT_SEL_HPLED_SHIFT = common dso_local global i32 0, align 4
@ADP1653_REG_SW_STROBE = common dso_local global i32 0, align 4
@ADP1653_REG_SW_STROBE_SW_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp1653_flash*, i32)* @adp1653_strobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp1653_strobe(%struct.adp1653_flash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adp1653_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adp1653_flash* %0, %struct.adp1653_flash** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.adp1653_flash*, %struct.adp1653_flash** %4, align 8
  %10 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %9, i32 0, i32 3
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.adp1653_flash*, %struct.adp1653_flash** %4, align 8
  %13 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ADP1653_INDICATOR_INTENSITY_uA_TO_REG(i32 %16)
  %18 = load i32, i32* @ADP1653_REG_OUT_SEL_ILED_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.adp1653_flash*, %struct.adp1653_flash** %4, align 8
  %21 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_FLASH_LED_MODE_FLASH, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %35 = load i32, i32* @ADP1653_REG_OUT_SEL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %70

38:                                               ; preds = %30
  %39 = load %struct.adp1653_flash*, %struct.adp1653_flash** %4, align 8
  %40 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ADP1653_FLASH_INTENSITY_mA_TO_REG(i32 %43)
  %45 = load i32, i32* @ADP1653_REG_OUT_SEL_HPLED_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = load i32, i32* @ADP1653_REG_OUT_SEL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %38
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = load i32, i32* @ADP1653_REG_SW_STROBE, align 4
  %60 = load i32, i32* @ADP1653_REG_SW_STROBE_SW_STROBE, align 4
  %61 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %68 = load i32, i32* @ADP1653_REG_SW_STROBE, align 4
  %69 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %68, i32 0)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64, %55, %33, %27
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ADP1653_INDICATOR_INTENSITY_uA_TO_REG(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADP1653_FLASH_INTENSITY_mA_TO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
