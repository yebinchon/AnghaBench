; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_put_wmm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_put_wmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_wmm_params_arg = type { i32 }
%struct.wmi_wmm_params = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@WMI_TLV_TAG_STRUCT_WMM_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.wmi_wmm_params_arg*)* @ath10k_wmi_tlv_put_wmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ath10k_wmi_tlv_put_wmm(i8* %0, %struct.wmi_wmm_params_arg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wmi_wmm_params_arg*, align 8
  %5 = alloca %struct.wmi_wmm_params*, align 8
  %6 = alloca %struct.wmi_tlv*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wmi_wmm_params_arg* %1, %struct.wmi_wmm_params_arg** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %8, %struct.wmi_tlv** %6, align 8
  %9 = load i32, i32* @WMI_TLV_TAG_STRUCT_WMM_PARAMS, align 4
  %10 = call i8* @__cpu_to_le16(i32 %9)
  %11 = load %struct.wmi_tlv*, %struct.wmi_tlv** %6, align 8
  %12 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = call i8* @__cpu_to_le16(i32 4)
  %14 = load %struct.wmi_tlv*, %struct.wmi_tlv** %6, align 8
  %15 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.wmi_tlv*, %struct.wmi_tlv** %6, align 8
  %17 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.wmi_wmm_params*
  store %struct.wmi_wmm_params* %20, %struct.wmi_wmm_params** %5, align 8
  %21 = load %struct.wmi_wmm_params*, %struct.wmi_wmm_params** %5, align 8
  %22 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %4, align 8
  %23 = call i32 @ath10k_wmi_set_wmm_param(%struct.wmi_wmm_params* %21, %struct.wmi_wmm_params_arg* %22)
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr i8, i8* %24, i64 24
  %26 = getelementptr i8, i8* %25, i64 4
  ret i8* %26
}

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @ath10k_wmi_set_wmm_param(%struct.wmi_wmm_params*, %struct.wmi_wmm_params_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
