; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_peer_stats_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_peer_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_fw_stats_peer = type { i32, i32, i32, i32, i32 }

@ATH10K_FW_STATS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%30s %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Peer MAC address\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%30s %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Peer RSSI\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Peer TX rate\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Peer RX rate\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%30s %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Peer RX duration\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_fw_stats_peer*, i8*, i32*, i32)* @ath10k_wmi_fw_peer_stats_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_fw_peer_stats_fill(%struct.ath10k_fw_stats_peer* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ath10k_fw_stats_peer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k_fw_stats_peer* %0, %struct.ath10k_fw_stats_peer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @ATH10K_FW_STATS_BUF_SIZE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %17, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %5, align 8
  %35 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %30, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %5, align 8
  %48 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %43, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %5, align 8
  %61 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %56, i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %4
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %5, align 8
  %77 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %72, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %68, %4
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %86, i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
