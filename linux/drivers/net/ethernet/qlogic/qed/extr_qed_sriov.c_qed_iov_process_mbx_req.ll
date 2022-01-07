; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_process_mbx_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_process_mbx_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_iov_vf_mbx = type { i32, %struct.TYPE_10__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.qed_vf_info = type { i32, %struct.TYPE_8__, i32, %struct.qed_iov_vf_mbx }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [66 x i8] c"VF[%02x]: Trying to process mailbox message when none is pending\0A\00", align 1
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"VF[%02x]: Processing mailbox message [type %04x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"VF [%02x] - considered malicious; Ignoring TLV [%04x]\0A\00", align 1
@PFVF_STATUS_MALICIOUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"VF[%02x]: unknown TLV. type %04x length %04x padding %08x reply address %llu\0A\00", align 1
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"VF[%02x]: Can't respond to TLV - no valid reply address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_iov_process_mbx_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_process_mbx_req(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_iov_vf_mbx*, align 8
  %8 = alloca %struct.qed_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %9, i32 %10, i32 1)
  store %struct.qed_vf_info* %11, %struct.qed_vf_info** %8, align 8
  %12 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %13 = icmp ne %struct.qed_vf_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %245

15:                                               ; preds = %3
  %16 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %17 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %16, i32 0, i32 3
  store %struct.qed_iov_vf_mbx* %17, %struct.qed_iov_vf_mbx** %7, align 8
  %18 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %19 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %25 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %23, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %245

