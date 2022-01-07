; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_update_fw_tdls_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_update_fw_tdls_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_tdls_set_state_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@WMI_SERVICE_TDLS_UAPSD_BUFFER_STA = common dso_local global i32 0, align 4
@WMI_TLV_TDLS_BUFFER_STA_EN = common dso_local global i32 0, align 4
@WMI_TDLS_ENABLE_ACTIVE = common dso_local global i32 0, align 4
@WMI_TDLS_ENABLE_ACTIVE_EXTERNAL_CONTROL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_TDLS_SET_STATE_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"wmi tlv update fw tdls state %d for vdev %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32)* @ath10k_wmi_tlv_op_gen_update_fw_tdls_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_update_fw_tdls_state(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_tdls_set_state_cmd*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @WMI_SERVICE_TDLS_UAPSD_BUFFER_STA, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %14, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @WMI_TLV_TDLS_BUFFER_STA_EN, align 4
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @WMI_TDLS_ENABLE_ACTIVE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @WMI_TDLS_ENABLE_ACTIVE_EXTERNAL_CONTROL, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %25
  store i64 128, i64* %12, align 8
  %32 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %32, i64 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.sk_buff* @ERR_PTR(i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %4, align 8
  br label %112

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = bitcast i8* %46 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %47, %struct.wmi_tlv** %9, align 8
  %48 = load i32, i32* @WMI_TLV_TAG_STRUCT_TDLS_SET_STATE_CMD, align 4
  %49 = call i8* @__cpu_to_le16(i32 %48)
  %50 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = call i8* @__cpu_to_le16(i32 104)
  %53 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %54 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %56 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to %struct.wmi_tdls_set_state_cmd*
  store %struct.wmi_tdls_set_state_cmd* %59, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i8* @__cpu_to_le32(i32 %60)
  %62 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %62, i32 0, i32 12
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @__cpu_to_le32(i32 %64)
  %66 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %66, i32 0, i32 11
  store i8* %65, i8** %67, align 8
  %68 = call i8* @__cpu_to_le32(i32 5000)
  %69 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %70 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = call i8* @__cpu_to_le32(i32 100)
  %72 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %73 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %72, i32 0, i32 9
  store i8* %71, i8** %73, align 8
  %74 = call i8* @__cpu_to_le32(i32 5)
  %75 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %76 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = call i8* @__cpu_to_le32(i32 -75)
  %78 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %79 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = call i8* @__cpu_to_le32(i32 -20)
  %81 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %82 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i8* @__cpu_to_le32(i32 %83)
  %85 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %86 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = call i8* @__cpu_to_le32(i32 2)
  %88 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %89 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = call i8* @__cpu_to_le32(i32 5000)
  %91 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %92 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = call i8* @__cpu_to_le32(i32 15)
  %94 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %95 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = call i8* @__cpu_to_le32(i32 0)
  %97 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %98 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = call i8* @__cpu_to_le32(i32 10)
  %100 = load %struct.wmi_tdls_set_state_cmd*, %struct.wmi_tdls_set_state_cmd** %8, align 8
  %101 = getelementptr inbounds %struct.wmi_tdls_set_state_cmd, %struct.wmi_tdls_set_state_cmd* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr i8, i8* %102, i64 24
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr i8, i8* %104, i64 104
  store i8* %105, i8** %11, align 8
  %106 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %107 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @ath10k_dbg(%struct.ath10k* %106, i32 %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %111, %struct.sk_buff** %4, align 8
  br label %112

112:                                              ; preds = %41, %37
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %113
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
