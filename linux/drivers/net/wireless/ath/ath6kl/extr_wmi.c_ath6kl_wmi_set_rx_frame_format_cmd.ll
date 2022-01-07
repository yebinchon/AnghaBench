; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_rx_frame_format_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_rx_frame_format_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_rx_frame_format_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_RX_FRAME_FORMAT_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_rx_frame_format_cmd(%struct.wmi* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.wmi_rx_frame_format_cmd*, align 8
  %14 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 12)
  store %struct.sk_buff* %15, %struct.sk_buff** %12, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %48

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.wmi_rx_frame_format_cmd*
  store %struct.wmi_rx_frame_format_cmd* %25, %struct.wmi_rx_frame_format_cmd** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load %struct.wmi_rx_frame_format_cmd*, %struct.wmi_rx_frame_format_cmd** %13, align 8
  %31 = getelementptr inbounds %struct.wmi_rx_frame_format_cmd, %struct.wmi_rx_frame_format_cmd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.wmi_rx_frame_format_cmd*, %struct.wmi_rx_frame_format_cmd** %13, align 8
  %37 = getelementptr inbounds %struct.wmi_rx_frame_format_cmd, %struct.wmi_rx_frame_format_cmd* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.wmi_rx_frame_format_cmd*, %struct.wmi_rx_frame_format_cmd** %13, align 8
  %40 = getelementptr inbounds %struct.wmi_rx_frame_format_cmd, %struct.wmi_rx_frame_format_cmd* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wmi*, %struct.wmi** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = load i32, i32* @WMI_RX_FRAME_FORMAT_CMDID, align 4
  %45 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %46 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %41, i32 %42, %struct.sk_buff* %43, i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %21, %18
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
