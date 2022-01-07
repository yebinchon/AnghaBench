; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_peer_kick_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_pull_peer_kick_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_peer_kick_ev_arg = type { i32 }
%struct.wmi_peer_sta_kickout_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_PEER_STA_KICKOUT_EVENT = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)* @ath10k_wmi_tlv_op_pull_peer_kick_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_op_pull_peer_kick_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_peer_kick_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_peer_kick_ev_arg*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.wmi_peer_sta_kickout_event*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_peer_kick_ev_arg* %2, %struct.wmi_peer_kick_ev_arg** %7, align 8
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
  br label %52

30:                                               ; preds = %3
  %31 = load i8**, i8*** %8, align 8
  %32 = load i64, i64* @WMI_TLV_TAG_STRUCT_PEER_STA_KICKOUT_EVENT, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.wmi_peer_sta_kickout_event*
  store %struct.wmi_peer_sta_kickout_event* %35, %struct.wmi_peer_sta_kickout_event** %9, align 8
  %36 = load %struct.wmi_peer_sta_kickout_event*, %struct.wmi_peer_sta_kickout_event** %9, align 8
  %37 = icmp ne %struct.wmi_peer_sta_kickout_event* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i8**, i8*** %8, align 8
  %40 = call i32 @kfree(i8** %39)
  %41 = load i32, i32* @EPROTO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %30
  %44 = load %struct.wmi_peer_sta_kickout_event*, %struct.wmi_peer_sta_kickout_event** %9, align 8
  %45 = getelementptr inbounds %struct.wmi_peer_sta_kickout_event, %struct.wmi_peer_sta_kickout_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wmi_peer_kick_ev_arg*, %struct.wmi_peer_kick_ev_arg** %7, align 8
  %49 = getelementptr inbounds %struct.wmi_peer_kick_ev_arg, %struct.wmi_peer_kick_ev_arg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i8**, i8*** %8, align 8
  %51 = call i32 @kfree(i8** %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %38, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
