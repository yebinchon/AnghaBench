; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54usb.c_p54u_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ieee80211_hw = type { %struct.p54u_priv* }
%struct.p54u_priv = type { i32 (%struct.ieee80211_hw.0*)*, i64 }
%struct.ieee80211_hw.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @p54u_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54u_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.p54u_priv*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %7 = call %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = icmp ne %struct.ieee80211_hw* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.p54u_priv*, %struct.p54u_priv** %15, align 8
  store %struct.p54u_priv* %16, %struct.p54u_priv** %5, align 8
  %17 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %18 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %17, i32 0, i32 0
  %19 = load i32 (%struct.ieee80211_hw.0*)*, i32 (%struct.ieee80211_hw.0*)** %18, align 8
  %20 = icmp ne i32 (%struct.ieee80211_hw.0*)* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %23 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i1 [ false, %13 ], [ %25, %21 ]
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %40

33:                                               ; preds = %26
  %34 = load %struct.p54u_priv*, %struct.p54u_priv** %5, align 8
  %35 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %34, i32 0, i32 0
  %36 = load i32 (%struct.ieee80211_hw.0*)*, i32 (%struct.ieee80211_hw.0*)** %35, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %38 = bitcast %struct.ieee80211_hw* %37 to %struct.ieee80211_hw.0*
  %39 = call i32 %36(%struct.ieee80211_hw.0* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %32, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
