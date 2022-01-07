; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_storm_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_storm_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.pfvf_general_resp_tlv }
%struct.pfvf_general_resp_tlv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.vfpf_set_q_filters_tlv }
%struct.vfpf_set_q_filters_tlv = type { %struct.TYPE_13__, i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CHANNEL_TLV_SET_Q_FILTERS = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Rx mode is %d\0A\00", align 1
@BNX2X_RX_MODE_NONE = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_NONE = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@BNX2X_RX_MODE_PROMISC = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_RX_MASK_CHANGED = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Sending a message failed: %d\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Set Rx mode failed: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_storm_rx_mode(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %5 = alloca %struct.pfvf_general_resp_tlv*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.vfpf_set_q_filters_tlv* %14, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store %struct.pfvf_general_resp_tlv* %19, %struct.pfvf_general_resp_tlv** %5, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %22 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %21, i32 0, i32 0
  %23 = load i32, i32* @CHANNEL_TLV_SET_Q_FILTERS, align 4
  %24 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %20, %struct.TYPE_13__* %22, i32 %23, i32 24)
  %25 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DP(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @BNX2X_RX_MODE_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @VFPF_RX_MASK_ACCEPT_NONE, align 4
  %33 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %34 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %59

35:                                               ; preds = %1
  %36 = load i32, i32* @VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST, align 4
  %37 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %38 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST, align 4
  %40 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %41 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @VFPF_RX_MASK_ACCEPT_BROADCAST, align 4
  %45 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %46 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @BNX2X_RX_MODE_PROMISC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ANY_VLAN, align 4
  %54 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %55 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %35
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %61 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ANY_VLAN, align 4
  %66 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %67 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* @VFPF_SET_Q_FILTERS_RX_MASK_CHANGED, align 4
  %72 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %73 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %77 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %79 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %80 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %81 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %86 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %78, %struct.vfpf_set_q_filters_tlv* %79, i32 %84, i32 %85, i32 4)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %88 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %89 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %87, %struct.vfpf_set_q_filters_tlv* %88)
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %92 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %90, i32* %93, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %70
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %70
  %104 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %105 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %112 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %110, %103
  %119 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %120 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %4, align 8
  %121 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %120, i32 0, i32 0
  %122 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %119, %struct.TYPE_13__* %121)
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
