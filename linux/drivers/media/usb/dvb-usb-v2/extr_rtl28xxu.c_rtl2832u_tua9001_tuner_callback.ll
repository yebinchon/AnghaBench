; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_tua9001_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_tua9001_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"cmd=%d arg=%d\0A\00", align 1
@SYS_GPIO_OUT_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32)* @rtl2832u_tua9001_tuner_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832u_tua9001_tuner_callback(%struct.dvb_usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %46 [
    i32 129, label %18
    i32 128, label %32
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 16, i32* %9, align 4
  br label %23

22:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %25 = load i32, i32* @SYS_GPIO_OUT_VAL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %24, i32 %25, i32 %26, i32 16)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %47

31:                                               ; preds = %23
  br label %46

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2, i32* %9, align 4
  br label %37

36:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %39 = load i32, i32* @SYS_GPIO_OUT_VAL, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %38, i32 %39, i32 %40, i32 2)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %47

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %3, %45, %31
  store i32 0, i32* %4, align 4
  br label %55

47:                                               ; preds = %44, %30
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %46
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
