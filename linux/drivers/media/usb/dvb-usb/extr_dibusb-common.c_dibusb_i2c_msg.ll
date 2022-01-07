; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_i2c_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_i2c_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@MAX_XFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"i2c wr: len=%d is too big!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DIBUSB_REQ_I2C_WRITE = common dso_local global i32 0, align 4
@DIBUSB_REQ_I2C_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @dibusb_i2c_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibusb_i2c_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %6
  %24 = phi i1 [ true, %6 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 2, %26
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 2
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* @MAX_XFER_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kmalloc(i32 %33, i32 %34)
  store i32* %35, i32** %14, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %105

41:                                               ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 4, %42
  %44 = load i32, i32* @MAX_XFER_SIZE, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  br label %101

51:                                               ; preds = %41
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @DIBUSB_REQ_I2C_WRITE, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @DIBUSB_REQ_I2C_READ, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 1
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = or i32 %63, %67
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @memcpy(i32* %72, i32* %73, i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %58
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 255
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, 255
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %78, %58
  %95 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %95, i32* %96, i32 %97, i32* %98, i32 %99, i32 0)
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %94, %46
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @kfree(i32* %102)
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %38
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
