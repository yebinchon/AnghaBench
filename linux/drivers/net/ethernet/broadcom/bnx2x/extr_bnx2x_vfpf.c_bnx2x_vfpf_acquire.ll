; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_23__, %struct.TYPE_29__*, i32, i8*, i32, i8*, %struct.TYPE_26__, i64, i64, i32, %struct.TYPE_25__, %struct.TYPE_23__*, %struct.TYPE_31__*, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_28__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.pfvf_acquire_resp_tlv*, i8*, %struct.TYPE_27__*, i8*, i8*, i8*, i8*, i8* }
%struct.pfvf_acquire_resp_tlv = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_23__* }
%struct.TYPE_26__ = type { i32, i64, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_22__, %struct.TYPE_30__ }
%struct.TYPE_22__ = type { %struct.pfvf_acquire_resp_tlv }
%struct.TYPE_30__ = type { %struct.vfpf_acquire_tlv }
%struct.vfpf_acquire_tlv = type { %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_32__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_21__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_32__ = type { i32, i64, i64, i32 }
%struct.vfpf_port_phys_id_resp_tlv = type { %struct.pfvf_acquire_resp_tlv* }
%struct.vfpf_fp_hsi_resp_tlv = type { i32 }

@CHANNEL_TLV_ACQUIRE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETH_FP_HSI_VERSION = common dso_local global i64 0, align 8
@VF_ACQUIRE_MAC_FILTERS = common dso_local global i8* null, align 8
@VF_ACQUIRE_MC_FILTERS = common dso_local global i8* null, align 8
@VF_ACQUIRE_VLAN_FILTERS = common dso_local global i8* null, align 8
@CHANNEL_TLV_PHYS_PORT_ID = common dso_local global i32 0, align 4
@VF_CAP_SUPPORT_EXT_BULLETIN = common dso_local global i32 0, align 4
@VF_CAP_SUPPORT_VLAN_FILTER = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"attempting to acquire resources\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"resources acquired\0A\00", align 1
@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@VF_ACQUIRE_THRESH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"PF unwilling to fulfill resource request. Try PF recommended amount\0A\00", align 1
@CHANNEL_TLV_FP_HSI_SUPPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [116 x i8] c"Old hypervisor - doesn't support current fastpath HSI version; Need to downgrade VF driver [or upgrade hypervisor]\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Failed to get the requested amount of resources: %d. Breaking...\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@HAS_PHYS_PORT_ID = common dso_local global i32 0, align 4
@ETH_FP_HSI_VER_2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"Old hypervisor - need to downgrade VF's driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INT_BLOCK_IGU = common dso_local global i32 0, align 4
@CHIP_2_PORT_MODE = common dso_local global i32 0, align 4
@NO_WOL_FLAG = common dso_local global i32 0, align 4
@NO_ISCSI_OOO_FLAG = common dso_local global i32 0, align 4
@NO_ISCSI_FLAG = common dso_local global i32 0, align 4
@NO_FCOE_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_acquire(%struct.bnx2x* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfpf_acquire_tlv*, align 8
  %10 = alloca %struct.pfvf_acquire_resp_tlv*, align 8
  %11 = alloca %struct.vfpf_port_phys_id_resp_tlv*, align 8
  %12 = alloca %struct.vfpf_fp_hsi_resp_tlv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 14
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  store %struct.vfpf_acquire_tlv* %19, %struct.vfpf_acquire_tlv** %9, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 14
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  store %struct.pfvf_acquire_resp_tlv* %24, %struct.pfvf_acquire_resp_tlv** %10, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %27 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %26, i32 0, i32 0
  %28 = load i32, i32* @CHANNEL_TLV_ACQUIRE, align 4
  %29 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %25, %struct.TYPE_24__* %27, i32 %28, i32 96)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = call i64 @bnx2x_get_vf_id(%struct.bnx2x* %30, i32* %13)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %423

36:                                               ; preds = %3
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %39 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %42 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* @ETH_FP_HSI_VERSION, align 8
  %45 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %46 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %50 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 4
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %54 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 5
  store i8* %52, i8** %55, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %60 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 3
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** @VF_ACQUIRE_MAC_FILTERS, align 8
  %63 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %64 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** @VF_ACQUIRE_MC_FILTERS, align 8
  %67 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %68 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** @VF_ACQUIRE_VLAN_FILTERS, align 8
  %71 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %72 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 16
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %78 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %80 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %81 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %82 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @CHANNEL_TLV_PHYS_PORT_ID, align 4
  %87 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %79, %struct.vfpf_acquire_tlv* %80, i64 %85, i32 %86, i32 4)
  %88 = load i32, i32* @VF_CAP_SUPPORT_EXT_BULLETIN, align 4
  %89 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %90 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @VF_CAP_SUPPORT_VLAN_FILTER, align 4
  %95 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %96 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 8
  %100 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %101 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %102 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %103 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 4
  %108 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %109 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %100, %struct.vfpf_acquire_tlv* %101, i64 %107, i32 %108, i32 4)
  %110 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %111 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %112 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %110, %struct.vfpf_acquire_tlv* %111)
  br label %113

