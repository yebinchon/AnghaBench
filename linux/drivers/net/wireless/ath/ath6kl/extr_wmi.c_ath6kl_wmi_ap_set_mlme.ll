; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_ap_set_mlme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_ap_set_mlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_ap_set_mlme_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ap_set_mlme: cmd=%d reason=%d\0A\00", align 1
@WMI_AP_SET_MLME_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_ap_set_mlme(%struct.wmi* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.wmi_ap_set_mlme_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 12)
  store %struct.sk_buff* %14, %struct.sk_buff** %12, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.wmi_ap_set_mlme_cmd*
  store %struct.wmi_ap_set_mlme_cmd* %24, %struct.wmi_ap_set_mlme_cmd** %13, align 8
  %25 = load %struct.wmi_ap_set_mlme_cmd*, %struct.wmi_ap_set_mlme_cmd** %13, align 8
  %26 = getelementptr inbounds %struct.wmi_ap_set_mlme_cmd, %struct.wmi_ap_set_mlme_cmd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32 %27, i32* %28, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.wmi_ap_set_mlme_cmd*, %struct.wmi_ap_set_mlme_cmd** %13, align 8
  %34 = getelementptr inbounds %struct.wmi_ap_set_mlme_cmd, %struct.wmi_ap_set_mlme_cmd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.wmi_ap_set_mlme_cmd*, %struct.wmi_ap_set_mlme_cmd** %13, align 8
  %37 = getelementptr inbounds %struct.wmi_ap_set_mlme_cmd, %struct.wmi_ap_set_mlme_cmd* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %39 = load %struct.wmi_ap_set_mlme_cmd*, %struct.wmi_ap_set_mlme_cmd** %13, align 8
  %40 = getelementptr inbounds %struct.wmi_ap_set_mlme_cmd, %struct.wmi_ap_set_mlme_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wmi_ap_set_mlme_cmd*, %struct.wmi_ap_set_mlme_cmd** %13, align 8
  %43 = getelementptr inbounds %struct.wmi_ap_set_mlme_cmd, %struct.wmi_ap_set_mlme_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ath6kl_dbg(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.wmi*, %struct.wmi** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = load i32, i32* @WMI_AP_SET_MLME_CMDID, align 4
  %50 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %51 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %46, i32 %47, %struct.sk_buff* %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %20, %17
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
