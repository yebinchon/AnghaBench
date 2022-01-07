; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_send_probe_response_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_send_probe_response_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_p2p_probe_response_cmd = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"send_probe_response_cmd: freq=%u dst=%pM len=%u\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_SEND_PROBE_RESPONSE_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_send_probe_response_cmd(%struct.wmi* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.wmi_p2p_probe_response_cmd*, align 8
  %16 = alloca i64, align 8
  store %struct.wmi* %0, %struct.wmi** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 16, %18
  store i64 %19, i64* %16, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i64, i64* %16, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %22, %6
  %26 = load i64, i64* %16, align 8
  %27 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %14, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @ath6kl_dbg(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %35, i32* %36, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.wmi_p2p_probe_response_cmd*
  store %struct.wmi_p2p_probe_response_cmd* %42, %struct.wmi_p2p_probe_response_cmd** %15, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.wmi_p2p_probe_response_cmd*, %struct.wmi_p2p_probe_response_cmd** %15, align 8
  %46 = getelementptr inbounds %struct.wmi_p2p_probe_response_cmd, %struct.wmi_p2p_probe_response_cmd* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wmi_p2p_probe_response_cmd*, %struct.wmi_p2p_probe_response_cmd** %15, align 8
  %48 = getelementptr inbounds %struct.wmi_p2p_probe_response_cmd, %struct.wmi_p2p_probe_response_cmd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %49, i32* %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.wmi_p2p_probe_response_cmd*, %struct.wmi_p2p_probe_response_cmd** %15, align 8
  %56 = getelementptr inbounds %struct.wmi_p2p_probe_response_cmd, %struct.wmi_p2p_probe_response_cmd* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wmi_p2p_probe_response_cmd*, %struct.wmi_p2p_probe_response_cmd** %15, align 8
  %58 = getelementptr inbounds %struct.wmi_p2p_probe_response_cmd, %struct.wmi_p2p_probe_response_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @memcpy(i32 %59, i32* %60, i32 %61)
  %63 = load %struct.wmi*, %struct.wmi** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %66 = load i32, i32* @WMI_SEND_PROBE_RESPONSE_CMDID, align 4
  %67 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %68 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %63, i32 %64, %struct.sk_buff* %65, i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %33, %30
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i64) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
