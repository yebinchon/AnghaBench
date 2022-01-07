; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_pvb_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_pvb_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_ap_set_pvb_cmd = type { i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_AP_SET_PVB_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_pvb_cmd(%struct.wmi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wmi_ap_set_pvb_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 24)
  store %struct.sk_buff* %13, %struct.sk_buff** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.wmi_ap_set_pvb_cmd*
  store %struct.wmi_ap_set_pvb_cmd* %23, %struct.wmi_ap_set_pvb_cmd** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.wmi_ap_set_pvb_cmd*, %struct.wmi_ap_set_pvb_cmd** %11, align 8
  %27 = getelementptr inbounds %struct.wmi_ap_set_pvb_cmd, %struct.wmi_ap_set_pvb_cmd* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = call i8* @cpu_to_le16(i32 0)
  %29 = load %struct.wmi_ap_set_pvb_cmd*, %struct.wmi_ap_set_pvb_cmd** %11, align 8
  %30 = getelementptr inbounds %struct.wmi_ap_set_pvb_cmd, %struct.wmi_ap_set_pvb_cmd* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load %struct.wmi_ap_set_pvb_cmd*, %struct.wmi_ap_set_pvb_cmd** %11, align 8
  %34 = getelementptr inbounds %struct.wmi_ap_set_pvb_cmd, %struct.wmi_ap_set_pvb_cmd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wmi*, %struct.wmi** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = load i32, i32* @WMI_AP_SET_PVB_CMDID, align 4
  %39 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %40 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %35, i32 %36, %struct.sk_buff* %37, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %19, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
