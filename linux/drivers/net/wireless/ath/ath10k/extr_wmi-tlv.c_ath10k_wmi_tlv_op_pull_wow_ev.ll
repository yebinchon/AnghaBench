; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_wow_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_wow_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_wow_ev_arg = type { i8*, i8*, i8*, i8* }
%struct.wmi_tlv_wow_event_info = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_WOW_EVENT_INFO = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_wow_ev_arg*)* @ath10k_wmi_tlv_op_pull_wow_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_wow_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_wow_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_wow_ev_arg*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.wmi_tlv_wow_event_info*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_wow_ev_arg* %2, %struct.wmi_wow_ev_arg** %7, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %11, i32 %14, i32 %17, i32 %18)
  store i8** %19, i8*** %8, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = call i64 @IS_ERR(i8** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i8**, i8*** %8, align 8
  %25 = call i32 @PTR_ERR(i8** %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load i8**, i8*** %8, align 8
  %32 = load i64, i64* @WMI_TLV_TAG_STRUCT_WOW_EVENT_INFO, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.wmi_tlv_wow_event_info*
  store %struct.wmi_tlv_wow_event_info* %35, %struct.wmi_tlv_wow_event_info** %9, align 8
  %36 = load %struct.wmi_tlv_wow_event_info*, %struct.wmi_tlv_wow_event_info** %9, align 8
  %37 = icmp ne %struct.wmi_tlv_wow_event_info* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i8**, i8*** %8, align 8
  %40 = call i32 @kfree(i8** %39)
  %41 = load i32, i32* @EPROTO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %70

43:                                               ; preds = %30
  %44 = load %struct.wmi_tlv_wow_event_info*, %struct.wmi_tlv_wow_event_info** %9, align 8
  %45 = getelementptr inbounds %struct.wmi_tlv_wow_event_info, %struct.wmi_tlv_wow_event_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @__le32_to_cpu(i32 %46)
  %48 = load %struct.wmi_wow_ev_arg*, %struct.wmi_wow_ev_arg** %7, align 8
  %49 = getelementptr inbounds %struct.wmi_wow_ev_arg, %struct.wmi_wow_ev_arg* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.wmi_tlv_wow_event_info*, %struct.wmi_tlv_wow_event_info** %9, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv_wow_event_info, %struct.wmi_tlv_wow_event_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @__le32_to_cpu(i32 %52)
  %54 = load %struct.wmi_wow_ev_arg*, %struct.wmi_wow_ev_arg** %7, align 8
  %55 = getelementptr inbounds %struct.wmi_wow_ev_arg, %struct.wmi_wow_ev_arg* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.wmi_tlv_wow_event_info*, %struct.wmi_tlv_wow_event_info** %9, align 8
  %57 = getelementptr inbounds %struct.wmi_tlv_wow_event_info, %struct.wmi_tlv_wow_event_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @__le32_to_cpu(i32 %58)
  %60 = load %struct.wmi_wow_ev_arg*, %struct.wmi_wow_ev_arg** %7, align 8
  %61 = getelementptr inbounds %struct.wmi_wow_ev_arg, %struct.wmi_wow_ev_arg* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.wmi_tlv_wow_event_info*, %struct.wmi_tlv_wow_event_info** %9, align 8
  %63 = getelementptr inbounds %struct.wmi_tlv_wow_event_info, %struct.wmi_tlv_wow_event_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @__le32_to_cpu(i32 %64)
  %66 = load %struct.wmi_wow_ev_arg*, %struct.wmi_wow_ev_arg** %7, align 8
  %67 = getelementptr inbounds %struct.wmi_wow_ev_arg, %struct.wmi_wow_ev_arg* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i8**, i8*** %8, align 8
  %69 = call i32 @kfree(i8** %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %43, %38, %23
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
