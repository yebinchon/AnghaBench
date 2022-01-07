; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@SW_I2C_ADDR = common dso_local global i32 0, align 4
@SW_I2C_EN = common dso_local global i32 0, align 4
@SW_SCL_OUT = common dso_local global i32 0, align 4
@SW_SDA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*)* @mxl111sf_i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_start(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_state*, align 8
  %3 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %2, align 8
  %4 = call i32 @mxl_i2c(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %6 = load i32, i32* @SW_I2C_ADDR, align 4
  %7 = load i32, i32* @SW_I2C_EN, align 4
  %8 = or i32 16, %7
  %9 = load i32, i32* @SW_SCL_OUT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SW_SDA_OUT, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %5, i32 %6, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @mxl_fail(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %20 = load i32, i32* @SW_I2C_ADDR, align 4
  %21 = load i32, i32* @SW_I2C_EN, align 4
  %22 = or i32 16, %21
  %23 = load i32, i32* @SW_SCL_OUT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %19, i32 %20, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @mxl_fail(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %32 = load i32, i32* @SW_I2C_ADDR, align 4
  %33 = load i32, i32* @SW_I2C_EN, align 4
  %34 = or i32 16, %33
  %35 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %31, i32 %32, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @mxl_fail(i32 %36)
  br label %38

38:                                               ; preds = %30, %29, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
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
