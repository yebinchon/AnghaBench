; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_wmm_txop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_wmm_txop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_set_wmm_txop_cmd = type { i32 }

@WMI_TXOP_DISABLED = common dso_local global i32 0, align 4
@WMI_TXOP_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_SET_WMM_TXOP_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_wmm_txop(%struct.wmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.wmi_set_wmm_txop_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @WMI_TXOP_DISABLED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @WMI_TXOP_ENABLED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %14, %3
  %22 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 4)
  store %struct.sk_buff* %22, %struct.sk_buff** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.wmi_set_wmm_txop_cmd*
  store %struct.wmi_set_wmm_txop_cmd* %32, %struct.wmi_set_wmm_txop_cmd** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.wmi_set_wmm_txop_cmd*, %struct.wmi_set_wmm_txop_cmd** %9, align 8
  %35 = getelementptr inbounds %struct.wmi_set_wmm_txop_cmd, %struct.wmi_set_wmm_txop_cmd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wmi*, %struct.wmi** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* @WMI_SET_WMM_TXOP_CMDID, align 4
  %40 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %41 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %36, i32 %37, %struct.sk_buff* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %28, %25, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
