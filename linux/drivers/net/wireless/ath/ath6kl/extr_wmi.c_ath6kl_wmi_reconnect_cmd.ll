; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_reconnect_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_reconnect_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_reconnect_cmd = type { i32, i32 }

@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wmi reconnect bssid %pM freq %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_RECONNECT_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_reconnect_cmd(%struct.wmi* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wmi_reconnect_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @ath6kl_dbg(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %15)
  %17 = load %struct.wmi*, %struct.wmi** %6, align 8
  %18 = getelementptr inbounds %struct.wmi, %struct.wmi* %17, i32 0, i32 0
  store i32 100, i32* %18, align 4
  %19 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 8)
  store %struct.sk_buff* %19, %struct.sk_buff** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %51

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.wmi_reconnect_cmd*
  store %struct.wmi_reconnect_cmd* %29, %struct.wmi_reconnect_cmd** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load %struct.wmi_reconnect_cmd*, %struct.wmi_reconnect_cmd** %11, align 8
  %33 = getelementptr inbounds %struct.wmi_reconnect_cmd, %struct.wmi_reconnect_cmd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.wmi_reconnect_cmd*, %struct.wmi_reconnect_cmd** %11, align 8
  %38 = getelementptr inbounds %struct.wmi_reconnect_cmd, %struct.wmi_reconnect_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %39, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %25
  %44 = load %struct.wmi*, %struct.wmi** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = load i32, i32* @WMI_RECONNECT_CMDID, align 4
  %48 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %49 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %44, i32 %45, %struct.sk_buff* %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32*, i32) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
