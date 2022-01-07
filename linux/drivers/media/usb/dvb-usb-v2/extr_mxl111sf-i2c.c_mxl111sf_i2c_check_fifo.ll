; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_check_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_check_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@USB_READ_I2C_CMD = common dso_local global i32 0, align 4
@I2C_MUX_REG = common dso_local global i32 0, align 4
@I2C_INT_STATUS_REG = common dso_local global i32 0, align 4
@USB_END_I2C_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"(buf[5] & 0x02) == 0x02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*)* @mxl111sf_i2c_check_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_check_fifo(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [26 x i32], align 16
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @mxl_i2c(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @USB_READ_I2C_CMD, align 4
  %7 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 0
  store i32 %6, i32* %7, align 16
  %8 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @I2C_MUX_REG, align 4
  %10 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 2
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 4
  store i32 0, i32* %12, align 16
  %13 = load i32, i32* @I2C_INT_STATUS_REG, align 4
  %14 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 5
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 6
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 7
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @USB_END_I2C_CMD, align 4
  %18 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 8
  store i32 %17, i32* %18, align 16
  %19 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %20 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 0
  %22 = call i32 @mxl111sf_i2c_get_data(%struct.mxl111sf_state* %19, i32 0, i32* %20, i32* %21)
  %23 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 8, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = getelementptr inbounds [26 x i32], [26 x i32]* %4, i64 0, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @mxl_i2c(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mxl_i2c(i8*) #1

declare dso_local i32 @mxl111sf_i2c_get_data(%struct.mxl111sf_state*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
