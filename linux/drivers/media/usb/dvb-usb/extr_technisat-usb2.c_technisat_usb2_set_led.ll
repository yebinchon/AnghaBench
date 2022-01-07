; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_set_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.technisat_usb2_state* }
%struct.technisat_usb2_state = type { i32* }

@SET_RED_LED_VENDOR_REQUEST = common dso_local global i32 0, align 4
@SET_GREEN_LED_VENDOR_REQUEST = common dso_local global i32 0, align 4
@disable_led_control = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32)* @technisat_usb2_set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_set_led(%struct.dvb_usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.technisat_usb2_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 2
  %13 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %12, align 8
  store %struct.technisat_usb2_state* %13, %struct.technisat_usb2_state** %8, align 8
  %14 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %8, align 8
  %15 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @SET_RED_LED_VENDOR_REQUEST, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SET_GREEN_LED_VENDOR_REQUEST, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* @disable_led_control, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 129
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %97

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %60 [
    i32 128, label %35
    i32 130, label %38
    i32 129, label %61
  ]

35:                                               ; preds = %33
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 130, i32* %37, align 4
  br label %64

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 130, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 2, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 10, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 10, i32* %49, align 4
  br label %57

50:                                               ; preds = %38
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 255, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 50, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 50, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  store i32 1, i32* %59, align 4
  br label %64

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %33, %60
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 128, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %57, %35
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %65, i32 0, i32 0
  %67 = call i64 @mutex_lock_interruptible(i32* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %97

72:                                               ; preds = %64
  %73 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %77 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_sndctrlpipe(i32 %78, i32 0)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @SET_RED_LED_VENDOR_REQUEST, align 4
  br label %86

84:                                               ; preds = %72
  %85 = load i32, i32* @SET_GREEN_LED_VENDOR_REQUEST, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %89 = load i32, i32* @USB_DIR_OUT, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @usb_control_msg(i32 %75, i32 %79, i32 %87, i32 %90, i32 0, i32 0, i32* %91, i32 8, i32 500)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %94 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %86, %69, %32
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
