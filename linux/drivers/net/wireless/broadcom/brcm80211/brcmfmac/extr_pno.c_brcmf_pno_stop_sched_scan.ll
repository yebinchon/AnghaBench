; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_stop_sched_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_stop_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.brcmf_pno_info = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reqid=%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_pno_stop_sched_scan(%struct.brcmf_if* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_pno_info*, align 8
  %7 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TRACE, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %12 = call %struct.brcmf_pno_info* @ifp_to_pno(%struct.brcmf_if* %11)
  store %struct.brcmf_pno_info* %12, %struct.brcmf_pno_info** %6, align 8
  %13 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %14 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @brcmf_pno_remove_request(%struct.brcmf_pno_info* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %18
  %27 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %28 = call i32 @brcmf_pno_clean(%struct.brcmf_if* %27)
  %29 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %6, align 8
  %30 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %35 = call i32 @brcmf_pno_config_sched_scans(%struct.brcmf_if* %34)
  br label %36

36:                                               ; preds = %33, %26
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %24, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local %struct.brcmf_pno_info* @ifp_to_pno(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_pno_remove_request(%struct.brcmf_pno_info*, i32) #1

declare dso_local i32 @brcmf_pno_clean(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_pno_config_sched_scans(%struct.brcmf_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
