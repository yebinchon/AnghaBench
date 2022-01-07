; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_stop_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_stop_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_stop_scan_arg = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wmi_stop_scan_cmd = type { i8*, i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@WMI_SCAN_STOP_ONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@WMI_HOST_SCAN_REQ_ID_PREFIX = common dso_local global i32 0, align 4
@WMI_HOST_SCAN_REQUESTOR_ID_PREFIX = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_STOP_SCAN_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"wmi tlv stop scan\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_stop_scan_arg*)* @ath10k_wmi_tlv_op_gen_stop_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_stop_scan(%struct.ath10k* %0, %struct.wmi_stop_scan_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_stop_scan_arg*, align 8
  %6 = alloca %struct.wmi_stop_scan_cmd*, align 8
  %7 = alloca %struct.wmi_tlv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_stop_scan_arg* %1, %struct.wmi_stop_scan_arg** %5, align 8
  %11 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %12 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 4095
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.sk_buff* @ERR_PTR(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %3, align 8
  br label %101

19:                                               ; preds = %2
  %20 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %21 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WMI_SCAN_STOP_ONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %27 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 4095
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.sk_buff* @ERR_PTR(i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %3, align 8
  br label %101

35:                                               ; preds = %25, %19
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %36, i32 56)
  store %struct.sk_buff* %37, %struct.sk_buff** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.sk_buff* @ERR_PTR(i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  br label %101

44:                                               ; preds = %35
  %45 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %46 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @WMI_HOST_SCAN_REQ_ID_PREFIX, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %53 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @WMI_HOST_SCAN_REQUESTOR_ID_PREFIX, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = bitcast i8* %61 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %62, %struct.wmi_tlv** %7, align 8
  %63 = load i32, i32* @WMI_TLV_TAG_STRUCT_STOP_SCAN_CMD, align 4
  %64 = call i8* @__cpu_to_le16(i32 %63)
  %65 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %66 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = call i8* @__cpu_to_le16(i32 32)
  %68 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %69 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %71 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = bitcast i8* %73 to %struct.wmi_stop_scan_cmd*
  store %struct.wmi_stop_scan_cmd* %74, %struct.wmi_stop_scan_cmd** %6, align 8
  %75 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %76 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i8* @__cpu_to_le32(i32 %78)
  %80 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %83 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @__cpu_to_le32(i32 %85)
  %87 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %88 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @__cpu_to_le32(i32 %89)
  %91 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i8* @__cpu_to_le32(i32 %93)
  %95 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %98 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %99 = call i32 @ath10k_dbg(%struct.ath10k* %97, i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %3, align 8
  br label %101

101:                                              ; preds = %44, %40, %31, %15
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %102
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
