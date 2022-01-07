; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_9__, %struct.qed_vf_iov* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.qed_vf_iov = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_14__*, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.pfvf_acquire_resp_tlv }
%struct.pfvf_acquire_resp_tlv = type { %struct.pf_vf_pfdev_info, i32, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.pf_vf_pfdev_info = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.vf_pf_resc_request = type { i32, i32, i32, i8*, i8*, i8* }
%struct.vfpf_acquire_tlv = type { %struct.TYPE_12__, i32, i32, %struct.vf_pf_resc_request }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@VF_ACQUIRE_THRESH = common dso_local global i32 0, align 4
@CHANNEL_TLV_ACQUIRE = common dso_local global i32 0, align 4
@QED_MAX_VF_CHAINS_PER_PF = common dso_local global i8* null, align 8
@QED_ETH_VF_NUM_MAC_FILTERS = common dso_local global i32 0, align 4
@QED_ETH_VF_NUM_VLAN_FILTERS = common dso_local global i32 0, align 4
@QED_ETH_VF_DEFAULT_NUM_CIDS = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_OS_LINUX = common dso_local global i32 0, align 4
@FW_MAJOR_VERSION = common dso_local global i32 0, align 4
@FW_MINOR_VERSION = common dso_local global i32 0, align 4
@FW_REVISION_VERSION = common dso_local global i32 0, align 4
@FW_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@ETH_HSI_VER_MAJOR = common dso_local global i64 0, align 8
@ETH_HSI_VER_MINOR = common dso_local global i64 0, align 8
@VFPF_ACQUIRE_CAP_100G = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_CAP_PHYSICAL_BAR = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@QED_ETH_VF_MAX_NUM_CIDS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"attempting to acquire resources\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"VF retrying to acquire due to VPC timeout\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_CAP_PRE_FP_HSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"resources acquired\0A\00", align 1
@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [117 x i8] c"PF uses an incompatible fastpath HSI %02x.%02x [VF requires %02x.%02x]. Please change to a VF driver using %02x.xx.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [85 x i8] c"PF uses very old drivers. Please change to a VF driver using no later than 8.8.x.x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"PF is old - try re-acquire to see if it supports FW-version override\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"PF rejected acquisition by VF\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"PF returned error %d to VF acquisition request\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@PFVF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@PFVF_ACQUIRE_CAP_100G = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"100g VF\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"PF is using older fastpath HSI; %02x.%02x is configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_vf_pf_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_vf_pf_acquire(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_vf_iov*, align 8
  %4 = alloca %struct.pfvf_acquire_resp_tlv*, align 8
  %5 = alloca %struct.pf_vf_pfdev_info*, align 8
  %6 = alloca %struct.vf_pf_resc_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfpf_acquire_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 2
  %14 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %13, align 8
  store %struct.qed_vf_iov* %14, %struct.qed_vf_iov** %3, align 8
  %15 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %16 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %15, i32 0, i32 3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store %struct.pfvf_acquire_resp_tlv* %18, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %19 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %20 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %19, i32 0, i32 0
  store %struct.pf_vf_pfdev_info* %20, %struct.pf_vf_pfdev_info** %5, align 8
  %21 = load i32, i32* @VF_ACQUIRE_THRESH, align 4
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %23 = load i32, i32* @CHANNEL_TLV_ACQUIRE, align 4
  %24 = call %struct.vfpf_acquire_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %22, i32 %23, i32 96)
  store %struct.vfpf_acquire_tlv* %24, %struct.vfpf_acquire_tlv** %9, align 8
  %25 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %26 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %25, i32 0, i32 3
  store %struct.vf_pf_resc_request* %26, %struct.vf_pf_resc_request** %6, align 8
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %32 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 8
  store i32 %30, i32* %33, align 4
  %34 = load i8*, i8** @QED_MAX_VF_CHAINS_PER_PF, align 8
  %35 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %36 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @QED_MAX_VF_CHAINS_PER_PF, align 8
  %38 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %39 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @QED_MAX_VF_CHAINS_PER_PF, align 8
  %41 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %42 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @QED_ETH_VF_NUM_MAC_FILTERS, align 4
  %44 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %45 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @QED_ETH_VF_NUM_VLAN_FILTERS, align 4
  %47 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %48 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @QED_ETH_VF_DEFAULT_NUM_CIDS, align 4
  %50 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %51 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @VFPF_ACQUIRE_OS_LINUX, align 4
  %53 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %54 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 7
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @FW_MAJOR_VERSION, align 4
  %57 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %58 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @FW_MINOR_VERSION, align 4
  %61 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %62 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @FW_REVISION_VERSION, align 4
  %65 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %66 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @FW_ENGINEERING_VERSION, align 4
  %69 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %70 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 8
  %72 = load i64, i64* @ETH_HSI_VER_MAJOR, align 8
  %73 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %74 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  %77 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %78 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load i32, i32* @VFPF_ACQUIRE_CAP_100G, align 4
  %81 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %82 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 8
  %86 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %87 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %1
  %91 = load i32, i32* @VFPF_ACQUIRE_CAP_PHYSICAL_BAR, align 4
  %92 = load i32, i32* @VFPF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %95 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @QED_ETH_VF_MAX_NUM_CIDS, align 4
  %100 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %101 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %90, %1
  %103 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %104 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %108 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %110 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %114 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %116 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %117 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %116, i32 0, i32 4
  %118 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %119 = call i32 @qed_add_tlv(%struct.qed_hwfn* %115, i32* %117, i32 %118, i32 4)
  br label %120

