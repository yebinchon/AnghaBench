; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_get_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_get_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp1653_flash = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@ADP1653_REG_FAULT = common dso_local global i32 0, align 4
@ADP1653_REG_OUT_SEL = common dso_local global i32 0, align 4
@V4L2_FLASH_LED_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp1653_flash*)* @adp1653_get_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp1653_get_fault(%struct.adp1653_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adp1653_flash*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adp1653_flash* %0, %struct.adp1653_flash** %3, align 8
  %7 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %8 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %7, i32 0, i32 2
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @ADP1653_REG_FAULT, align 4
  %12 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %20 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %24 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

28:                                               ; preds = %17
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @ADP1653_REG_OUT_SEL, align 4
  %31 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %29, i32 %30, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %28
  %37 = load i32, i32* @V4L2_FLASH_LED_MODE_NONE, align 4
  %38 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %39 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %43 = call i32 @adp1653_update_hw(%struct.adp1653_flash* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %36
  %49 = load %struct.adp1653_flash*, %struct.adp1653_flash** %3, align 8
  %50 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %46, %34, %27, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @adp1653_update_hw(%struct.adp1653_flash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
