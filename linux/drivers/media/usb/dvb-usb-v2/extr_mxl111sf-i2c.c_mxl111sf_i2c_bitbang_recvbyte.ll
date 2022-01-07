; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_bitbang_recvbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_bitbang_recvbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@SW_I2C_ADDR = common dso_local global i32 0, align 4
@SW_I2C_EN = common dso_local global i32 0, align 4
@SW_SDA_OUT = common dso_local global i32 0, align 4
@SW_SCL_OUT = common dso_local global i32 0, align 4
@SW_I2C_BUSY_ADDR = common dso_local global i32 0, align 4
@SW_SDA_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, i32*)* @mxl111sf_i2c_bitbang_recvbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_bitbang_recvbyte(%struct.mxl111sf_state* %0, i32* %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @mxl_i2c(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %12 = load i32, i32* @SW_I2C_ADDR, align 4
  %13 = load i32, i32* @SW_I2C_EN, align 4
  %14 = or i32 16, %13
  %15 = load i32, i32* @SW_SDA_OUT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %11, i32 %12, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @mxl_fail(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %77

22:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %71, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %28 = load i32, i32* @SW_I2C_ADDR, align 4
  %29 = load i32, i32* @SW_I2C_EN, align 4
  %30 = or i32 16, %29
  %31 = load i32, i32* @SW_SCL_OUT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SW_SDA_OUT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %27, i32 %28, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @mxl_fail(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %77

40:                                               ; preds = %26
  %41 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %42 = load i32, i32* @SW_I2C_BUSY_ADDR, align 4
  %43 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %41, i32 %42, i32* %8)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @mxl_fail(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %77

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SW_SDA_IN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 128, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %60 = load i32, i32* @SW_I2C_ADDR, align 4
  %61 = load i32, i32* @SW_I2C_EN, align 4
  %62 = or i32 16, %61
  %63 = load i32, i32* @SW_SDA_OUT, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %59, i32 %60, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @mxl_fail(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %77

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %23

74:                                               ; preds = %23
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %69, %47, %39, %21
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @mxl_i2c(i8*) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
