; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_au6610.c_au6610_i2c_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_au6610.c_au6610_i2c_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@AU6610_REQ_I2C_WRITE = common dso_local global i32 0, align 4
@AU6610_REQ_I2C_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @au6610_i2c_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au6610_i2c_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %11, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %17, %6
  %21 = phi i1 [ true, %6 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @AU6610_REQ_I2C_WRITE, align 4
  store i32 %26, i32* %13, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @AU6610_REQ_I2C_READ, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @au6610_usb_msg(%struct.dvb_usb_device* %30, i32 %31, i32 %32, i32* %33, i32 %34, i32* %35, i32 %36)
  ret i32 %37
}

declare dso_local i32 @au6610_usb_msg(%struct.dvb_usb_device*, i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
