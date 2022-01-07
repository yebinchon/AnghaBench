; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_peer_delete_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_peer_delete_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_peer_delete_resp_ev_arg = type { i32, i32 }
%struct.wmi_tlv = type { i64 }

@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vdev id %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"peer mac addr %pM\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"wmi tlv peer delete response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_tlv_event_peer_delete_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_event_peer_delete_resp(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_peer_delete_resp_ev_arg*, align 8
  %6 = alloca %struct.wmi_tlv*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %10, %struct.wmi_tlv** %6, align 8
  %11 = load %struct.wmi_tlv*, %struct.wmi_tlv** %6, align 8
  %12 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.wmi_peer_delete_resp_ev_arg*
  store %struct.wmi_peer_delete_resp_ev_arg* %14, %struct.wmi_peer_delete_resp_ev_arg** %5, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %17 = load %struct.wmi_peer_delete_resp_ev_arg*, %struct.wmi_peer_delete_resp_ev_arg** %5, align 8
  %18 = getelementptr inbounds %struct.wmi_peer_delete_resp_ev_arg, %struct.wmi_peer_delete_resp_ev_arg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %23 = load %struct.wmi_peer_delete_resp_ev_arg*, %struct.wmi_peer_delete_resp_ev_arg** %5, align 8
  %24 = getelementptr inbounds %struct.wmi_peer_delete_resp_ev_arg, %struct.wmi_peer_delete_resp_ev_arg* %23, i32 0, i32 0
  %25 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %21, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %28 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %26, i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = call i32 @complete(i32* %30)
  ret i32 0
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