113:                                              ; preds = %271, %36
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %272

117:                                              ; preds = %113
  %118 = load i32, i32* @BNX2X_MSG_SP, align 4
  %119 = call i32 @DP(i32 %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %121 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %10, align 8
  %122 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %120, i32* %123, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %117
  br label %423

131:                                              ; preds = %117
  %132 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %133 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %132, i32 0, i32 2
  %134 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %10, align 8
  %135 = call i32 @memcpy(%struct.TYPE_23__* %133, %struct.pfvf_acquire_resp_tlv* %134, i32 88)
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  %138 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %139 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %131
  %146 = load i32, i32* @BNX2X_MSG_SP, align 4
  %147 = call i32 @DP(i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %271

148:                                              ; preds = %131
  %149 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %150 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %246

156:                                              ; preds = %148
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @VF_ACQUIRE_THRESH, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %246

160:                                              ; preds = %156
  %161 = load i32, i32* @BNX2X_MSG_SP, align 4
  %162 = call i32 @DP(i32 %161, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %163 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %164 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 5
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %168 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 7
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @min(i8* %166, i8* %171)
  %173 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %174 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 5
  store i8* %172, i8** %175, align 8
  %176 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %177 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %181 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 6
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* @min(i8* %179, i8* %184)
  %186 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %187 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 4
  store i8* %185, i8** %188, align 8
  %189 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %190 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %194 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @min(i8* %192, i8* %197)
  %199 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %200 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 3
  store i8* %198, i8** %201, align 8
  %202 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %203 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %207 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 5
  %210 = load i8*, i8** %209, align 8
  %211 = call i8* @min(i8* %205, i8* %210)
  %212 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %213 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  store i8* %211, i8** %214, align 8
  %215 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %216 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %220 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = call i8* @min(i8* %218, i8* %223)
  %225 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %226 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 1
  store i8* %224, i8** %227, align 8
  %228 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %229 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %233 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 4
  %236 = load i8*, i8** %235, align 8
  %237 = call i8* @min(i8* %231, i8* %236)
  %238 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %239 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 0
  store i8* %237, i8** %240, align 8
  %241 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %242 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %241, i32 0, i32 14
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 0
  %245 = call i32 @memset(%struct.TYPE_22__* %244, i32 0, i32 4)
  br label %270

246:                                              ; preds = %156, %148
  %247 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %248 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %10, align 8
  %249 = load i32, i32* @CHANNEL_TLV_FP_HSI_SUPPORT, align 4
  %250 = call %struct.vfpf_fp_hsi_resp_tlv* @bnx2x_search_tlv_list(%struct.bnx2x* %247, %struct.pfvf_acquire_resp_tlv* %248, i32 %249)
  store %struct.vfpf_fp_hsi_resp_tlv* %250, %struct.vfpf_fp_hsi_resp_tlv** %12, align 8
  %251 = load %struct.vfpf_fp_hsi_resp_tlv*, %struct.vfpf_fp_hsi_resp_tlv** %12, align 8
  %252 = icmp ne %struct.vfpf_fp_hsi_resp_tlv* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %246
  %254 = load %struct.vfpf_fp_hsi_resp_tlv*, %struct.vfpf_fp_hsi_resp_tlv** %12, align 8
  %255 = getelementptr inbounds %struct.vfpf_fp_hsi_resp_tlv, %struct.vfpf_fp_hsi_resp_tlv* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %253
  %259 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i64 0, i64 0))
  br label %267

260:                                              ; preds = %253, %246
  %261 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %262 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %265)
  br label %267

