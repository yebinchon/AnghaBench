; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_mgmt_rx_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_mgmt_rx_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.wmi_mgmt_rx_ev_arg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_10_4_mgmt_rx_event = type { %struct.wmi_10_4_mgmt_rx_hdr }
%struct.wmi_10_4_mgmt_rx_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.wmi_mgmt_rx_ext_info = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@WMI_RX_STATUS_EXT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_mgmt_rx_ev_arg*)* @ath10k_wmi_10_4_op_pull_mgmt_rx_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10_4_op_pull_mgmt_rx_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_mgmt_rx_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_mgmt_rx_ev_arg*, align 8
  %8 = alloca %struct.wmi_10_4_mgmt_rx_event*, align 8
  %9 = alloca %struct.wmi_10_4_mgmt_rx_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wmi_mgmt_rx_ext_info*, align 8
  %13 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_mgmt_rx_ev_arg* %2, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.wmi_10_4_mgmt_rx_event*
  store %struct.wmi_10_4_mgmt_rx_event* %17, %struct.wmi_10_4_mgmt_rx_event** %8, align 8
  %18 = load %struct.wmi_10_4_mgmt_rx_event*, %struct.wmi_10_4_mgmt_rx_event** %8, align 8
  %19 = getelementptr inbounds %struct.wmi_10_4_mgmt_rx_event, %struct.wmi_10_4_mgmt_rx_event* %18, i32 0, i32 0
  store %struct.wmi_10_4_mgmt_rx_hdr* %19, %struct.wmi_10_4_mgmt_rx_hdr** %9, align 8
  store i64 24, i64* %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EPROTO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %102

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @skb_pull(%struct.sk_buff* %29, i64 %30)
  %32 = load %struct.wmi_10_4_mgmt_rx_hdr*, %struct.wmi_10_4_mgmt_rx_hdr** %9, align 8
  %33 = getelementptr inbounds %struct.wmi_10_4_mgmt_rx_hdr, %struct.wmi_10_4_mgmt_rx_hdr* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %36 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wmi_10_4_mgmt_rx_hdr*, %struct.wmi_10_4_mgmt_rx_hdr** %9, align 8
  %38 = getelementptr inbounds %struct.wmi_10_4_mgmt_rx_hdr, %struct.wmi_10_4_mgmt_rx_hdr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %41 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.wmi_10_4_mgmt_rx_hdr*, %struct.wmi_10_4_mgmt_rx_hdr** %9, align 8
  %43 = getelementptr inbounds %struct.wmi_10_4_mgmt_rx_hdr, %struct.wmi_10_4_mgmt_rx_hdr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %46 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wmi_10_4_mgmt_rx_hdr*, %struct.wmi_10_4_mgmt_rx_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.wmi_10_4_mgmt_rx_hdr, %struct.wmi_10_4_mgmt_rx_hdr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %51 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.wmi_10_4_mgmt_rx_hdr*, %struct.wmi_10_4_mgmt_rx_hdr** %9, align 8
  %53 = getelementptr inbounds %struct.wmi_10_4_mgmt_rx_hdr, %struct.wmi_10_4_mgmt_rx_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %56 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wmi_10_4_mgmt_rx_hdr*, %struct.wmi_10_4_mgmt_rx_hdr** %9, align 8
  %58 = getelementptr inbounds %struct.wmi_10_4_mgmt_rx_hdr, %struct.wmi_10_4_mgmt_rx_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %61 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %63 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @__le32_to_cpu(i32 %64)
  store i64 %65, i64* %11, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %28
  %72 = load i32, i32* @EPROTO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %102

74:                                               ; preds = %28
  %75 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %76 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load i32, i32* @WMI_RX_STATUS_EXT_INFO, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %74
  %83 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %84 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = call i64 @ALIGN(i32 %86, i32 4)
  store i64 %87, i64* %13, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %90, %91
  %93 = inttoptr i64 %92 to %struct.wmi_mgmt_rx_ext_info*
  store %struct.wmi_mgmt_rx_ext_info* %93, %struct.wmi_mgmt_rx_ext_info** %12, align 8
  %94 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %95 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %94, i32 0, i32 0
  %96 = load %struct.wmi_mgmt_rx_ext_info*, %struct.wmi_mgmt_rx_ext_info** %12, align 8
  %97 = call i32 @memcpy(i32* %95, %struct.wmi_mgmt_rx_ext_info* %96, i32 4)
  br label %98

98:                                               ; preds = %82, %74
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @skb_trim(%struct.sk_buff* %99, i64 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %71, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.wmi_mgmt_rx_ext_info*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
