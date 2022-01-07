; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_rd_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_rd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.rtl28xxu_req = type { i32, i32, i32*, i32 }

@CMD_USB_RD = common dso_local global i32 0, align 4
@CMD_SYS_RD = common dso_local global i32 0, align 4
@CMD_IR_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32)* @rtl28xxu_rd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_rd_regs(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl28xxu_req, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 12288
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @CMD_USB_RD, align 4
  %14 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %9, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  br label %25

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 16384
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @CMD_SYS_RD, align 4
  %20 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %9, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @CMD_IR_RD, align 4
  %23 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %9, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %9, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %9, i32 0, i32 2
  store i32* %30, i32** %31, align 8
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %33 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %32, %struct.rtl28xxu_req* %9)
  ret i32 %33
}

declare dso_local i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device*, %struct.rtl28xxu_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
