; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_get_bucket_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_get_bucket_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_sched_scan_request = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_pno_config_le = type { i32, i32* }

@BRCMF_NUMCHANNELS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"[%d] Chan : %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_sched_scan_request*, %struct.brcmf_pno_config_le*)* @brcmf_pno_get_bucket_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_get_bucket_channels(%struct.cfg80211_sched_scan_request* %0, %struct.brcmf_pno_config_le* %1) #0 {
  %3 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %4 = alloca %struct.brcmf_pno_config_le*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfg80211_sched_scan_request* %0, %struct.cfg80211_sched_scan_request** %3, align 8
  store %struct.brcmf_pno_config_le* %1, %struct.brcmf_pno_config_le** %4, align 8
  %9 = load %struct.brcmf_pno_config_le*, %struct.brcmf_pno_config_le** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_pno_config_le, %struct.brcmf_pno_config_le* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %49, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %3, align 8
  %16 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BRCMF_NUMCHANNELS, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %54

26:                                               ; preds = %19
  %27 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %3, align 8
  %28 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @SCAN, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @brcmf_dbg(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = load %struct.brcmf_pno_config_le*, %struct.brcmf_pno_config_le** %4, align 8
  %43 = getelementptr inbounds %struct.brcmf_pno_config_le, %struct.brcmf_pno_config_le* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %13

52:                                               ; preds = %13
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %23
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.brcmf_pno_config_le*, %struct.brcmf_pno_config_le** %4, align 8
  %58 = getelementptr inbounds %struct.brcmf_pno_config_le, %struct.brcmf_pno_config_le* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
