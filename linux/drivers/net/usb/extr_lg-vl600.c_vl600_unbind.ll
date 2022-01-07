; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.vl600_state* }
%struct.vl600_state = type { i32 }
%struct.usb_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_interface*)* @vl600_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vl600_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.vl600_state*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 0
  %8 = load %struct.vl600_state*, %struct.vl600_state** %7, align 8
  store %struct.vl600_state* %8, %struct.vl600_state** %5, align 8
  %9 = load %struct.vl600_state*, %struct.vl600_state** %5, align 8
  %10 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_kfree_skb(i32 %11)
  %13 = load %struct.vl600_state*, %struct.vl600_state** %5, align 8
  %14 = call i32 @kfree(%struct.vl600_state* %13)
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  call void @usbnet_cdc_unbind(%struct.usbnet* %15, %struct.usb_interface* %16)
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.vl600_state*) #1

declare dso_local void @usbnet_cdc_unbind(%struct.usbnet*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
