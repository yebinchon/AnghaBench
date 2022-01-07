; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_teardown_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_teardown_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.pfvf_general_resp_tlv }
%struct.pfvf_general_resp_tlv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.vfpf_q_op_tlv }
%struct.vfpf_q_op_tlv = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CHANNEL_TLV_TEARDOWN_Q = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Sending TEARDOWN for queue %d failed: %d\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"TEARDOWN for queue %d failed: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_vfpf_teardown_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vfpf_teardown_queue(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfpf_q_op_tlv*, align 8
  %6 = alloca %struct.pfvf_general_resp_tlv*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store %struct.vfpf_q_op_tlv* %12, %struct.vfpf_q_op_tlv** %5, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store %struct.pfvf_general_resp_tlv* %17, %struct.pfvf_general_resp_tlv** %6, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load %struct.vfpf_q_op_tlv*, %struct.vfpf_q_op_tlv** %5, align 8
  %20 = getelementptr inbounds %struct.vfpf_q_op_tlv, %struct.vfpf_q_op_tlv* %19, i32 0, i32 1
  %21 = load i32, i32* @CHANNEL_TLV_TEARDOWN_Q, align 4
  %22 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %18, %struct.TYPE_13__* %20, i32 %21, i32 8)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.vfpf_q_op_tlv*, %struct.vfpf_q_op_tlv** %5, align 8
  %25 = getelementptr inbounds %struct.vfpf_q_op_tlv, %struct.vfpf_q_op_tlv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = load %struct.vfpf_q_op_tlv*, %struct.vfpf_q_op_tlv** %5, align 8
  %28 = load %struct.vfpf_q_op_tlv*, %struct.vfpf_q_op_tlv** %5, align 8
  %29 = getelementptr inbounds %struct.vfpf_q_op_tlv, %struct.vfpf_q_op_tlv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %34 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %26, %struct.vfpf_q_op_tlv* %27, i32 %32, i32 %33, i32 4)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = load %struct.vfpf_q_op_tlv*, %struct.vfpf_q_op_tlv** %5, align 8
  %37 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %35, %struct.vfpf_q_op_tlv* %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %6, align 8
  %40 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %38, i32* %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %69

52:                                               ; preds = %2
  %53 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %6, align 8
  %54 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %6, align 8
  %62 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %59, %52
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = load %struct.vfpf_q_op_tlv*, %struct.vfpf_q_op_tlv** %5, align 8
  %72 = getelementptr inbounds %struct.vfpf_q_op_tlv, %struct.vfpf_q_op_tlv* %71, i32 0, i32 1
  %73 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %70, %struct.TYPE_13__* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_q_op_tlv*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_q_op_tlv*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