28:                                               ; preds = %15
  %29 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %30 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %32 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %31, i32 0, i32 1
  %33 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %34 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_10__* %32 to i8*
  %38 = bitcast %struct.TYPE_10__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = load i32, i32* @QED_MSG_IOV, align 4
  %41 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %42 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %45 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %39, i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %48)
  %50 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %51 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @qed_iov_tlv_supported(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %154

57:                                               ; preds = %28
  %58 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %59 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %154, label %62

62:                                               ; preds = %57
  %63 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %64 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %153 [
    i32 144, label %68
    i32 130, label %73
    i32 129, label %78
    i32 137, label %83
    i32 136, label %88
    i32 135, label %93
    i32 134, label %98
    i32 132, label %103
    i32 128, label %108
    i32 133, label %113
    i32 142, label %118
    i32 139, label %123
    i32 138, label %128
    i32 131, label %133
    i32 140, label %138
    i32 141, label %143
    i32 143, label %148
  ]

68:                                               ; preds = %62
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %70 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %71 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %72 = call i32 @qed_iov_vf_mbx_acquire(%struct.qed_hwfn* %69, %struct.qed_ptt* %70, %struct.qed_vf_info* %71)
  br label %153

73:                                               ; preds = %62
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %75 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %76 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %77 = call i32 @qed_iov_vf_mbx_start_vport(%struct.qed_hwfn* %74, %struct.qed_ptt* %75, %struct.qed_vf_info* %76)
  br label %153

78:                                               ; preds = %62
  %79 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %80 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %81 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %82 = call i32 @qed_iov_vf_mbx_stop_vport(%struct.qed_hwfn* %79, %struct.qed_ptt* %80, %struct.qed_vf_info* %81)
  br label %153

83:                                               ; preds = %62
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %85 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %86 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %87 = call i32 @qed_iov_vf_mbx_start_rxq(%struct.qed_hwfn* %84, %struct.qed_ptt* %85, %struct.qed_vf_info* %86)
  br label %153

88:                                               ; preds = %62
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %90 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %91 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %92 = call i32 @qed_iov_vf_mbx_start_txq(%struct.qed_hwfn* %89, %struct.qed_ptt* %90, %struct.qed_vf_info* %91)
  br label %153

93:                                               ; preds = %62
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %95 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %96 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %97 = call i32 @qed_iov_vf_mbx_stop_rxqs(%struct.qed_hwfn* %94, %struct.qed_ptt* %95, %struct.qed_vf_info* %96)
  br label %153

98:                                               ; preds = %62
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %100 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %101 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %102 = call i32 @qed_iov_vf_mbx_stop_txqs(%struct.qed_hwfn* %99, %struct.qed_ptt* %100, %struct.qed_vf_info* %101)
  br label %153

103:                                              ; preds = %62
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %105 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %106 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %107 = call i32 @qed_iov_vf_mbx_update_rxqs(%struct.qed_hwfn* %104, %struct.qed_ptt* %105, %struct.qed_vf_info* %106)
  br label %153

108:                                              ; preds = %62
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %110 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %111 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %112 = call i32 @qed_iov_vf_mbx_vport_update(%struct.qed_hwfn* %109, %struct.qed_ptt* %110, %struct.qed_vf_info* %111)
  br label %153

113:                                              ; preds = %62
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %115 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %116 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %117 = call i32 @qed_iov_vf_mbx_ucast_filter(%struct.qed_hwfn* %114, %struct.qed_ptt* %115, %struct.qed_vf_info* %116)
  br label %153

118:                                              ; preds = %62
  %119 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %120 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %121 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %122 = call i32 @qed_iov_vf_mbx_close(%struct.qed_hwfn* %119, %struct.qed_ptt* %120, %struct.qed_vf_info* %121)
  br label %153

123:                                              ; preds = %62
  %124 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %125 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %126 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %127 = call i32 @qed_iov_vf_mbx_int_cleanup(%struct.qed_hwfn* %124, %struct.qed_ptt* %125, %struct.qed_vf_info* %126)
  br label %153

128:                                              ; preds = %62
  %129 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %130 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %131 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %132 = call i32 @qed_iov_vf_mbx_release(%struct.qed_hwfn* %129, %struct.qed_ptt* %130, %struct.qed_vf_info* %131)
  br label %153

133:                                              ; preds = %62
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %135 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %136 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %137 = call i32 @qed_iov_vf_mbx_update_tunn_param(%struct.qed_hwfn* %134, %struct.qed_ptt* %135, %struct.qed_vf_info* %136)
  br label %153

138:                                              ; preds = %62
  %139 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %140 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %141 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %142 = call i32 @qed_iov_vf_pf_set_coalesce(%struct.qed_hwfn* %139, %struct.qed_ptt* %140, %struct.qed_vf_info* %141)
  br label %153

143:                                              ; preds = %62
  %144 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %145 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %146 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %147 = call i32 @qed_iov_vf_pf_get_coalesce(%struct.qed_hwfn* %144, %struct.qed_ptt* %145, %struct.qed_vf_info* %146)
  br label %153

148:                                              ; preds = %62
  %149 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %150 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %151 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %152 = call i32 @qed_iov_vf_pf_bulletin_update_mac(%struct.qed_hwfn* %149, %struct.qed_ptt* %150, %struct.qed_vf_info* %151)
  br label %153

153:                                              ; preds = %62, %148, %143, %138, %133, %128, %123, %118, %113, %108, %103, %98, %93, %88, %83, %78, %73, %68
  br label %245

154:                                              ; preds = %57, %28
  %155 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %156 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @qed_iov_tlv_supported(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %154
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %164 = load i32, i32* @QED_MSG_IOV, align 4
  %165 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %166 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %169 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %163, i32 %164, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %172)
  %174 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %175 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %176 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %177 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %178 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @PFVF_STATUS_MALICIOUS, align 4
  %183 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %174, %struct.qed_ptt* %175, %struct.qed_vf_info* %176, i32 %181, i32 4, i32 %182)
  br label %244

184:                                              ; preds = %154
  %185 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %186 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %187 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %190 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %195 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %200 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %204 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %185, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %193, i32 %198, i32 %202, i64 %206)
  %208 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %209 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %236

214:                                              ; preds = %184
  %215 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %216 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %220 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %218, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %214
  %226 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %227 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %228 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %229 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %230 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  %235 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %226, %struct.qed_ptt* %227, %struct.qed_vf_info* %228, i32 %233, i32 4, i32 %234)
  br label %243

236:                                              ; preds = %214, %184
  %237 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %238 = load i32, i32* @QED_MSG_IOV, align 4
  %239 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %240 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %237, i32 %238, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %236, %225
  br label %244

244:                                              ; preds = %243, %162
  br label %245

245:                                              ; preds = %14, %22, %244, %153
  ret void
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i64 @qed_iov_tlv_supported(i32) #1

declare dso_local i32 @qed_iov_vf_mbx_acquire(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_start_vport(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_stop_vport(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_start_rxq(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_start_txq(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_stop_rxqs(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_stop_txqs(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_update_rxqs(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_vport_update(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_ucast_filter(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_close(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_int_cleanup(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_release(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_mbx_update_tunn_param(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_pf_set_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_pf_get_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_pf_bulletin_update_mac(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
