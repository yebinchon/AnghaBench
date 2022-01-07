; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_wmm_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_wmm_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_wmm_params_all_arg = type { i32, i32, i32, i32 }
%struct.wmi_tlv_vdev_set_wmm_cmd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_VDEV_SET_WMM_PARAMS_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wmi tlv vdev wmm conf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, %struct.wmi_wmm_params_all_arg*)* @ath10k_wmi_tlv_op_gen_vdev_wmm_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_vdev_wmm_conf(%struct.ath10k* %0, i32 %1, %struct.wmi_wmm_params_all_arg* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_wmm_params_all_arg*, align 8
  %8 = alloca %struct.wmi_tlv_vdev_set_wmm_cmd*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wmi_wmm_params_all_arg* %2, %struct.wmi_wmm_params_all_arg** %7, align 8
  store i64 40, i64* %11, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %14 = load i64, i64* %11, align 8
  %15 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %13, i64 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  br label %81

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = bitcast i8* %27 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %28, %struct.wmi_tlv** %9, align 8
  %29 = load i32, i32* @WMI_TLV_TAG_STRUCT_VDEV_SET_WMM_PARAMS_CMD, align 4
  %30 = call i8* @__cpu_to_le16(i32 %29)
  %31 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %32 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = call i8* @__cpu_to_le16(i32 16)
  %34 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %35 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %37 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to %struct.wmi_tlv_vdev_set_wmm_cmd*
  store %struct.wmi_tlv_vdev_set_wmm_cmd* %40, %struct.wmi_tlv_vdev_set_wmm_cmd** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @__cpu_to_le32(i32 %41)
  %43 = load %struct.wmi_tlv_vdev_set_wmm_cmd*, %struct.wmi_tlv_vdev_set_wmm_cmd** %8, align 8
  %44 = getelementptr inbounds %struct.wmi_tlv_vdev_set_wmm_cmd, %struct.wmi_tlv_vdev_set_wmm_cmd* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.wmi_tlv_vdev_set_wmm_cmd*, %struct.wmi_tlv_vdev_set_wmm_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.wmi_tlv_vdev_set_wmm_cmd, %struct.wmi_tlv_vdev_set_wmm_cmd* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %7, align 8
  %51 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %50, i32 0, i32 3
  %52 = call i32 @ath10k_wmi_set_wmm_param(i32* %49, i32* %51)
  %53 = load %struct.wmi_tlv_vdev_set_wmm_cmd*, %struct.wmi_tlv_vdev_set_wmm_cmd** %8, align 8
  %54 = getelementptr inbounds %struct.wmi_tlv_vdev_set_wmm_cmd, %struct.wmi_tlv_vdev_set_wmm_cmd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %7, align 8
  %59 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %58, i32 0, i32 2
  %60 = call i32 @ath10k_wmi_set_wmm_param(i32* %57, i32* %59)
  %61 = load %struct.wmi_tlv_vdev_set_wmm_cmd*, %struct.wmi_tlv_vdev_set_wmm_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.wmi_tlv_vdev_set_wmm_cmd, %struct.wmi_tlv_vdev_set_wmm_cmd* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %7, align 8
  %67 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %66, i32 0, i32 1
  %68 = call i32 @ath10k_wmi_set_wmm_param(i32* %65, i32* %67)
  %69 = load %struct.wmi_tlv_vdev_set_wmm_cmd*, %struct.wmi_tlv_vdev_set_wmm_cmd** %8, align 8
  %70 = getelementptr inbounds %struct.wmi_tlv_vdev_set_wmm_cmd, %struct.wmi_tlv_vdev_set_wmm_cmd* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.wmi_wmm_params_all_arg*, %struct.wmi_wmm_params_all_arg** %7, align 8
  %75 = getelementptr inbounds %struct.wmi_wmm_params_all_arg, %struct.wmi_wmm_params_all_arg* %74, i32 0, i32 0
  %76 = call i32 @ath10k_wmi_set_wmm_param(i32* %73, i32* %75)
  %77 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %78 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %79 = call i32 @ath10k_dbg(%struct.ath10k* %77, i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %4, align 8
  br label %81

81:                                               ; preds = %22, %18
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %82
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_wmi_set_wmm_param(i32*, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
