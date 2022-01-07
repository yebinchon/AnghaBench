; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @cxusb_d680_dmb_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_d680_dmb_rc_query(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca [2 x i64], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %5 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %7 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %5, i32 16, i32* null, i32 0, i64* %6, i32 2)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %12 = load i64, i64* %11, align 16
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14, %10
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @RC_SCANCODE_RC5(i64 %24, i64 %26)
  %28 = call i32 @rc_keydown(i32 %21, i32 %22, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %18, %14
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i64*, i32) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

declare dso_local i32 @RC_SCANCODE_RC5(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
