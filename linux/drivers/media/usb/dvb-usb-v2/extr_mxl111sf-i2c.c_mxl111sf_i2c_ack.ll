; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@SW_I2C_BUSY_ADDR = common dso_local global i32 0, align 4
@SW_I2C_ADDR = common dso_local global i32 0, align 4
@SW_I2C_EN = common dso_local global i32 0, align 4
@SW_SCL_OUT = common dso_local global i32 0, align 4
@SW_SDA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*)* @mxl111sf_i2c_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_ack(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @mxl_i2c(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %7 = load i32, i32* @SW_I2C_BUSY_ADDR, align 4
  %8 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %6, i32 %7, i32* %4)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @mxl_fail(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %15 = load i32, i32* @SW_I2C_ADDR, align 4
  %16 = load i32, i32* @SW_I2C_EN, align 4
  %17 = or i32 16, %16
  %18 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %14, i32 %15, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @mxl_fail(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %45

23:                                               ; preds = %13
  %24 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %25 = load i32, i32* @SW_I2C_ADDR, align 4
  %26 = load i32, i32* @SW_I2C_EN, align 4
  %27 = or i32 16, %26
  %28 = load i32, i32* @SW_SCL_OUT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %24, i32 %25, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @mxl_fail(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %45

35:                                               ; preds = %23
  %36 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %37 = load i32, i32* @SW_I2C_ADDR, align 4
  %38 = load i32, i32* @SW_I2C_EN, align 4
  %39 = or i32 16, %38
  %40 = load i32, i32* @SW_SDA_OUT, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %36, i32 %37, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @mxl_fail(i32 %43)
  br label %45

45:                                               ; preds = %35, %34, %22, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mxl_i2c(i8*) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
