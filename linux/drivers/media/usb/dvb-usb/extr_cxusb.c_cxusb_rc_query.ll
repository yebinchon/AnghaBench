; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@CMD_GET_IR_CODE = common dso_local global i32 0, align 4
@RC_PROTO_NEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @cxusb_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_rc_query(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca [4 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %4 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %5 = load i32, i32* @CMD_GET_IR_CODE, align 4
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %7 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %4, i32 %5, i32* null, i32 0, i32* %6, i32 4)
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %1
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RC_PROTO_NEC, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, -1
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RC_SCANCODE_NEC(i32 %23, i32 %25)
  %27 = call i32 @rc_keydown(i32 %18, i32 %19, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %15, %11
  ret i32 0
}

declare dso_local i32 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

declare dso_local i32 @RC_SCANCODE_NEC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
