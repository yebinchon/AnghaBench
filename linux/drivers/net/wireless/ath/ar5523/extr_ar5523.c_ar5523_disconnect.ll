; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ieee80211_hw = type { %struct.ar5523* }
%struct.ar5523 = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"detaching\0A\00", align 1
@AR5523_USB_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ar5523_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ar5523*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ar5523*, %struct.ar5523** %8, align 8
  store %struct.ar5523* %9, %struct.ar5523** %4, align 8
  %10 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %11 = call i32 @ar5523_dbg(%struct.ar5523* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @AR5523_USB_DISCONNECTED, align 4
  %13 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %14 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %13, i32 0, i32 1
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %16)
  %18 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %19 = call i32 @ar5523_cancel_rx_cmd(%struct.ar5523* %18)
  %20 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %21 = call i32 @ar5523_free_tx_cmd(%struct.ar5523* %20)
  %22 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %23 = call i32 @ar5523_free_rx_cmd(%struct.ar5523* %22)
  %24 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %25 = call i32 @ar5523_free_rx_bufs(%struct.ar5523* %24)
  %26 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %27 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @destroy_workqueue(i32 %28)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %30)
  %32 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %33 = call i32 @usb_set_intfdata(%struct.usb_interface* %32, i32* null)
  ret void
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ar5523_cancel_rx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_free_tx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_free_rx_cmd(%struct.ar5523*) #1

declare dso_local i32 @ar5523_free_rx_bufs(%struct.ar5523*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