267:                                              ; preds = %260, %258
  %268 = load i32, i32* @EAGAIN, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %7, align 4
  br label %423

270:                                              ; preds = %160
  br label %271

271:                                              ; preds = %270, %145
  br label %113

272:                                              ; preds = %113
  %273 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %274 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %10, align 8
  %275 = load i32, i32* @CHANNEL_TLV_PHYS_PORT_ID, align 4
  %276 = call %struct.vfpf_fp_hsi_resp_tlv* @bnx2x_search_tlv_list(%struct.bnx2x* %273, %struct.pfvf_acquire_resp_tlv* %274, i32 %275)
  %277 = bitcast %struct.vfpf_fp_hsi_resp_tlv* %276 to %struct.vfpf_port_phys_id_resp_tlv*
  store %struct.vfpf_port_phys_id_resp_tlv* %277, %struct.vfpf_port_phys_id_resp_tlv** %11, align 8
  %278 = load %struct.vfpf_port_phys_id_resp_tlv*, %struct.vfpf_port_phys_id_resp_tlv** %11, align 8
  %279 = icmp ne %struct.vfpf_port_phys_id_resp_tlv* %278, null
  br i1 %279, label %280, label %294

280:                                              ; preds = %272
  %281 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %282 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %281, i32 0, i32 13
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %282, align 8
  %284 = load %struct.vfpf_port_phys_id_resp_tlv*, %struct.vfpf_port_phys_id_resp_tlv** %11, align 8
  %285 = getelementptr inbounds %struct.vfpf_port_phys_id_resp_tlv, %struct.vfpf_port_phys_id_resp_tlv* %284, i32 0, i32 0
  %286 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %285, align 8
  %287 = load i32, i32* @ETH_ALEN, align 4
  %288 = call i32 @memcpy(%struct.TYPE_23__* %283, %struct.pfvf_acquire_resp_tlv* %286, i32 %287)
  %289 = load i32, i32* @HAS_PHYS_PORT_ID, align 4
  %290 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %291 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %280, %272
  %295 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %296 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %10, align 8
  %297 = load i32, i32* @CHANNEL_TLV_FP_HSI_SUPPORT, align 4
  %298 = call %struct.vfpf_fp_hsi_resp_tlv* @bnx2x_search_tlv_list(%struct.bnx2x* %295, %struct.pfvf_acquire_resp_tlv* %296, i32 %297)
  store %struct.vfpf_fp_hsi_resp_tlv* %298, %struct.vfpf_fp_hsi_resp_tlv** %12, align 8
  %299 = load %struct.vfpf_fp_hsi_resp_tlv*, %struct.vfpf_fp_hsi_resp_tlv** %12, align 8
  %300 = icmp ne %struct.vfpf_fp_hsi_resp_tlv* %299, null
  br i1 %300, label %315, label %301

301:                                              ; preds = %294
  %302 = load i64, i64* @ETH_FP_HSI_VERSION, align 8
  %303 = load i64, i64* @ETH_FP_HSI_VER_2, align 8
  %304 = icmp sgt i64 %302, %303
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %307 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %308 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %309 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %308, i32 0, i32 0
  %310 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %307, %struct.TYPE_24__* %309)
  %311 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %312 = call i32 @bnx2x_vfpf_release(%struct.bnx2x* %311)
  %313 = load i32, i32* @EINVAL, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %7, align 4
  br label %423

