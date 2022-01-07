; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_eq_sp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_eq_sp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.event_ring_elem = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (%struct.bnx2x*, %struct.TYPE_17__*, i32)* }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"checking cfc-del comp cid=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"checking filtering comp cid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Got VF FLR notification abs_vfid=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Got VF MALICIOUS notification abs_vfid=%d err_id=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cid is outside vf range: %d\0A\00", align 1
@BNX2X_VF_CID_WND = common dso_local global i32 0, align 4
@BNX2X_MAX_NUM_OF_VFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"EQ completion for unknown VF, cid %d, abs_vfid %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"got VF [%d:%d] cfc delete ramrod\0A\00", align 1
@BNX2X_Q_CMD_CFC_DEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"got VF [%d:%d] set mac/vlan ramrod\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"got VF [%d:%d] set mcast ramrod\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"got VF [%d:%d] set rx-mode ramrod\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"got VF [%d:%d] RSS update ramrod\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_iov_eq_sp_event(%struct.bnx2x* %0, %union.event_ring_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %union.event_ring_elem*, align 8
  %6 = alloca %struct.bnx2x_virtf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %union.event_ring_elem* %1, %union.event_ring_elem** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 65535, i32* %10, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = call i32 @IS_SRIOV(%struct.bnx2x* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %170

15:                                               ; preds = %2
  %16 = load %union.event_ring_elem*, %union.event_ring_elem** %5, align 8
  %17 = bitcast %union.event_ring_elem* %16 to %struct.TYPE_15__*
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %68 [
    i32 134, label %21
    i32 133, label %32
    i32 130, label %32
    i32 132, label %32
    i32 129, label %32
    i32 128, label %43
    i32 131, label %53
  ]

21:                                               ; preds = %15
  %22 = load %union.event_ring_elem*, %union.event_ring_elem** %5, align 8
  %23 = bitcast %union.event_ring_elem* %22 to %struct.TYPE_15__*
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SW_CID(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32, i8*, i32, ...) @DP(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %69

32:                                               ; preds = %15, %15, %15, %15
  %33 = load %union.event_ring_elem*, %union.event_ring_elem** %5, align 8
  %34 = bitcast %union.event_ring_elem* %33 to %struct.TYPE_15__*
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SW_CID(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, i32, ...) @DP(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %69

43:                                               ; preds = %15
  %44 = load %union.event_ring_elem*, %union.event_ring_elem** %5, align 8
  %45 = bitcast %union.event_ring_elem* %44 to %struct.TYPE_15__*
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, i32, ...) @DP(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %90

53:                                               ; preds = %15
  %54 = load %union.event_ring_elem*, %union.event_ring_elem** %5, align 8
  %55 = bitcast %union.event_ring_elem* %54 to %struct.TYPE_15__*
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %union.event_ring_elem*, %union.event_ring_elem** %5, align 8
  %62 = bitcast %union.event_ring_elem* %61 to %struct.TYPE_15__*
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %66)
  br label %90

68:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %170

69:                                               ; preds = %32, %21
  %70 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @bnx2x_iov_is_vf_cid(%struct.bnx2x* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i32, i8*, i32, ...) @DP(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  store i32 1, i32* %3, align 4
  br label %170

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @BNX2X_VF_CID_WND, align 4
  %81 = shl i32 1, %80
  %82 = sub nsw i32 %81, 1
  %83 = and i32 %79, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @BNX2X_VF_CID_WND, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %78, %53, %43
  %91 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call %struct.bnx2x_virtf* @bnx2x_vf_by_abs_fid(%struct.bnx2x* %91, i32 %92)
  store %struct.bnx2x_virtf* %93, %struct.bnx2x_virtf** %6, align 8
  %94 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %95 = icmp ne %struct.bnx2x_virtf* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %170

100:                                              ; preds = %90
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %169 [
    i32 134, label %102
    i32 133, label %122
    i32 130, label %135
    i32 132, label %145
    i32 129, label %155
    i32 128, label %165
    i32 131, label %166
  ]

102:                                              ; preds = %100
  %103 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %104 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %105 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i32, i8*, i32, ...) @DP(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call %struct.TYPE_16__* @vfq_get(%struct.bnx2x_virtf* %109, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32 (%struct.bnx2x*, %struct.TYPE_17__*, i32)*, i32 (%struct.bnx2x*, %struct.TYPE_17__*, i32)** %113, align 8
  %115 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %116 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call %struct.TYPE_16__* @vfq_get(%struct.bnx2x_virtf* %116, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* @BNX2X_Q_CMD_CFC_DEL, align 4
  %121 = call i32 %114(%struct.bnx2x* %115, %struct.TYPE_17__* %119, i32 %120)
  br label %169

122:                                              ; preds = %100
  %123 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %124 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %125 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32, i8*, i32, ...) @DP(i32 %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %130 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call %struct.TYPE_16__* @vfq_get(%struct.bnx2x_virtf* %130, i32 %131)
  %133 = load %union.event_ring_elem*, %union.event_ring_elem** %5, align 8
  %134 = call i32 @bnx2x_vf_handle_classification_eqe(%struct.bnx2x* %129, %struct.TYPE_16__* %132, %union.event_ring_elem* %133)
  br label %169

135:                                              ; preds = %100
  %136 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %137 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %138 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i32, i8*, i32, ...) @DP(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %143 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %144 = call i32 @bnx2x_vf_handle_mcast_eqe(%struct.bnx2x* %142, %struct.bnx2x_virtf* %143)
  br label %169

145:                                              ; preds = %100
  %146 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %147 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %148 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i32, i8*, i32, ...) @DP(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %153 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %154 = call i32 @bnx2x_vf_handle_filters_eqe(%struct.bnx2x* %152, %struct.bnx2x_virtf* %153)
  br label %169

155:                                              ; preds = %100
  %156 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %157 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %158 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 (i32, i8*, i32, ...) @DP(i32 %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %163 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %164 = call i32 @bnx2x_vf_handle_rss_update_eqe(%struct.bnx2x* %162, %struct.bnx2x_virtf* %163)
  br label %165

165:                                              ; preds = %100, %155
  store i32 0, i32* %3, align 4
  br label %170

166:                                              ; preds = %100
  %167 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %168 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %167, i32 0, i32 0
  store i32 1, i32* %168, align 4
  store i32 0, i32* %3, align 4
  br label %170

169:                                              ; preds = %100, %145, %135, %122, %102
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %166, %165, %96, %74, %68, %14
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @SW_CID(i32) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

declare dso_local i32 @bnx2x_iov_is_vf_cid(%struct.bnx2x*, i32) #1

declare dso_local %struct.bnx2x_virtf* @bnx2x_vf_by_abs_fid(%struct.bnx2x*, i32) #1

declare dso_local %struct.TYPE_16__* @vfq_get(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_handle_classification_eqe(%struct.bnx2x*, %struct.TYPE_16__*, %union.event_ring_elem*) #1

declare dso_local i32 @bnx2x_vf_handle_mcast_eqe(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_handle_filters_eqe(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_handle_rss_update_eqe(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
