; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_bssfilter_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_bssfilter_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_bss_filter_cmd = type { i32, i64 }

@LAST_BSS_FILTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_SET_BSS_FILTER_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_bssfilter_cmd(%struct.wmi* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wmi_bss_filter_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @LAST_BSS_FILTER, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %45

19:                                               ; preds = %4
  %20 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 16)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.wmi_bss_filter_cmd*
  store %struct.wmi_bss_filter_cmd* %30, %struct.wmi_bss_filter_cmd** %11, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.wmi_bss_filter_cmd*, %struct.wmi_bss_filter_cmd** %11, align 8
  %33 = getelementptr inbounds %struct.wmi_bss_filter_cmd, %struct.wmi_bss_filter_cmd* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.wmi_bss_filter_cmd*, %struct.wmi_bss_filter_cmd** %11, align 8
  %37 = getelementptr inbounds %struct.wmi_bss_filter_cmd, %struct.wmi_bss_filter_cmd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.wmi*, %struct.wmi** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = load i32, i32* @WMI_SET_BSS_FILTER_CMDID, align 4
  %42 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %43 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %38, i64 %39, %struct.sk_buff* %40, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %26, %23, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i64, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
