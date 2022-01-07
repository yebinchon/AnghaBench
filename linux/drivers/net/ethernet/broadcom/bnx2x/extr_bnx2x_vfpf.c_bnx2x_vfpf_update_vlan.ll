; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_update_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_update_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.pfvf_general_resp_tlv }
%struct.pfvf_general_resp_tlv = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { %struct.vfpf_set_q_filters_tlv }
%struct.vfpf_set_q_filters_tlv = type { i32, %struct.TYPE_14__, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@PFVF_CAP_VLAN_FILTER = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"HV does not support vlan filtering\0A\00", align 1
@CHANNEL_TLV_SET_Q_FILTERS = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_VLAN_TAG_VALID = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_SET = common dso_local global i32 0, align 4
@VLAN_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Hypervisor will decline the request, avoiding\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to send message to pf. rc was %d\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"vfpf %s VLAN %d failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_update_vlan(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %11 = alloca %struct.pfvf_general_resp_tlv*, align 8
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store %struct.vfpf_set_q_filters_tlv* %17, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store %struct.pfvf_general_resp_tlv* %22, %struct.pfvf_general_resp_tlv** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PFVF_CAP_VLAN_FILTER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %33 = call i32 @DP(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %136

34:                                               ; preds = %4
  %35 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %36 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %37 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %36, i32 0, i32 1
  %38 = load i32, i32* @CHANNEL_TLV_SET_Q_FILTERS, align 4
  %39 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %35, %struct.TYPE_14__* %37, i32 %38, i32 24)
  %40 = load i32, i32* @VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED, align 4
  %41 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %42 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %45 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %47 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @VFPF_Q_FILTER_VLAN_TAG_VALID, align 4
  %49 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %50 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %34
  %57 = load i32, i32* @VFPF_Q_FILTER_SET, align 4
  %58 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %59 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %58, i32 0, i32 2
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %56, %34
  %66 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %67 = call i32 @bnx2x_sample_bulletin(%struct.bnx2x* %66)
  %68 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %69 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @VLAN_VALID, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %130

81:                                               ; preds = %65
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %84 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %83, i32 0, i32 2
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 4
  %88 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %89 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %90 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %91 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %96 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %88, %struct.vfpf_set_q_filters_tlv* %89, i32 %94, i32 %95, i32 4)
  %97 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %98 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %99 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %97, %struct.vfpf_set_q_filters_tlv* %98)
  %100 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %101 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %11, align 8
  %102 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %100, i64* %103, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %81
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %130

113:                                              ; preds = %81
  %114 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %11, align 8
  %115 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %124, i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %120, %113
  br label %130

130:                                              ; preds = %129, %110, %77
  %131 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %132 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %10, align 8
  %133 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %132, i32 0, i32 1
  %134 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %131, %struct.TYPE_14__* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %130, %31
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @bnx2x_sample_bulletin(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i64*, i32) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