315:                                              ; preds = %301, %294
  %316 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %317 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = and i32 %320, 65535
  %322 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %323 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %322, i32 0, i32 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %321
  store i32 %326, i32* %324, align 8
  %327 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %328 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %327, i32 0, i32 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %332 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %331, i32 0, i32 12
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 0
  store i32 %330, i32* %333, align 4
  %334 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %335 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %340 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %339, i32 0, i32 11
  store i32 %338, i32* %340, align 8
  %341 = load i32, i32* @INT_BLOCK_IGU, align 4
  %342 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %343 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %342, i32 0, i32 8
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 3
  store i32 %341, i32* %344, align 4
  %345 = load i32, i32* @CHIP_2_PORT_MODE, align 4
  %346 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %347 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %346, i32 0, i32 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 2
  store i32 %345, i32* %348, align 8
  %349 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %350 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %349, i32 0, i32 1
  store i32 -1, i32* %350, align 4
  %351 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %352 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %351, i32 0, i32 10
  store i64 0, i64* %352, align 8
  %353 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %354 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %353, i32 0, i32 9
  store i64 0, i64* %354, align 8
  %355 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %356 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %355, i32 0, i32 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 1
  store i64 0, i64* %357, align 8
  %358 = load i32, i32* @NO_WOL_FLAG, align 4
  %359 = load i32, i32* @NO_ISCSI_OOO_FLAG, align 4
  %360 = or i32 %358, %359
  %361 = load i32, i32* @NO_ISCSI_FLAG, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* @NO_FCOE_FLAG, align 4
  %364 = or i32 %362, %363
  %365 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %366 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %370 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 3
  %373 = load i8*, i8** %372, align 8
  %374 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %375 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %374, i32 0, i32 7
  store i8* %373, i8** %375, align 8
  %376 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %377 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 2
  %380 = load %struct.TYPE_27__*, %struct.TYPE_27__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %380, i64 0
  %382 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %385 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %384, i32 0, i32 6
  store i32 %383, i32* %385, align 8
  %386 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %387 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 1
  %390 = load i8*, i8** %389, align 8
  %391 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %392 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %391, i32 0, i32 5
  store i8* %390, i8** %392, align 8
  %393 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %394 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %397 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @strlcpy(i32 %395, i32 %400, i32 4)
  %402 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %403 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 0
  %406 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %405, align 8
  %407 = call i64 @is_valid_ether_addr(%struct.pfvf_acquire_resp_tlv* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %422

409:                                              ; preds = %315
  %410 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %411 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %410, i32 0, i32 3
  %412 = load %struct.TYPE_29__*, %struct.TYPE_29__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %412, i32 0, i32 0
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %413, align 8
  %415 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %416 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 0
  %419 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %418, align 8
  %420 = load i32, i32* @ETH_ALEN, align 4
  %421 = call i32 @memcpy(%struct.TYPE_23__* %414, %struct.pfvf_acquire_resp_tlv* %419, i32 %420)
  br label %422

422:                                              ; preds = %409, %315
  br label %423

423:                                              ; preds = %422, %305, %267, %130, %33
  %424 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %425 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %426 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %425, i32 0, i32 0
  %427 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %424, %struct.TYPE_24__* %426)
  %428 = load i32, i32* %7, align 4
  ret i32 %428
}

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @bnx2x_get_vf_id(%struct.bnx2x*, i32*) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_acquire_tlv*, i64, i32, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_acquire_tlv*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_23__*, %struct.pfvf_acquire_resp_tlv*, i32) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local %struct.vfpf_fp_hsi_resp_tlv* @bnx2x_search_tlv_list(%struct.bnx2x*, %struct.pfvf_acquire_resp_tlv*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_24__*) #1

declare dso_local i32 @bnx2x_vfpf_release(%struct.bnx2x*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @is_valid_ether_addr(%struct.pfvf_acquire_resp_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
