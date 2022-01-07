; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pdev_set_wmm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pdev_set_wmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_wmm_params_all_arg = type { i32, i32, i32, i32 }
%struct.wmi_tlv_pdev_set_wmm_cmd = type { i32 }
%struct.wmi_wmm_params = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_PDEV_SET_WMM_PARAMS_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"wmi tlv pdev set wmm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_wmm_params_all_arg*)* @ath10k_wmi_tlv_op_gen_pdev_set_wmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_pdev_set_wmm(%struct.ath10k* %0, %struct.wmi_wmm_params_all_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_wmm_params_all_arg*, align 8
  %6 = alloca %struct.wmi_tlv_pdev_set_wmm_cmd*, align 8
  %7 = alloca %struct.wmi_wmm_params*, align 8
  %8 = alloca %struct.wmi_tlv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_wmm_params_all_arg* %1, %struct.wmi_wmm_params_all_arg** %5, align 8
  store i64 140, i64* %10, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = load i64, i64* %10, align 8
  %14 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %12, i64 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %3, align 8
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %27, %struct.wmi_tlv** %8, align 8
  %28 = load i32, i32* @WMI_TLV_TAG_STRUCT_PDEV_SET_WMM_PARAMS_CMD, align 4
  %29 = call i8* @__cpu_to_le16(i32 %28)
  %30 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %31 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = call i8* @__cpu_to_le16(i32 4)
  %33 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %34 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wmi_tlv*, %struct.wmi_tlv** %8, align 8
  %36 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.wmi_tlv_pdev_set_wmm_cmd*
  store %struct.wmi_tlv_pdev_set_wmm_cmd* %39, %struct.wmi_tlv_pdev_set_wmm_cmd** %6, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr i8, i8* %40, i64 24
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr i8, i8* %42, i64 4
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %5, align 8
  %46 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %45, i32 0, i32 3
  %47 = call i8* @ath10k_wmi_tlv_put_wmm(i8* %44, i32* %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %5, align 8
  %50 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %49, i32 0, i32 2
  %51 = call i8* @ath10k_wmi_tlv_put_wmm(i8* %48, i32* %50)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %5, align 8
  %54 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %53, i32 0, i32 1
  %55 = call i8* @ath10k_wmi_tlv_put_wmm(i8* %52, i32* %54)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %5, align 8
  %58 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %57, i32 0, i32 0
  %59 = call i8* @ath10k_wmi_tlv_put_wmm(i8* %56, i32* %58)
  store i8* %59, i8** %11, align 8
  %60 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %61 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %62 = call i32 @ath10k_dbg(%struct.ath10k* %60, i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %3, align 8
  br label %64

64:                                               ; preds = %21, %17
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %65
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @ath10k_wmi_tlv_put_wmm(i8*, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
