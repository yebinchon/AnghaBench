; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_dongle_scantime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_dongle_scantime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@BRCMF_C_SET_SCAN_CHANNEL_TIME = common dso_local global i32 0, align 4
@BRCMF_SCAN_CHANNEL_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Scan assoc time error (%d)\0A\00", align 1
@BRCMF_C_SET_SCAN_UNASSOC_TIME = common dso_local global i32 0, align 4
@BRCMF_SCAN_UNASSOC_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Scan unassoc time error (%d)\0A\00", align 1
@BRCMF_C_SET_SCAN_PASSIVE_TIME = common dso_local global i32 0, align 4
@BRCMF_SCAN_PASSIVE_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Scan passive time error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_if*)* @brcmf_dongle_scantime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_dongle_scantime(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %5 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %5, i32 0, i32 0
  %7 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  store %struct.brcmf_pub* %7, %struct.brcmf_pub** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %9 = load i32, i32* @BRCMF_C_SET_SCAN_CHANNEL_TIME, align 4
  %10 = load i32, i32* @BRCMF_SCAN_CHANNEL_TIME, align 4
  %11 = call i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %8, i32 %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @bphy_err(%struct.brcmf_pub* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %20 = load i32, i32* @BRCMF_C_SET_SCAN_UNASSOC_TIME, align 4
  %21 = load i32, i32* @BRCMF_SCAN_UNASSOC_TIME, align 4
  %22 = call i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %19, i32 %20, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @bphy_err(%struct.brcmf_pub* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %31 = load i32, i32* @BRCMF_C_SET_SCAN_PASSIVE_TIME, align 4
  %32 = load i32, i32* @BRCMF_SCAN_PASSIVE_TIME, align 4
  %33 = call i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %30, i32 %31, i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @bphy_err(%struct.brcmf_pub* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %36, %25, %14
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
