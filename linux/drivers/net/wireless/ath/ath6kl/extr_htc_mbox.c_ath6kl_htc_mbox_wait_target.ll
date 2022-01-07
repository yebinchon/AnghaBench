; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_wait_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_wait_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i8*, i64, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.htc_packet = type { i32, i64 }
%struct.htc_ready_ext_msg = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.htc_service_connect_req = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.htc_service_connect_resp = type { i32, i32, %struct.TYPE_5__ }

@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_READY_ID = common dso_local global i64 0, align 8
@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"htc target ready credits %d size %d\0A\00", align 1
@HTC_VERSION_2P0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"htc using protocol %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c">= 2.1\00", align 1
@htc_ctrl_rx = common dso_local global i32 0, align 4
@NUM_CONTROL_BUFFERS = common dso_local global i32 0, align 4
@HTC_CTRL_RSVD_SVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @ath6kl_htc_mbox_wait_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_mbox_wait_target(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  %5 = alloca %struct.htc_ready_ext_msg*, align 8
  %6 = alloca %struct.htc_service_connect_req, align 8
  %7 = alloca %struct.htc_service_connect_resp, align 8
  %8 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* null, %struct.htc_packet** %4, align 8
  %9 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %10 = call %struct.htc_packet* @htc_wait_for_ctrl_msg(%struct.htc_target* %9)
  store %struct.htc_packet* %10, %struct.htc_packet** %4, align 8
  %11 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %12 = icmp ne %struct.htc_packet* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %158

16:                                               ; preds = %1
  %17 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %18 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.htc_ready_ext_msg*
  store %struct.htc_ready_ext_msg* %20, %struct.htc_ready_ext_msg** %5, align 8
  %21 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %5, align 8
  %22 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @le16_to_cpu(i32 %24)
  %26 = load i64, i64* @HTC_MSG_READY_ID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %30 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %16
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %147

37:                                               ; preds = %28
  %38 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %5, align 8
  %39 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %5, align 8
  %45 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %147

52:                                               ; preds = %43
  %53 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %5, align 8
  %54 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le16_to_cpu(i32 %56)
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %60 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %5, align 8
  %62 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @le16_to_cpu(i32 %64)
  %66 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %67 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %69 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %70 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %73 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ath6kl_dbg(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %71, i64 %74)
  %76 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %77 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %79, 32
  br i1 %80, label %81, label %92

81:                                               ; preds = %52
  %82 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %5, align 8
  %83 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %86 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.htc_ready_ext_msg*, %struct.htc_ready_ext_msg** %5, align 8
  %88 = getelementptr inbounds %struct.htc_ready_ext_msg, %struct.htc_ready_ext_msg* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %91 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %98

92:                                               ; preds = %52
  %93 = load i64, i64* @HTC_VERSION_2P0, align 8
  %94 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %95 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %97 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %81
  %99 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %100 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %101 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HTC_VERSION_2P0, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %107 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %108 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ath6kl_dbg(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %106, i64 %109)
  %111 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %112 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %98
  %116 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %117 = call i32 @htc_setup_msg_bndl(%struct.htc_target* %116)
  br label %118

118:                                              ; preds = %115, %98
  %119 = bitcast %struct.htc_service_connect_req* %6 to %struct.htc_service_connect_resp*
  %120 = call i32 @memset(%struct.htc_service_connect_resp* %119, i32 0, i32 32)
  %121 = call i32 @memset(%struct.htc_service_connect_resp* %7, i32 0, i32 32)
  %122 = load i32, i32* @htc_ctrl_rx, align 4
  %123 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %6, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %6, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32* null, i32** %126, align 8
  %127 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %6, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  %129 = load i32, i32* @NUM_CONTROL_BUFFERS, align 4
  %130 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %6, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @HTC_CTRL_RSVD_SVC, align 4
  %132 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %6, i32 0, i32 0
  store i32 %131, i32* %132, align 8
  %133 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %134 = bitcast %struct.htc_target* %133 to i8*
  %135 = bitcast %struct.htc_service_connect_req* %6 to %struct.htc_service_connect_resp*
  %136 = call i32 @ath6kl_htc_mbox_conn_service(i8* %134, %struct.htc_service_connect_resp* %135, %struct.htc_service_connect_resp* %7)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %118
  %140 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %141 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ath6kl_hif_cleanup_scatter(i32 %144)
  br label %146

146:                                              ; preds = %139, %118
  br label %147

147:                                              ; preds = %146, %49, %34
  %148 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %149 = icmp ne %struct.htc_packet* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %152 = call i32 @htc_rxpkt_reset(%struct.htc_packet* %151)
  %153 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %154 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %155 = call i32 @reclaim_rx_ctrl_buf(%struct.htc_target* %153, %struct.htc_packet* %154)
  br label %156

156:                                              ; preds = %150, %147
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.htc_packet* @htc_wait_for_ctrl_msg(%struct.htc_target*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i8*, i64) #1

declare dso_local i32 @htc_setup_msg_bndl(%struct.htc_target*) #1

declare dso_local i32 @memset(%struct.htc_service_connect_resp*, i32, i32) #1

declare dso_local i32 @ath6kl_htc_mbox_conn_service(i8*, %struct.htc_service_connect_resp*, %struct.htc_service_connect_resp*) #1

declare dso_local i32 @ath6kl_hif_cleanup_scatter(i32) #1

declare dso_local i32 @htc_rxpkt_reset(%struct.htc_packet*) #1

declare dso_local i32 @reclaim_rx_ctrl_buf(%struct.htc_target*, %struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
