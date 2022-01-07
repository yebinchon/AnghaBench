; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_usb_find_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_usb_find_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i16, i32 }

@I2C_M_RD = common dso_local global i16 0, align 2
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32, i8*)* @usb_find_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_find_address(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 4
  store i16 %15, i16* %10, align 2
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 1
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %11, align 1
  %21 = load i16, i16* %10, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @I2C_M_RD, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i8, i8* %11, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %11, align 1
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i8, i8* %11, align 1
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %33, i8* %35, align 1
  %36 = load i16, i16* %10, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @I2C_M_RD, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %44 = load i8, i8* %11, align 1
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @try_read_address(%struct.i2c_adapter* %43, i8 zeroext %44, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %52

47:                                               ; preds = %32
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %49 = load i8, i8* %11, align 1
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @try_write_address(%struct.i2c_adapter* %48, i8 zeroext %49, i32 %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EREMOTEIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @try_read_address(%struct.i2c_adapter*, i8 zeroext, i32) #1

declare dso_local i32 @try_write_address(%struct.i2c_adapter*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
