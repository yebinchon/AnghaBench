; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_update_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.brcms_bss_cfg* }
%struct.TYPE_2__ = type { i64 }
%struct.brcms_bss_cfg = type { i64 }

@BRCMS_TYPE_AP = common dso_local global i64 0, align 8
@BRCMS_TYPE_ADHOC = common dso_local global i64 0, align 8
@MI_BCNTPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_update_beacon(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_bss_cfg*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %4 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %4, i32 0, i32 5
  %6 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %5, align 8
  store %struct.brcms_bss_cfg* %6, %struct.brcms_bss_cfg** %3, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BRCMS_TYPE_AP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BRCMS_TYPE_ADHOC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19, %13
  %26 = load i32, i32* @MI_BCNTPL, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %49

37:                                               ; preds = %25
  %38 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %40 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %46 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @brcms_c_update_beacon_hw(%struct.brcms_c_info* %38, i32 %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %36, %37, %19, %1
  ret void
}

declare dso_local i32 @brcms_c_update_beacon_hw(%struct.brcms_c_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
