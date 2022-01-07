; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_cmd_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_cmd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { i32 }
%struct.usb_8dev_cmd_msg = type { i32, i32, i32, i32 }

@USB_8DEV_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_8dev_priv*)* @usb_8dev_cmd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_cmd_close(%struct.usb_8dev_priv* %0) #0 {
  %2 = alloca %struct.usb_8dev_priv*, align 8
  %3 = alloca %struct.usb_8dev_cmd_msg, align 4
  %4 = alloca %struct.usb_8dev_cmd_msg, align 4
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %2, align 8
  %5 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 2
  %8 = load i32, i32* @USB_8DEV_CLOSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %11 = call i32 @usb_8dev_send_cmd(%struct.usb_8dev_priv* %10, %struct.usb_8dev_cmd_msg* %4, %struct.usb_8dev_cmd_msg* %3)
  ret i32 %11
}

declare dso_local i32 @usb_8dev_send_cmd(%struct.usb_8dev_priv*, %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
