; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_bss_cfg = type { %struct.brcms_c_info* }
%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RCM_MAC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_bss_cfg*)* @brcms_c_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_set_mac(%struct.brcms_bss_cfg* %0) #0 {
  %2 = alloca %struct.brcms_bss_cfg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_bss_cfg* %0, %struct.brcms_bss_cfg** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %5, i32 0, i32 0
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  store %struct.brcms_c_info* %7, %struct.brcms_c_info** %4, align 8
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %9 = load i32, i32* @RCM_MAC_OFFSET, align 4
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @brcms_c_set_addrmatch(%struct.brcms_c_info* %8, i32 %9, i32 %14)
  %16 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %17 = call i32 @brcms_c_ampdu_macaddr_upd(%struct.brcms_c_info* %16)
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @brcms_c_set_addrmatch(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i32 @brcms_c_ampdu_macaddr_upd(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
