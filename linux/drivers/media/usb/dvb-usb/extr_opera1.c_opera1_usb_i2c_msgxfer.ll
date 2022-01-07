; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_usb_i2c_msgxfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_usb_i2c_msgxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"no usb_device\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@OPERA_READ_MSG = common dso_local global i32 0, align 4
@OPERA_WRITE_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32)* @opera1_usb_i2c_msgxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opera1_usb_i2c_msgxfer(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %14 = icmp ne %struct.dvb_usb_device* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = call i32 @info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %58

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 1
  switch i32 %29, label %34 [
    i32 130, label %30
    i32 129, label %31
    i32 131, label %32
    i32 128, label %33
  ]

30:                                               ; preds = %27
  store i32 182, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %36

31:                                               ; preds = %27
  store i32 182, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %36

32:                                               ; preds = %27
  store i32 177, i32* %11, align 4
  store i32 166, i32* %12, align 4
  br label %36

33:                                               ; preds = %27
  store i32 184, i32* %11, align 4
  store i32 128, i32* %12, align 4
  br label %36

34:                                               ; preds = %27
  store i32 177, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %34, %33, %32, %31, %30
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @OPERA_READ_MSG, align 4
  br label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @OPERA_WRITE_MSG, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @opera1_xilinx_rw(i32 %39, i32 %40, i32 %41, i32* %42, i32 %43, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %24, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @info(i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @opera1_xilinx_rw(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
