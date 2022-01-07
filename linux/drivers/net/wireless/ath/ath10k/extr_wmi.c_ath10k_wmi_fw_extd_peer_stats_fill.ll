; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_extd_peer_stats_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_fw_extd_peer_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_fw_extd_stats_peer = type { i32, i32 }

@ATH10K_FW_STATS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%30s %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Peer MAC address\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%30s %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Peer RX duration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_fw_extd_stats_peer*, i8*, i32*)* @ath10k_wmi_fw_extd_peer_stats_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_fw_extd_peer_stats_fill(%struct.ath10k_fw_extd_stats_peer* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k_fw_extd_stats_peer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_fw_extd_stats_peer* %0, %struct.ath10k_fw_extd_stats_peer** %4, align 8
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
  %19 = load %struct.ath10k_fw_extd_stats_peer*, %struct.ath10k_fw_extd_stats_peer** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k_fw_extd_stats_peer, %struct.ath10k_fw_extd_stats_peer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @scnprintf(i8* %15, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %21)
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
  %32 = load %struct.ath10k_fw_extd_stats_peer*, %struct.ath10k_fw_extd_stats_peer** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_fw_extd_stats_peer, %struct.ath10k_fw_extd_stats_peer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @scnprintf(i8* %28, i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
