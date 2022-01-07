; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@SW_I2C_ADDR = common dso_local global i32 0, align 4
@SW_I2C_EN = common dso_local global i32 0, align 4
@SW_SCL_OUT = common dso_local global i32 0, align 4
@SW_SDA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*)* @mxl111sf_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_stop(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_state*, align 8
  %3 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %2, align 8
  %4 = call i32 @mxl_i2c(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %6 = load i32, i32* @SW_I2C_ADDR, align 4
  %7 = load i32, i32* @SW_I2C_EN, align 4
  %8 = or i32 16, %7
  %9 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %5, i32 %6, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @mxl_fail(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %16 = load i32, i32* @SW_I2C_ADDR, align 4
  %17 = load i32, i32* @SW_I2C_EN, align 4
  %18 = or i32 16, %17
  %19 = load i32, i32* @SW_SCL_OUT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %15, i32 %16, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @mxl_fail(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %50

26:                                               ; preds = %14
  %27 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %28 = load i32, i32* @SW_I2C_ADDR, align 4
  %29 = load i32, i32* @SW_I2C_EN, align 4
  %30 = or i32 16, %29
  %31 = load i32, i32* @SW_SCL_OUT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SW_SDA_OUT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %27, i32 %28, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @mxl_fail(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %42 = load i32, i32* @SW_I2C_ADDR, align 4
  %43 = load i32, i32* @SW_SCL_OUT, align 4
  %44 = or i32 16, %43
  %45 = load i32, i32* @SW_SDA_OUT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %41, i32 %42, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @mxl_fail(i32 %48)
  br label %50

50:                                               ; preds = %40, %39, %25, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mxl_i2c(i8*) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
