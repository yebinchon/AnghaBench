; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_cmd_send_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_cmd_send_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ath10k_skb_cb = type { i32 }
%struct.wmi_cmd_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_CMD_HDR_CMD_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_cmd_send_nowait(%struct.ath10k* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_skb_cb*, align 8
  %9 = alloca %struct.wmi_cmd_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %12)
  store %struct.ath10k_skb_cb* %13, %struct.ath10k_skb_cb** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32* @skb_push(%struct.sk_buff* %14, i32 4)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @WMI_CMD_HDR_CMD_ID, align 4
  %23 = call i32 @SM(i32 %21, i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %29, %struct.wmi_cmd_hdr** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @__cpu_to_le32(i32 %30)
  %32 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %9, align 8
  %33 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %8, align 8
  %35 = call i32 @memset(%struct.ath10k_skb_cb* %34, i32 0, i32 4)
  %36 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @trace_ath10k_wmi_cmd(%struct.ath10k* %36, i32 %37, i64 %40, i32 %43)
  %45 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %46 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %45, i32 0, i32 1
  %47 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @ath10k_htc_send(i32* %46, i32 %50, %struct.sk_buff* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %20
  br label %57

56:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %61

57:                                               ; preds = %55
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @skb_pull(%struct.sk_buff* %58, i32 4)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %56, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.ath10k_skb_cb*, i32, i32) #1

declare dso_local i32 @trace_ath10k_wmi_cmd(%struct.ath10k*, i32, i64, i32) #1

declare dso_local i32 @ath10k_htc_send(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
