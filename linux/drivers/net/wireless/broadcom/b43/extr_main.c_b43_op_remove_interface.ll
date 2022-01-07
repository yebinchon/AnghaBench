; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.b43_wl = type { i32, i32, i32, %struct.ieee80211_vif*, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Removing Interface type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @b43_op_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_op_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.b43_wl*, align 8
  %6 = alloca %struct.b43_wldev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %7)
  store %struct.b43_wl* %8, %struct.b43_wl** %5, align 8
  %9 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %10 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %9, i32 0, i32 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %10, align 8
  store %struct.b43_wldev* %11, %struct.b43_wldev** %6, align 8
  %12 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @b43dbg(%struct.b43_wl* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %18 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %21 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @B43_WARN_ON(i32 %25)
  %27 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %28 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %27, i32 0, i32 3
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %28, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %31 = icmp ne %struct.ieee80211_vif* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @B43_WARN_ON(i32 %32)
  %34 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %35 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %34, i32 0, i32 3
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %35, align 8
  %36 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %37 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %39 = call i32 @b43_adjust_opmode(%struct.b43_wldev* %38)
  %40 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %41 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @eth_zero_addr(i32 %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %45 = call i32 @b43_upload_card_macaddress(%struct.b43_wldev* %44)
  %46 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %47 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @b43dbg(%struct.b43_wl*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_adjust_opmode(%struct.b43_wldev*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @b43_upload_card_macaddress(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
