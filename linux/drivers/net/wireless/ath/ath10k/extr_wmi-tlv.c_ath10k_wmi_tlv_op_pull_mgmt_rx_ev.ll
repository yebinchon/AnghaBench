; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_mgmt_rx_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_mgmt_rx_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.wmi_mgmt_rx_ev_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.wmi_tlv_mgmt_rx_ev = type { i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_MGMT_RX_HDR = common dso_local global i64 0, align 8
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_mgmt_rx_ev_arg*)* @ath10k_wmi_tlv_op_pull_mgmt_rx_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_mgmt_rx_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_mgmt_rx_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_mgmt_rx_ev_arg*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.wmi_tlv_mgmt_rx_ev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_mgmt_rx_ev_arg* %2, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %13, i32* %16, i32 %19, i32 %20)
  store i8** %21, i8*** %8, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = call i64 @IS_ERR(i8** %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i8**, i8*** %8, align 8
  %27 = call i32 @PTR_ERR(i8** %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @ath10k_warn(%struct.ath10k* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %139

32:                                               ; preds = %3
  %33 = load i8**, i8*** %8, align 8
  %34 = load i64, i64* @WMI_TLV_TAG_STRUCT_MGMT_RX_HDR, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.wmi_tlv_mgmt_rx_ev*
  store %struct.wmi_tlv_mgmt_rx_ev* %37, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = load i64, i64* @WMI_TLV_TAG_ARRAY_BYTE, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %10, align 8
  %43 = load %struct.wmi_tlv_mgmt_rx_ev*, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %44 = icmp ne %struct.wmi_tlv_mgmt_rx_ev* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %32
  %49 = load i8**, i8*** %8, align 8
  %50 = call i32 @kfree(i8** %49)
  %51 = load i32, i32* @EPROTO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %139

53:                                               ; preds = %45
  %54 = load %struct.wmi_tlv_mgmt_rx_ev*, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %55 = getelementptr inbounds %struct.wmi_tlv_mgmt_rx_ev, %struct.wmi_tlv_mgmt_rx_ev* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %58 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.wmi_tlv_mgmt_rx_ev*, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %60 = getelementptr inbounds %struct.wmi_tlv_mgmt_rx_ev, %struct.wmi_tlv_mgmt_rx_ev* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %63 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.wmi_tlv_mgmt_rx_ev*, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %65 = getelementptr inbounds %struct.wmi_tlv_mgmt_rx_ev, %struct.wmi_tlv_mgmt_rx_ev* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %68 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.wmi_tlv_mgmt_rx_ev*, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %70 = getelementptr inbounds %struct.wmi_tlv_mgmt_rx_ev, %struct.wmi_tlv_mgmt_rx_ev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %73 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.wmi_tlv_mgmt_rx_ev*, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %75 = getelementptr inbounds %struct.wmi_tlv_mgmt_rx_ev, %struct.wmi_tlv_mgmt_rx_ev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %78 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.wmi_tlv_mgmt_rx_ev*, %struct.wmi_tlv_mgmt_rx_ev** %9, align 8
  %80 = getelementptr inbounds %struct.wmi_tlv_mgmt_rx_ev, %struct.wmi_tlv_mgmt_rx_ev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %83 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.wmi_mgmt_rx_ev_arg*, %struct.wmi_mgmt_rx_ev_arg** %7, align 8
  %85 = getelementptr inbounds %struct.wmi_mgmt_rx_ev_arg, %struct.wmi_mgmt_rx_ev_arg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__le32_to_cpu(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = ptrtoint i32* %92 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = icmp slt i64 %91, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %53
  %105 = load i8**, i8*** %8, align 8
  %106 = call i32 @kfree(i8** %105)
  %107 = load i32, i32* @EPROTO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %139

109:                                              ; preds = %53
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = call i32 @skb_trim(%struct.sk_buff* %110, i32 0)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = ptrtoint i32* %113 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32 @skb_put(%struct.sk_buff* %112, i32 %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = ptrtoint i32* %124 to i64
  %129 = ptrtoint i32* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @skb_pull(%struct.sk_buff* %123, i32 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @skb_put(%struct.sk_buff* %134, i32 %135)
  %137 = load i8**, i8*** %8, align 8
  %138 = call i32 @kfree(i8** %137)
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %109, %104, %48, %25
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
