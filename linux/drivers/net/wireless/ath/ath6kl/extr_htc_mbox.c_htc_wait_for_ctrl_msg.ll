; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_wait_for_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_wait_for_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_packet = type { i64, i64, i64, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.htc_target = type { i32 }
%struct.htc_frame_hdr = type { i64, i32 }

@HTC_TARGET_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"htc rx wait ctrl look_ahead 0x%X\0A\00", align 1
@ENDPOINT_0 = common dso_local global i64 0, align 8
@HTC_HDR_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"htc_wait_for_ctrl_msg, ath6kl_htc_rx_process_hdr failed (status = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.htc_packet* (%struct.htc_target*)* @htc_wait_for_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.htc_packet* @htc_wait_for_ctrl_msg(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_packet*, align 8
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  %5 = alloca %struct.htc_frame_hdr*, align 8
  %6 = alloca i64, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* null, %struct.htc_packet** %4, align 8
  %7 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %8 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HTC_TARGET_RESPONSE_TIMEOUT, align 4
  %11 = call i64 @ath6kl_hif_poll_mboxmsg_rx(i32 %9, i64* %6, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.htc_packet* null, %struct.htc_packet** %2, align 8
  br label %108

14:                                               ; preds = %1
  %15 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @ath6kl_dbg(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = bitcast i64* %6 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %18, %struct.htc_frame_hdr** %5, align 8
  %19 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ENDPOINT_0, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store %struct.htc_packet* null, %struct.htc_packet** %2, align 8
  br label %108

25:                                               ; preds = %14
  %26 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %27 = call %struct.htc_packet* @htc_get_control_buf(%struct.htc_target* %26, i32 0)
  store %struct.htc_packet* %27, %struct.htc_packet** %4, align 8
  %28 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %29 = icmp ne %struct.htc_packet* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.htc_packet* null, %struct.htc_packet** %2, align 8
  br label %108

31:                                               ; preds = %25
  %32 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %33 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %38 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @le16_to_cpu(i32 %43)
  %45 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %48 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %50 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %53 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %31
  br label %98

57:                                               ; preds = %31
  %58 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %59 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %58, i32 0, i32 5
  store i32* null, i32** %59, align 8
  %60 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %61 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %62 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %63 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @ath6kl_htc_rx_packet(%struct.htc_target* %60, %struct.htc_packet* %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %98

68:                                               ; preds = %57
  %69 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %70 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %73 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %76 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %79 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @trace_ath6kl_htc_rx(i64 %71, i32 %74, i32 %77, i64 %80)
  %82 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %83 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %84 = call i64 @ath6kl_htc_rx_process_hdr(%struct.htc_target* %82, %struct.htc_packet* %83, i32* null, i32* null)
  %85 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %86 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %88 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %68
  %92 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %93 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @ath6kl_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %94)
  br label %98

96:                                               ; preds = %68
  %97 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  store %struct.htc_packet* %97, %struct.htc_packet** %2, align 8
  br label %108

98:                                               ; preds = %91, %67, %56
  %99 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %100 = icmp ne %struct.htc_packet* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %103 = call i32 @htc_rxpkt_reset(%struct.htc_packet* %102)
  %104 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %105 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %106 = call i32 @reclaim_rx_ctrl_buf(%struct.htc_target* %104, %struct.htc_packet* %105)
  br label %107

107:                                              ; preds = %101, %98
  store %struct.htc_packet* null, %struct.htc_packet** %2, align 8
  br label %108

108:                                              ; preds = %107, %96, %30, %24, %13
  %109 = load %struct.htc_packet*, %struct.htc_packet** %2, align 8
  ret %struct.htc_packet* %109
}

declare dso_local i64 @ath6kl_hif_poll_mboxmsg_rx(i32, i64*, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64) #1

declare dso_local %struct.htc_packet* @htc_get_control_buf(%struct.htc_target*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ath6kl_htc_rx_packet(%struct.htc_target*, %struct.htc_packet*, i64) #1

declare dso_local i32 @trace_ath6kl_htc_rx(i64, i32, i32, i64) #1

declare dso_local i64 @ath6kl_htc_rx_process_hdr(%struct.htc_target*, %struct.htc_packet*, i32*, i32*) #1

declare dso_local i32 @ath6kl_err(i8*, i64) #1

declare dso_local i32 @htc_rxpkt_reset(%struct.htc_packet*) #1

declare dso_local i32 @reclaim_rx_ctrl_buf(%struct.htc_target*, %struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
