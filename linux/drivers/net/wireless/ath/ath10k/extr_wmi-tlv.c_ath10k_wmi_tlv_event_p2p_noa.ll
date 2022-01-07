; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_p2p_noa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_p2p_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_tlv_p2p_noa_ev = type { i32 }
%struct.wmi_p2p_noa_info = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_P2P_NOA_EVENT = common dso_local global i64 0, align 8
@WMI_TLV_TAG_STRUCT_P2P_NOA_INFO = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"wmi tlv p2p noa vdev_id %i descriptors %hhu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_tlv_event_p2p_noa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_event_p2p_noa(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.wmi_tlv_p2p_noa_ev*, align 8
  %8 = alloca %struct.wmi_p2p_noa_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %11, i32 %14, i32 %17, i32 %18)
  store i8** %19, i8*** %6, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = call i64 @IS_ERR(i8** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i8**, i8*** %6, align 8
  %25 = call i32 @PTR_ERR(i8** %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %2
  %31 = load i8**, i8*** %6, align 8
  %32 = load i64, i64* @WMI_TLV_TAG_STRUCT_P2P_NOA_EVENT, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.wmi_tlv_p2p_noa_ev*
  store %struct.wmi_tlv_p2p_noa_ev* %35, %struct.wmi_tlv_p2p_noa_ev** %7, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i64, i64* @WMI_TLV_TAG_STRUCT_P2P_NOA_INFO, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.wmi_p2p_noa_info*
  store %struct.wmi_p2p_noa_info* %40, %struct.wmi_p2p_noa_info** %8, align 8
  %41 = load %struct.wmi_tlv_p2p_noa_ev*, %struct.wmi_tlv_p2p_noa_ev** %7, align 8
  %42 = icmp ne %struct.wmi_tlv_p2p_noa_ev* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %8, align 8
  %45 = icmp ne %struct.wmi_p2p_noa_info* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43, %30
  %47 = load i8**, i8*** %6, align 8
  %48 = call i32 @kfree(i8** %47)
  %49 = load i32, i32* @EPROTO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %43
  %52 = load %struct.wmi_tlv_p2p_noa_ev*, %struct.wmi_tlv_p2p_noa_ev** %7, align 8
  %53 = getelementptr inbounds %struct.wmi_tlv_p2p_noa_ev, %struct.wmi_tlv_p2p_noa_ev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__le32_to_cpu(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %57 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %8, align 8
  %60 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ath10k_dbg(%struct.ath10k* %56, i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %8, align 8
  %66 = call i32 @ath10k_p2p_noa_update_by_vdev_id(%struct.ath10k* %63, i32 %64, %struct.wmi_p2p_noa_info* %65)
  %67 = load i8**, i8*** %6, align 8
  %68 = call i32 @kfree(i8** %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %51, %46, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_p2p_noa_update_by_vdev_id(%struct.ath10k*, i32, %struct.wmi_p2p_noa_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
