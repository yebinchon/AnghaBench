; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_get_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_get_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, i32, %struct.technisat_usb2_state* }
%struct.technisat_usb2_state = type { i32* }
%struct.ir_raw_event = type { i32, i32 }

@GET_IR_DATA_VENDOR_REQUEST = common dso_local global i32 0, align 4
@MINIMUM_IR_BIT_TRANSITION_TICK_COUNT = common dso_local global i32 0, align 4
@MAXIMUM_IR_BIT_TIME_TICK_COUNT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@FIRMWARE_CLOCK_DIVISOR = common dso_local global i32 0, align 4
@FIRMWARE_CLOCK_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @technisat_usb2_get_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_get_ir(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.technisat_usb2_state*, align 8
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 3
  %11 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %10, align 8
  store %struct.technisat_usb2_state* %11, %struct.technisat_usb2_state** %4, align 8
  %12 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %4, align 8
  %13 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* @GET_IR_DATA_VENDOR_REQUEST, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 8, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 143, i32* %21, align 4
  %22 = load i32, i32* @MINIMUM_IR_BIT_TRANSITION_TICK_COUNT, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @MAXIMUM_IR_BIT_TIME_TICK_COUNT, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 1
  %30 = call i64 @mutex_lock_interruptible(i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %135

35:                                               ; preds = %1
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_sndctrlpipe(i32 %41, i32 0)
  %43 = load i32, i32* @GET_IR_DATA_VENDOR_REQUEST, align 4
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = load i32, i32* @USB_DIR_OUT, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @usb_control_msg(i32 %38, i32 %42, i32 %43, i32 %46, i32 0, i32 0, i32* %47, i32 5, i32 500)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %70

52:                                               ; preds = %35
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 0, i32* %56, align 4
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_rcvctrlpipe(i32 %62, i32 0)
  %64 = load i32, i32* @GET_IR_DATA_VENDOR_REQUEST, align 4
  %65 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %66 = load i32, i32* @USB_DIR_IN, align 4
  %67 = or i32 %65, %66
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @usb_control_msg(i32 %59, i32 %63, i32 %64, i32 %67, i32 32896, i32 0, i32* %68, i32 62, i32 500)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %52, %51
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %135

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %135

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 0, i32* %83, align 4
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %127, %82
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %4, align 8
  %87 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ARRAY_SIZE(i32* %88)
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %84
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 255
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 1777776, i32* %100, align 4
  %101 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ir_raw_event_store(i32 %103, %struct.ir_raw_event* %5)
  br label %130

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FIRMWARE_CLOCK_DIVISOR, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* @FIRMWARE_CLOCK_TICK, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sdiv i32 %120, 1000
  %122 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %124 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ir_raw_event_store(i32 %125, %struct.ir_raw_event* %5)
  br label %127

127:                                              ; preds = %105
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %84

130:                                              ; preds = %98, %84
  %131 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %132 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ir_raw_event_handle(i32 %133)
  store i32 1, i32* %2, align 4
  br label %135

135:                                              ; preds = %130, %81, %76, %32
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