120:                                              ; preds = %279, %255, %144, %102
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br i1 %123, label %124, label %280

124:                                              ; preds = %120
  %125 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %126 = load i32, i32* @QED_MSG_IOV, align 4
  %127 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %125, i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %129 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %128, i32 0, i32 3
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = call i32 @memset(%struct.TYPE_14__* %130, i32 0, i32 4)
  %132 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %133 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %134 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %132, i64* %135, i32 80)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %124
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @EBUSY, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %146 = load i32, i32* @QED_MSG_IOV, align 4
  %147 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %145, i32 %146, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %7, align 4
  br label %120

150:                                              ; preds = %139, %124
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %383

154:                                              ; preds = %150
  %155 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %156 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %155, i32 0, i32 2
  %157 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %158 = call i32 @memcpy(i32* %156, %struct.pfvf_acquire_resp_tlv* %157, i32 4)
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  %161 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %162 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %154
  %168 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %169 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %167
  %176 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %177 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %178 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %175, %167
  %183 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %184 = load i32, i32* @QED_MSG_IOV, align 4
  %185 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %183, i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %279

186:                                              ; preds = %154
  %187 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %188 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %186
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @VF_ACQUIRE_THRESH, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %199 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %6, align 8
  %200 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %201 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %200, i32 0, i32 2
  %202 = call i32 @qed_vf_pf_acquire_reduce_resc(%struct.qed_hwfn* %198, %struct.vf_pf_resc_request* %199, %struct.TYPE_13__* %201)
  br label %278

203:                                              ; preds = %193, %186
  %204 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %205 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @PFVF_STATUS_NOT_SUPPORTED, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %269

210:                                              ; preds = %203
  %211 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %212 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %210
  %216 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %217 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @ETH_HSI_VER_MAJOR, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %215
  %222 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %223 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %224 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %227 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @ETH_HSI_VER_MAJOR, align 8
  %230 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  %231 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %232 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %222, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i64 0, i64 0), i64 %225, i64 %228, i64 %229, i64 %230, i64 %233)
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %10, align 4
  br label %383

237:                                              ; preds = %215, %210
  %238 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %239 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %264, label %242

242:                                              ; preds = %237
  %243 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %244 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %242
  %251 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %252 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %251, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %10, align 4
  br label %383

255:                                              ; preds = %242
  %256 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %257 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_INFO(%struct.qed_hwfn* %256, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %258 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %259 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %260 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %258
  store i32 %263, i32* %261, align 8
  br label %120

264:                                              ; preds = %237
  %265 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %266 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %265, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %10, align 4
  br label %383

269:                                              ; preds = %203
  %270 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %271 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %272 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @DP_ERR(%struct.qed_hwfn* %270, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 %274)
  %276 = load i32, i32* @EAGAIN, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %10, align 4
  br label %383

278:                                              ; preds = %197
  br label %279

279:                                              ; preds = %278, %182
  br label %120

280:                                              ; preds = %120
  %281 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %282 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %280
  %289 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %290 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %289, i32 0, i32 0
  store i32 1, i32* %290, align 8
  br label %291

291:                                              ; preds = %288, %280
  %292 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %293 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @PFVF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %312, label %299

299:                                              ; preds = %291
  %300 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %301 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %305 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %303, %307
  %309 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %310 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 2
  store i64 %308, i64* %311, align 8
  br label %312

312:                                              ; preds = %299, %291
  %313 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %314 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %317 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  store i32 %315, i32* %318, align 4
  %319 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %320 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %324 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %323, i32 0, i32 0
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 3
  store i32 %322, i32* %326, align 4
  %327 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %328 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %332 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %331, i32 0, i32 0
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 2
  store i32 %330, i32* %334, align 4
  %335 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %336 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, 65535
  %339 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %340 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %339, i32 0, i32 0
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  store i32 %338, i32* %342, align 4
  %343 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %344 = call i64 @IS_LEAD_HWFN(%struct.qed_hwfn* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %362

346:                                              ; preds = %312
  %347 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %348 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @PFVF_ACQUIRE_CAP_100G, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %346
  %355 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %356 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %355, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %357 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %358 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %357, i32 0, i32 0
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 1
  store i32 2, i32* %360, align 4
  br label %361

361:                                              ; preds = %354, %346
  br label %362

362:                                              ; preds = %361, %312
  %363 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %3, align 8
  %364 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %382, label %367

367:                                              ; preds = %362
  %368 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %369 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  %373 = icmp slt i64 %371, %372
  br i1 %373, label %374, label %382

374:                                              ; preds = %367
  %375 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %376 = load i64, i64* @ETH_HSI_VER_MAJOR, align 8
  %377 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %378 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_INFO(%struct.qed_hwfn* %375, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i64 %376, i64 %380)
  br label %382

382:                                              ; preds = %374, %367, %362
  br label %383

383:                                              ; preds = %382, %269, %264, %250, %221, %153
  %384 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %385 = load i32, i32* %10, align 4
  %386 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %384, i32 %385)
  %387 = load i32, i32* %10, align 4
  ret i32 %387
}

declare dso_local %struct.vfpf_acquire_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.pfvf_acquire_resp_tlv*, i32) #1

declare dso_local i32 @qed_vf_pf_acquire_reduce_resc(%struct.qed_hwfn*, %struct.vf_pf_resc_request*, %struct.TYPE_13__*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local i64 @IS_LEAD_HWFN(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
