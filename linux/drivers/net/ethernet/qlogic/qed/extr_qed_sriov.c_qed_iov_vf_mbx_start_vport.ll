; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_start_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_start_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32*, i64, i32, %struct.qed_iov_vf_mbx }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qed_iov_vf_mbx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.vfpf_vport_start_tlv }
%struct.vfpf_vport_start_tlv = type { i32, i32, i32, i32, i32, i32* }
%struct.qed_sp_vport_start_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to get VF info, invalid vfid [%d]\0A\00", align 1
@VF_ENABLED = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"VF[%d] did not fill the address of SB %d\0A\00", align 1
@VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED = common dso_local global i32 0, align 4
@VFPF_BULLETIN_UNTAGGED_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"qed_iov_vf_mbx_start_vport returned error %d\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@CHANNEL_TLV_VPORT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_mbx_start_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_mbx_start_vport(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_sp_vport_start_params, align 4
  %8 = alloca %struct.qed_iov_vf_mbx*, align 8
  %9 = alloca %struct.vfpf_vport_start_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_vf_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %16 = bitcast %struct.qed_sp_vport_start_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 48, i1 false)
  %17 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %18 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %17, i32 0, i32 14
  store %struct.qed_iov_vf_mbx* %18, %struct.qed_iov_vf_mbx** %8, align 8
  %19 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %22 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %21, i32 0, i32 12
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %20, i32 %24, i32 1)
  store %struct.qed_vf_info* %25, %struct.qed_vf_info** %11, align 8
  %26 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %27 = icmp ne %struct.qed_vf_info* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %33 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DP_NOTICE(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %211

36:                                               ; preds = %3
  %37 = load i32, i32* @VF_ENABLED, align 4
  %38 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %39 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 8
  %40 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %8, align 8
  %41 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.vfpf_vport_start_tlv* %43, %struct.vfpf_vport_start_tlv** %9, align 8
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %45 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %46 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %47 = call i32 @qed_iov_enable_vf_traffic(%struct.qed_hwfn* %44, %struct.qed_ptt* %45, %struct.qed_vf_info* %46)
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %92, %36
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %51 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %48
  %55 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %56 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %65 = load i32, i32* @QED_MSG_IOV, align 4
  %66 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %67 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %66, i32 0, i32 12
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %64, i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %69)
  br label %95

71:                                               ; preds = %54
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %73 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %74 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %75 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %82 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %81, i32 0, i32 11
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %89 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @qed_int_cau_conf_sb(%struct.qed_hwfn* %72, %struct.qed_ptt* %73, i32 %80, i32 %87, i32 %90, i32 1)
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %48

95:                                               ; preds = %63, %48
  %96 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %97 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %100 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %102 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %105 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %108 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32* %111, i32** %12, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED, align 4
  %115 = call i32 @BIT(i32 %114)
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %95
  %119 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %120 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %124 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* @VFPF_BULLETIN_UNTAGGED_DEFAULT, align 4
  %129 = shl i32 1, %128
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %118, %95
  %134 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %135 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 10
  store i32 %136, i32* %137, align 4
  %138 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %139 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 9
  store i32 %140, i32* %141, align 4
  %142 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %144 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 8
  store i32 %148, i32* %149, align 4
  %150 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %152 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 7
  store i32 %153, i32* %154, align 4
  %155 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %156 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 6
  store i32 %157, i32* %158, align 4
  %159 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %160 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 5
  store i32 %161, i32* %162, align 4
  %163 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %164 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 4
  store i32 %165, i32* %166, align 4
  %167 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %168 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 3
  store i32 %169, i32* %170, align 4
  %171 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %172 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %7, i32 0, i32 2
  store i32 %177, i32* %178, align 4
  %179 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %180 = call i32 @qed_sp_eth_vport_start(%struct.qed_hwfn* %179, %struct.qed_sp_vport_start_params* %7)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %133
  %184 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @DP_ERR(%struct.qed_hwfn* %184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %187, i32* %10, align 4
  br label %204

188:                                              ; preds = %133
  %189 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %190 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %194 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @qed_iov_configure_vport_forced(%struct.qed_hwfn* %193, %struct.qed_vf_info* %194, i32 %196)
  %198 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %199 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %200 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %201 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @__qed_iov_spoofchk_set(%struct.qed_hwfn* %198, %struct.qed_vf_info* %199, i32 %202)
  br label %204

204:                                              ; preds = %188, %183
  %205 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %206 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %207 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %208 = load i32, i32* @CHANNEL_TLV_VPORT_START, align 4
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %205, %struct.qed_ptt* %206, %struct.qed_vf_info* %207, i32 %208, i32 4, i32 %209)
  br label %211

211:                                              ; preds = %204, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #2

declare dso_local i32 @DP_NOTICE(i32, i8*, i64) #2

declare dso_local i32 @qed_iov_enable_vf_traffic(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #2

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i32) #2

declare dso_local i32 @qed_int_cau_conf_sb(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @qed_sp_eth_vport_start(%struct.qed_hwfn*, %struct.qed_sp_vport_start_params*) #2

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #2

declare dso_local i32 @qed_iov_configure_vport_forced(%struct.qed_hwfn*, %struct.qed_vf_info*, i32) #2

declare dso_local i32 @__qed_iov_spoofchk_set(%struct.qed_hwfn*, %struct.qed_vf_info*, i32) #2

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
