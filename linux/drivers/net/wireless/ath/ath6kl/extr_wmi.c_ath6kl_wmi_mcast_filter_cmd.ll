; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_mcast_filter_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_mcast_filter_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_mcast_filter_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_MCAST_FILTER_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_mcast_filter_cmd(%struct.wmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.wmi_mcast_filter_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 4)
  store %struct.sk_buff* %11, %struct.sk_buff** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.wmi_mcast_filter_cmd*
  store %struct.wmi_mcast_filter_cmd* %21, %struct.wmi_mcast_filter_cmd** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.wmi_mcast_filter_cmd*, %struct.wmi_mcast_filter_cmd** %9, align 8
  %24 = getelementptr inbounds %struct.wmi_mcast_filter_cmd, %struct.wmi_mcast_filter_cmd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.wmi*, %struct.wmi** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load i32, i32* @WMI_MCAST_FILTER_CMDID, align 4
  %29 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %30 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %25, i32 %26, %struct.sk_buff* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
