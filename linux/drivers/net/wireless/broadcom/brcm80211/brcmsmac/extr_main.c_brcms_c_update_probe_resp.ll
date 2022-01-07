; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_update_probe_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_update_probe_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, %struct.TYPE_2__*, %struct.brcms_bss_cfg* }
%struct.TYPE_2__ = type { i64 }
%struct.brcms_bss_cfg = type { i64 }

@BRCMS_TYPE_AP = common dso_local global i64 0, align 8
@BRCMS_TYPE_ADHOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_update_probe_resp(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_bss_cfg*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 2
  %8 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %7, align 8
  store %struct.brcms_bss_cfg* %8, %struct.brcms_bss_cfg** %5, align 8
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BRCMS_TYPE_AP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BRCMS_TYPE_ADHOC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21, %15
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %29 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %41

33:                                               ; preds = %27
  %34 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %35 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %5, align 8
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %37 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @brcms_c_bss_update_probe_resp(%struct.brcms_c_info* %34, %struct.brcms_bss_cfg* %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %33, %21, %2
  ret void
}

declare dso_local i32 @brcms_c_bss_update_probe_resp(%struct.brcms_c_info*, %struct.brcms_bss_cfg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
