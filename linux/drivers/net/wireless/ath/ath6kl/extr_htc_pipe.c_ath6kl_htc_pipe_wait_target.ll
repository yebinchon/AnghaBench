; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_wait_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_ath6kl_htc_pipe_wait_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.htc_ready_ext_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.htc_service_connect_req = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.htc_service_connect_resp = type { i32, i32, %struct.TYPE_6__ }

@.str = private unnamed_addr constant [36 x i8] c"invalid htc pipe ready msg len: %d\0A\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@HTC_MSG_READY_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid htc pipe ready msg: 0x%x\0A\00", align 1
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Target Ready! : transmit resources : %d size:%d\0A\00", align 1
@htc_txctrl_complete = common dso_local global i32 0, align 4
@htc_rxctrl_complete = common dso_local global i32 0, align 4
@NUM_CONTROL_TX_BUFFERS = common dso_local global i32 0, align 4
@HTC_CTRL_RSVD_SVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @ath6kl_htc_pipe_wait_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_pipe_wait_target(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_ready_ext_msg*, align 8
  %5 = alloca %struct.htc_service_connect_req, align 4
  %6 = alloca %struct.htc_service_connect_resp, align 4
  %7 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %9 = call i32 @htc_wait_recv_ctrl_message(%struct.htc_target* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %109

14:                                               ; preds = %1
  %15 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %16 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 12
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %23 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ECOMM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %109

29:                                               ; preds = %14
  %30 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %31 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.htc_ready_ext_msg*
  store %struct.htc_ready_ext_msg* %34, %struct.htc_ready_ext_msg** %4, align 8
  %35 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %4, align 8
  %36 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HTC_MSG_READY_ID, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %4, align 8
  %44 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ECOMM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %109

50:                                               ; preds = %29
  %51 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %52 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %4, align 8
  %53 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %4, align 8
  %57 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ath6kl_dbg(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %59)
  %61 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %4, align 8
  %62 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le16_to_cpu(i32 %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %68 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %4, align 8
  %70 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le16_to_cpu(i32 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %76 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %78 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %50
  %82 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %83 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %50
  %87 = load i32, i32* @ECOMM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %109

89:                                               ; preds = %81
  %90 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %91 = call i32 @htc_setup_target_buffer_assignments(%struct.htc_target* %90)
  %92 = bitcast %struct.htc_service_connect_req* %5 to %struct.htc_service_connect_resp*
  %93 = call i32 @memset(%struct.htc_service_connect_resp* %92, i32 0, i32 16)
  %94 = call i32 @memset(%struct.htc_service_connect_resp* %6, i32 0, i32 16)
  %95 = load i32, i32* @htc_txctrl_complete, align 4
  %96 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %5, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @htc_rxctrl_complete, align 4
  %99 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %5, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @NUM_CONTROL_TX_BUFFERS, align 4
  %102 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %5, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @HTC_CTRL_RSVD_SVC, align 4
  %104 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %5, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %106 = bitcast %struct.htc_service_connect_req* %5 to %struct.htc_service_connect_resp*
  %107 = call i32 @ath6kl_htc_pipe_conn_service(%struct.htc_target* %105, %struct.htc_service_connect_resp* %106, %struct.htc_service_connect_resp* %6)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %89, %86, %42, %21, %12
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @htc_wait_recv_ctrl_message(%struct.htc_target*) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @htc_setup_target_buffer_assignments(%struct.htc_target*) #1

declare dso_local i32 @memset(%struct.htc_service_connect_resp*, i32, i32) #1

declare dso_local i32 @ath6kl_htc_pipe_conn_service(%struct.htc_target*, %struct.htc_service_connect_resp*, %struct.htc_service_connect_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
