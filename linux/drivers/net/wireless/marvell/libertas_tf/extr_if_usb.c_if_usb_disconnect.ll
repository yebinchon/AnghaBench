; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.if_usb_card = type { %struct.lbtf_private* }
%struct.lbtf_private = type { i32 }

@LBTF_DEB_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @if_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.lbtf_private*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.if_usb_card* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.if_usb_card* %6, %struct.if_usb_card** %3, align 8
  %7 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %8 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %7, i32 0, i32 0
  %9 = load %struct.lbtf_private*, %struct.lbtf_private** %8, align 8
  store %struct.lbtf_private* %9, %struct.lbtf_private** %4, align 8
  %10 = load i32, i32* @LBTF_DEB_MAIN, align 4
  %11 = call i32 @lbtf_deb_enter(i32 %10)
  %12 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %13 = call i32 @if_usb_reset_device(%struct.lbtf_private* %12)
  %14 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %15 = icmp ne %struct.lbtf_private* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %18 = call i32 @lbtf_remove_card(%struct.lbtf_private* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %21 = call i32 @if_usb_free(%struct.if_usb_card* %20)
  %22 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %23 = call i32 @usb_set_intfdata(%struct.usb_interface* %22, i32* null)
  %24 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %25 = call i32 @interface_to_usbdev(%struct.usb_interface* %24)
  %26 = call i32 @usb_put_dev(i32 %25)
  %27 = load i32, i32* @LBTF_DEB_MAIN, align 4
  %28 = call i32 @lbtf_deb_leave(i32 %27)
  ret void
}

declare dso_local %struct.if_usb_card* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @if_usb_reset_device(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_remove_card(%struct.lbtf_private*) #1

declare dso_local i32 @if_usb_free(%struct.if_usb_card*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
