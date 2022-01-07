; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.b43legacy_wl = type { i32, i32, i32, i32, %struct.ieee80211_vif*, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Removing Interface type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @b43legacy_op_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_op_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.b43legacy_wl*, align 8
  %6 = alloca %struct.b43legacy_wldev*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %8)
  store %struct.b43legacy_wl* %9, %struct.b43legacy_wl** %5, align 8
  %10 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %10, i32 0, i32 5
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %11, align 8
  store %struct.b43legacy_wldev* %12, %struct.b43legacy_wldev** %6, align 8
  %13 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @b43legacydbg(%struct.b43legacy_wl* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %19 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @B43legacy_WARN_ON(i32 %26)
  %28 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %28, i32 0, i32 4
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %29, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %32 = icmp ne %struct.ieee80211_vif* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @B43legacy_WARN_ON(i32 %33)
  %35 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %36 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %35, i32 0, i32 4
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %36, align 8
  %37 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %38 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %40 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %39, i32 0, i32 2
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %44 = call i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev* %43)
  %45 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %46 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @eth_zero_addr(i32 %47)
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %50 = call i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev* %49)
  %51 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %52 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %51, i32 0, i32 2
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %56 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  ret void
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @b43legacydbg(%struct.b43legacy_wl*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
