; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_control_rx_xtnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_control_rx_xtnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.wmix_cmd_hdr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"bad packet 1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wmi event hb challenge resp\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"wmi event dbglog len %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown cmd id 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.sk_buff*)* @ath6kl_wmi_control_rx_xtnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_control_rx_xtnd(%struct.wmi* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmix_cmd_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @ath6kl_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.wmix_cmd_hdr*
  store %struct.wmix_cmd_hdr* %24, %struct.wmix_cmd_hdr** %6, align 8
  %25 = load %struct.wmix_cmd_hdr*, %struct.wmix_cmd_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.wmix_cmd_hdr, %struct.wmix_cmd_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @skb_pull(%struct.sk_buff* %29, i32 4)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %55 [
    i32 128, label %38
    i32 129, label %45
  ]

38:                                               ; preds = %20
  %39 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %40 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.wmi*, %struct.wmi** %4, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ath6kl_wmi_hb_challenge_resp_event(%struct.wmi* %41, i32* %42, i32 %43)
  br label %60

45:                                               ; preds = %20
  %46 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.wmi*, %struct.wmi** %4, align 8
  %50 = getelementptr inbounds %struct.wmi, %struct.wmi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ath6kl_debug_fwlog_event(i32 %51, i32* %52, i32 %53)
  br label %60

55:                                               ; preds = %20
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %45, %38
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @ath6kl_wmi_hb_challenge_resp_event(%struct.wmi*, i32*, i32) #1

declare dso_local i32 @ath6kl_debug_fwlog_event(i32, i32*, i32) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
