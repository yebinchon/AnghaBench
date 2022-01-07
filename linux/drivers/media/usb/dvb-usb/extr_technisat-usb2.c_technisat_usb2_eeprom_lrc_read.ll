; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_eeprom_lrc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_eeprom_lrc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.i2c_msg = type { i32, i64*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i64*, i32, i64)* @technisat_usb2_eeprom_lrc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_eeprom_lrc_read(%struct.dvb_usb_device* %0, i32 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x %struct.i2c_msg], align 16
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 255
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %12, align 8
  %18 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 3
  %23 = or i32 80, %22
  store i32 %23, i32* %19, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  store i64* %12, i64** %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 1
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 3
  %32 = or i32 80, %31
  store i32 %32, i32* %28, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %34 = load i64*, i64** %9, align 8
  store i64* %34, i64** %33, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 3
  %38 = load i32, i32* @I2C_M_RD, align 4
  store i32 %38, i32* %37, align 4
  br label %39

39:                                               ; preds = %66, %5
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %11, align 8
  %42 = icmp ne i64 %40, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %47 = call i32 @i2c_transfer(i32* %45, %struct.i2c_msg* %46, i32 2)
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %67

50:                                               ; preds = %43
  %51 = load i64*, i64** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i64 @technisat_usb2_calc_lrc(i64* %51, i32 %53)
  %55 = load i64*, i64** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %70

66:                                               ; preds = %50
  br label %39

67:                                               ; preds = %49, %39
  %68 = load i32, i32* @EREMOTEIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %65
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i64 @technisat_usb2_calc_lrc(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
