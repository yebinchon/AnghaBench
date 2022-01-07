; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_phy_shim.c_wlc_phy_shim_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_phy_shim.c_wlc_phy_shim_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_shim_info = type { %struct.brcms_info*, %struct.brcms_c_info*, %struct.brcms_hardware* }
%struct.brcms_hardware = type { i32 }
%struct.brcms_info = type { i32 }
%struct.brcms_c_info = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_shim_info* @wlc_phy_shim_attach(%struct.brcms_hardware* %0, %struct.brcms_info* %1, %struct.brcms_c_info* %2) #0 {
  %4 = alloca %struct.phy_shim_info*, align 8
  %5 = alloca %struct.brcms_hardware*, align 8
  %6 = alloca %struct.brcms_info*, align 8
  %7 = alloca %struct.brcms_c_info*, align 8
  %8 = alloca %struct.phy_shim_info*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %5, align 8
  store %struct.brcms_info* %1, %struct.brcms_info** %6, align 8
  store %struct.brcms_c_info* %2, %struct.brcms_c_info** %7, align 8
  store %struct.phy_shim_info* null, %struct.phy_shim_info** %8, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.phy_shim_info* @kzalloc(i32 24, i32 %9)
  store %struct.phy_shim_info* %10, %struct.phy_shim_info** %8, align 8
  %11 = load %struct.phy_shim_info*, %struct.phy_shim_info** %8, align 8
  %12 = icmp ne %struct.phy_shim_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.phy_shim_info* null, %struct.phy_shim_info** %4, align 8
  br label %25

14:                                               ; preds = %3
  %15 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %16 = load %struct.phy_shim_info*, %struct.phy_shim_info** %8, align 8
  %17 = getelementptr inbounds %struct.phy_shim_info, %struct.phy_shim_info* %16, i32 0, i32 2
  store %struct.brcms_hardware* %15, %struct.brcms_hardware** %17, align 8
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %19 = load %struct.phy_shim_info*, %struct.phy_shim_info** %8, align 8
  %20 = getelementptr inbounds %struct.phy_shim_info, %struct.phy_shim_info* %19, i32 0, i32 1
  store %struct.brcms_c_info* %18, %struct.brcms_c_info** %20, align 8
  %21 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  %22 = load %struct.phy_shim_info*, %struct.phy_shim_info** %8, align 8
  %23 = getelementptr inbounds %struct.phy_shim_info, %struct.phy_shim_info* %22, i32 0, i32 0
  store %struct.brcms_info* %21, %struct.brcms_info** %23, align 8
  %24 = load %struct.phy_shim_info*, %struct.phy_shim_info** %8, align 8
  store %struct.phy_shim_info* %24, %struct.phy_shim_info** %4, align 8
  br label %25

25:                                               ; preds = %14, %13
  %26 = load %struct.phy_shim_info*, %struct.phy_shim_info** %4, align 8
  ret %struct.phy_shim_info* %26
}

declare dso_local %struct.phy_shim_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
