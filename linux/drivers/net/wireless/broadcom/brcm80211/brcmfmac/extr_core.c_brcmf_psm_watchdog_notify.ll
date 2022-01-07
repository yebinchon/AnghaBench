; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_psm_watchdog_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_psm_watchdog_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub*, i32 }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_event_msg = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"enter: bsscfgidx=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"PSM's watchdog has fired!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get memory dump, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_event_msg*, i8*)* @brcmf_psm_watchdog_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_psm_watchdog_notify(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.brcmf_event_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %9, i32 0, i32 0
  %11 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  store %struct.brcmf_pub* %11, %struct.brcmf_pub** %7, align 8
  %12 = load i32, i32* @TRACE, align 4
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %18 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %20 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %19, i32 0, i32 0
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %20, align 8
  %22 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %5, align 8
  %26 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @brcmf_debug_create_memdump(i32 %23, i8* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @brcmf_debug_create_memdump(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
