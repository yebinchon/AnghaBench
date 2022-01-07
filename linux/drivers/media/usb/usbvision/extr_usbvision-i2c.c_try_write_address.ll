; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_try_write_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-i2c.c_try_write_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.usb_usbvision = type { i32 }

@DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Needed %d retries for address %#2x\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Maybe there's no device at this address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8, i32)* @try_write_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_write_address(%struct.i2c_adapter* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_usbvision*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call i64 @i2c_get_adapdata(%struct.i2c_adapter* %11)
  %13 = inttoptr i64 %12 to %struct.usb_usbvision*
  store %struct.usb_usbvision* %13, %struct.usb_usbvision** %7, align 8
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %14, align 1
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %35, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %21 = load i8, i8* %5, align 1
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %23 = call i32 @usbvision_i2c_write(%struct.usb_usbvision* %20, i8 zeroext %21, i8* %22, i32 1)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %38

27:                                               ; preds = %19
  %28 = call i32 @udelay(i32 5)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %38

33:                                               ; preds = %27
  %34 = call i32 @udelay(i32 10)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %15

38:                                               ; preds = %32, %26, %15
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* @DBG_I2C, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (i32, i8*, ...) @PDEBUG(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load i32, i32* @DBG_I2C, align 4
  %48 = call i32 (i32, i8*, ...) @PDEBUG(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %41, %38
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i64 @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @usbvision_i2c_write(%struct.usb_usbvision*, i8 zeroext, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
