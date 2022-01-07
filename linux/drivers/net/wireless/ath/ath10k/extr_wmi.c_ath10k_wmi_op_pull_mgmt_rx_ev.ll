; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_mgmt_rx_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_mgmt_rx_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.wmi_mgmt_rx_ev_arg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_mgmt_rx_event_v1 = type { %struct.wmi_mgmt_rx_hdr_v1 }
%struct.wmi_mgmt_rx_hdr_v1 = type { i32, i32, i32, i32, i32, i32 }
%struct.wmi_mgmt_rx_event_v2 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.wmi_mgmt_rx_hdr_v1 }
%struct.wmi_mgmt_rx_ext_info = type { i32 }

@ATH10K_FW_FEATURE_EXT_WMI_MGMT_RX = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@WMI_RX_STATUS_EXT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_mgmt_rx_ev_arg*)* @ath10k_wmi_op_pull_mgmt_rx_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_op_pull_mgmt_rx_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_mgmt_rx_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_mgmt_rx_ev_arg*, align 8
  %8 = alloca %struct.wmi_mgmt_rx_event_v1*, align 8
  %9 = alloca %struct.wmi_mgmt_rx_event_v2*, align 8
  %10 = alloca %struct.wmi_mgmt_rx_hdr_v1*, align 8
  %11 = alloca %struct.wmi_mgmt_rx_ext_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_mgmt_rx_ev_arg* %2, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %15 = load i32, i32* @ATH10K_FW_FEATURE_EXT_WMI_MGMT_RX, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @test_bit(i32 %15, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.wmi_mgmt_rx_event_v2*
  store %struct.wmi_mgmt_rx_event_v2* %28, %struct.wmi_mgmt_rx_event_v2** %9, align 8
  %29 = load %struct.wmi_mgmt_rx_event_v2*, %struct.wmi_mgmt_rx_event_v2** %9, align 8
  %30 = getelementptr inbounds %struct.wmi_mgmt_rx_event_v2, %struct.wmi_mgmt_rx_event_v2* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.wmi_mgmt_rx_hdr_v1* %31, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  store i64 24, i64* %12, align 8
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.wmi_mgmt_rx_event_v1*
  store %struct.wmi_mgmt_rx_event_v1* %36, %struct.wmi_mgmt_rx_event_v1** %8, align 8
  %37 = load %struct.wmi_mgmt_rx_event_v1*, %struct.wmi_mgmt_rx_event_v1** %8, align 8
  %38 = getelementptr inbounds %struct.wmi_mgmt_rx_event_v1, %struct.wmi_mgmt_rx_event_v1* %37, i32 0, i32 0
  store %struct.wmi_mgmt_rx_hdr_v1* %38, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  store i64 24, i64* %12, align 8
  br label %39

39:                                               ; preds = %32, %24
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EPROTO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %122

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @skb_pull(%struct.sk_buff* %49, i64 %50)
  %52 = load %struct.wmi_mgmt_rx_hdr_v1*, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  %53 = getelementptr inbounds %struct.wmi_mgmt_rx_hdr_v1, %struct.wmi_mgmt_rx_hdr_v1* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %56 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wmi_mgmt_rx_hdr_v1*, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  %58 = getelementptr inbounds %struct.wmi_mgmt_rx_hdr_v1, %struct.wmi_mgmt_rx_hdr_v1* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %61 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.wmi_mgmt_rx_hdr_v1*, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  %63 = getelementptr inbounds %struct.wmi_mgmt_rx_hdr_v1, %struct.wmi_mgmt_rx_hdr_v1* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %66 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.wmi_mgmt_rx_hdr_v1*, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  %68 = getelementptr inbounds %struct.wmi_mgmt_rx_hdr_v1, %struct.wmi_mgmt_rx_hdr_v1* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %71 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.wmi_mgmt_rx_hdr_v1*, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  %73 = getelementptr inbounds %struct.wmi_mgmt_rx_hdr_v1, %struct.wmi_mgmt_rx_hdr_v1* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %76 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.wmi_mgmt_rx_hdr_v1*, %struct.wmi_mgmt_rx_hdr_v1** %10, align 8
  %78 = getelementptr inbounds %struct.wmi_mgmt_rx_hdr_v1, %struct.wmi_mgmt_rx_hdr_v1* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %81 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %83 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @__le32_to_cpu(i32 %84)
  store i64 %85, i64* %13, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %48
  %92 = load i32, i32* @EPROTO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %122

94:                                               ; preds = %48
  %95 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %96 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load i32, i32* @WMI_RX_STATUS_EXT_INFO, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %94
  %103 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %104 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = call i64 @ALIGN(i32 %106, i32 4)
  store i64 %107, i64* %14, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %110, %111
  %113 = inttoptr i64 %112 to %struct.wmi_mgmt_rx_ext_info*
  store %struct.wmi_mgmt_rx_ext_info* %113, %struct.wmi_mgmt_rx_ext_info** %11, align 8
  %114 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %115 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %114, i32 0, i32 0
  %116 = load %struct.wmi_mgmt_rx_ext_info*, %struct.wmi_mgmt_rx_ext_info** %11, align 8
  %117 = call i32 @memcpy(i32* %115, %struct.wmi_mgmt_rx_ext_info* %116, i32 4)
  br label %118

118:                                              ; preds = %102, %94
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @skb_trim(%struct.sk_buff* %119, i64 %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %91, %45
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @test_bit(i32, i32) #1

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
