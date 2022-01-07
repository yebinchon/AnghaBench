; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_pdev_extra_stats_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_pdev_extra_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_fw_stats_pdev = type { i32, i32, i32, i32, i32 }

@ATH10K_FW_STATS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%30s %10u\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"RTS bad count\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"RTS good count\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"FCS bad count\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"No beacon count\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"MIB int count\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_fw_stats_pdev*, i8*, i32*)* @ath10k_wmi_fw_pdev_extra_stats_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_fw_pdev_extra_stats_fill(%struct.ath10k_fw_stats_pdev* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_fw_stats_pdev* %0, %struct.ath10k_fw_stats_pdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @ATH10K_FW_STATS_BUF_SIZE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %15, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %28, i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %46 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %41, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %59 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %54, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %4, align 8
  %72 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %67, i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %80, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
