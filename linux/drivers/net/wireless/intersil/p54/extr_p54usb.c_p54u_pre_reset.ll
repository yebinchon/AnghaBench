; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ieee80211_hw = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @p54u_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54u_pre_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %6 = call %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = icmp ne %struct.ieee80211_hw* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call i32 @p54u_stop(%struct.ieee80211_hw* %13)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @p54u_stop(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
