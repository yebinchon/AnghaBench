; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.sk_buff = type { i32 }
%struct.htc_setup_comp_ext_msg = type { i32 }
%struct.htc_packet = type { %struct.sk_buff* }

@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_SETUP_COMPLETE_EX_ID = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"HTC using TX credit flow control\0A\00", align 1
@ENDPOINT_0 = common dso_local global i32 0, align 4
@HTC_SERVICE_TX_PACKET_TAG = common dso_local global i32 0, align 4
@HTC_OP_STATE_SETUP_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @ath6kl_htc_pipe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_pipe_start(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htc_setup_comp_ext_msg*, align 8
  %6 = alloca %struct.htc_packet*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  %7 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %8 = call i32 @htc_config_target_hif_pipe(%struct.htc_target* %7)
  %9 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %10 = call %struct.htc_packet* @htc_alloc_txctrl_packet(%struct.htc_target* %9)
  store %struct.htc_packet* %10, %struct.htc_packet** %6, align 8
  %11 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %12 = icmp eq %struct.htc_packet* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @WARN_ON_ONCE(i32 1)
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %19 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %18, i32 0, i32 0
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.htc_setup_comp_ext_msg* @skb_put(%struct.sk_buff* %21, i32 4)
  store %struct.htc_setup_comp_ext_msg* %22, %struct.htc_setup_comp_ext_msg** %5, align 8
  %23 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %5, align 8
  %24 = call i32 @memset(%struct.htc_setup_comp_ext_msg* %23, i32 0, i32 4)
  %25 = load i32, i32* @HTC_MSG_SETUP_COMPLETE_EX_ID, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %5, align 8
  %28 = getelementptr inbounds %struct.htc_setup_comp_ext_msg, %struct.htc_setup_comp_ext_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %30 = call i32 @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %32 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %5, align 8
  %33 = bitcast %struct.htc_setup_comp_ext_msg* %32 to i32*
  %34 = load i32, i32* @ENDPOINT_0, align 4
  %35 = load i32, i32* @HTC_SERVICE_TX_PACKET_TAG, align 4
  %36 = call i32 @set_htc_pkt_info(%struct.htc_packet* %31, i32* null, i32* %33, i32 4, i32 %34, i32 %35)
  %37 = load i32, i32* @HTC_OP_STATE_SETUP_COMPLETE, align 4
  %38 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %39 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %43 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %44 = call i32 @ath6kl_htc_pipe_tx(%struct.htc_target* %42, %struct.htc_packet* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %17, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @htc_config_target_hif_pipe(%struct.htc_target*) #1

declare dso_local %struct.htc_packet* @htc_alloc_txctrl_packet(%struct.htc_target*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.htc_setup_comp_ext_msg* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.htc_setup_comp_ext_msg*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i32 @set_htc_pkt_info(%struct.htc_packet*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ath6kl_htc_pipe_tx(%struct.htc_target*, %struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
