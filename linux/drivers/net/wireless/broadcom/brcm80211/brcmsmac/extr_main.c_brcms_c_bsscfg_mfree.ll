; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_bsscfg_mfree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_bsscfg_mfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_bss_cfg = type { %struct.brcms_bss_cfg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_bss_cfg*)* @brcms_c_bsscfg_mfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_bsscfg_mfree(%struct.brcms_bss_cfg* %0) #0 {
  %2 = alloca %struct.brcms_bss_cfg*, align 8
  store %struct.brcms_bss_cfg* %0, %struct.brcms_bss_cfg** %2, align 8
  %3 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %2, align 8
  %4 = icmp eq %struct.brcms_bss_cfg* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %13

6:                                                ; preds = %1
  %7 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %7, i32 0, i32 0
  %9 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %8, align 8
  %10 = call i32 @kfree(%struct.brcms_bss_cfg* %9)
  %11 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %2, align 8
  %12 = call i32 @kfree(%struct.brcms_bss_cfg* %11)
  br label %13

13:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @kfree(%struct.brcms_bss_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
