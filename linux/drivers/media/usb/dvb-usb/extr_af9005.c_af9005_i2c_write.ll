; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"i2c_write i2caddr %x, reg %x, len %d data \00", align 1
@APO_REG_I2C_RW_SILICON_TUNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"i2c_write failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"i2c_write ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i64, i64, i64*, i32)* @af9005_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_i2c_write(%struct.dvb_usb_device* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i64], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i32 %17)
  %19 = load i64*, i64** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @debug_dump(i64* %19, i32 %20, i32 (i8*)* bitcast (i32 (i8*, ...)* @deb_i2c to i32 (i8*)*))
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %50, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %38, i64* %39, align 16
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %41 = load i32, i32* @APO_REG_I2C_RW_SILICON_TUNER, align 4
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %43 = call i32 @af9005_write_tuner_registers(%struct.dvb_usb_device* %40, i32 %41, i64* %42, i32 3)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %55

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %22

53:                                               ; preds = %22
  %54 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @deb_i2c(i8*, ...) #1

declare dso_local i32 @debug_dump(i64*, i32, i32 (i8*)*) #1

declare dso_local i32 @af9005_write_tuner_registers(%struct.dvb_usb_device*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
