; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_setup_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_setup_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i64, i64 }
%struct.htc_packet = type { i32*, i64 }
%struct.htc_setup_comp_ext_msg = type { i64, i8*, i32 }
%struct.htc_setup_comp_msg = type { i64, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HTC_VERSION_2P1 = common dso_local global i64 0, align 8
@HTC_MSG_SETUP_COMPLETE_EX_ID = common dso_local global i32 0, align 4
@HTC_SETUP_COMP_FLG_RX_BNDL_EN = common dso_local global i32 0, align 4
@ENDPOINT_0 = common dso_local global i32 0, align 4
@HTC_SERVICE_TX_PACKET_TAG = common dso_local global i32 0, align 4
@HTC_MSG_SETUP_COMPLETE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @htc_setup_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_setup_tx_complete(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.htc_setup_comp_ext_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.htc_setup_comp_msg*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* null, %struct.htc_packet** %4, align 8
  %9 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %10 = call %struct.htc_packet* @htc_get_control_buf(%struct.htc_target* %9, i32 1)
  store %struct.htc_packet* %10, %struct.htc_packet** %4, align 8
  %11 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %12 = icmp ne %struct.htc_packet* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %18 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HTC_VERSION_2P1, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %23 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %24 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.htc_setup_comp_ext_msg*
  store %struct.htc_setup_comp_ext_msg* %26, %struct.htc_setup_comp_ext_msg** %6, align 8
  %27 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %6, align 8
  %28 = bitcast %struct.htc_setup_comp_ext_msg* %27 to %struct.htc_setup_comp_msg*
  %29 = call i32 @memset(%struct.htc_setup_comp_msg* %28, i32 0, i32 24)
  %30 = load i32, i32* @HTC_MSG_SETUP_COMPLETE_EX_ID, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %6, align 8
  %33 = getelementptr inbounds %struct.htc_setup_comp_ext_msg, %struct.htc_setup_comp_ext_msg* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %35 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load i32, i32* @HTC_SETUP_COMP_FLG_RX_BNDL_EN, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %43 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %6, align 8
  %46 = getelementptr inbounds %struct.htc_setup_comp_ext_msg, %struct.htc_setup_comp_ext_msg* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %22
  %48 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %6, align 8
  %49 = getelementptr inbounds %struct.htc_setup_comp_ext_msg, %struct.htc_setup_comp_ext_msg* %48, i32 0, i32 2
  %50 = call i32 @memcpy(i32* %49, i32* %7, i32 4)
  %51 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %52 = load %struct.htc_setup_comp_ext_msg*, %struct.htc_setup_comp_ext_msg** %6, align 8
  %53 = bitcast %struct.htc_setup_comp_ext_msg* %52 to i32*
  %54 = load i32, i32* @ENDPOINT_0, align 4
  %55 = load i32, i32* @HTC_SERVICE_TX_PACKET_TAG, align 4
  %56 = call i32 @set_htc_pkt_info(%struct.htc_packet* %51, i32* null, i32* %53, i32 24, i32 %54, i32 %55)
  br label %74

57:                                               ; preds = %16
  %58 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %59 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.htc_setup_comp_msg*
  store %struct.htc_setup_comp_msg* %61, %struct.htc_setup_comp_msg** %8, align 8
  %62 = load %struct.htc_setup_comp_msg*, %struct.htc_setup_comp_msg** %8, align 8
  %63 = call i32 @memset(%struct.htc_setup_comp_msg* %62, i32 0, i32 24)
  %64 = load i32, i32* @HTC_MSG_SETUP_COMPLETE_ID, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.htc_setup_comp_msg*, %struct.htc_setup_comp_msg** %8, align 8
  %67 = getelementptr inbounds %struct.htc_setup_comp_msg, %struct.htc_setup_comp_msg* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %69 = load %struct.htc_setup_comp_msg*, %struct.htc_setup_comp_msg** %8, align 8
  %70 = bitcast %struct.htc_setup_comp_msg* %69 to i32*
  %71 = load i32, i32* @ENDPOINT_0, align 4
  %72 = load i32, i32* @HTC_SERVICE_TX_PACKET_TAG, align 4
  %73 = call i32 @set_htc_pkt_info(%struct.htc_packet* %68, i32* null, i32* %70, i32 24, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %57, %47
  %75 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %76 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %78 = call i32 @ath6kl_htc_tx_prep_pkt(%struct.htc_packet* %77, i32 0, i32 0, i32 0)
  %79 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %80 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %81 = call i32 @ath6kl_htc_tx_issue(%struct.htc_target* %79, %struct.htc_packet* %80)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %83 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %84 = call i32 @htc_reclaim_txctrl_buf(%struct.htc_target* %82, %struct.htc_packet* %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %74, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.htc_packet* @htc_get_control_buf(%struct.htc_target*, i32) #1

declare dso_local i32 @memset(%struct.htc_setup_comp_msg*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_htc_pkt_info(%struct.htc_packet*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ath6kl_htc_tx_prep_pkt(%struct.htc_packet*, i32, i32, i32) #1

declare dso_local i32 @ath6kl_htc_tx_issue(%struct.htc_target*, %struct.htc_packet*) #1

declare dso_local i32 @htc_reclaim_txctrl_buf(%struct.htc_target*, %struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
