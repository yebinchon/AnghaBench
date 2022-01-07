; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_hwrm_cfa_flow_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_hwrm_cfa_flow_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32 }
%struct.bnxt_tc_flow = type { i32, %struct.bnxt_tc_l3_key, %struct.TYPE_21__, %struct.TYPE_14__, i32, %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key, %struct.bnxt_tc_actions }
%struct.TYPE_21__ = type { %struct.TYPE_12__, %struct.TYPE_19__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i8*, i64, i32, i32**, i32** }
%struct.bnxt_tc_l3_key = type { %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32** }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.bnxt_tc_actions = type { i32, i32, i64, i32 }
%struct.bnxt_tc_flow_node = type { i32, i32, i32 }
%struct.hwrm_cfa_flow_alloc_input = type { i8*, i8*, i32*, i32, i32*, i32, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32*, i32, i32, i32, i32, i8*, i32 }
%struct.hwrm_cfa_flow_alloc_output = type { i32, i32, i32 }

@HWRM_CFA_FLOW_ALLOC = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_TUNNEL_DECAP = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_FLAGS_TUNNEL = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_TUNNEL = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_ETH_ADDRS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_FLAGS_NUM_VLAN_ONE = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_L2 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV4 = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV6 = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_IPV4_ADDRS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_IPV6_ADDRS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_PORTS = common dso_local global i32 0, align 4
@BNXT_TC_FLOW_FLAGS_ICMP = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_DROP = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_DROP = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_FWD = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_FWD = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_PUSH_VLAN = common dso_local global i32 0, align 4
@CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_L2_HEADER_REWRITE = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_POP_VLAN = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_FW_CAP_OVS_64BIT_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_flow*, i32, i32, %struct.bnxt_tc_flow_node*)* @bnxt_hwrm_cfa_flow_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_cfa_flow_alloc(%struct.bnxt* %0, %struct.bnxt_tc_flow* %1, i32 %2, i32 %3, %struct.bnxt_tc_flow_node* %4) #0 {
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_tc_flow*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt_tc_flow_node*, align 8
  %11 = alloca %struct.bnxt_tc_actions*, align 8
  %12 = alloca %struct.bnxt_tc_l3_key*, align 8
  %13 = alloca %struct.bnxt_tc_l3_key*, align 8
  %14 = alloca %struct.hwrm_cfa_flow_alloc_input, align 8
  %15 = alloca %struct.hwrm_cfa_flow_alloc_output*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.bnxt_tc_flow_node* %4, %struct.bnxt_tc_flow_node** %10, align 8
  %19 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %20 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %19, i32 0, i32 7
  store %struct.bnxt_tc_actions* %20, %struct.bnxt_tc_actions** %11, align 8
  %21 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %22 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %21, i32 0, i32 6
  store %struct.bnxt_tc_l3_key* %22, %struct.bnxt_tc_l3_key** %12, align 8
  %23 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %24 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %23, i32 0, i32 5
  store %struct.bnxt_tc_l3_key* %24, %struct.bnxt_tc_l3_key** %13, align 8
  %25 = bitcast %struct.hwrm_cfa_flow_alloc_input* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 176, i1 false)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %27 = load i32, i32* @HWRM_CFA_FLOW_ALLOC, align 4
  %28 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %26, %struct.hwrm_cfa_flow_alloc_input* %14, i32 %27, i32 -1, i32 -1)
  %29 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %30 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 22
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 21
  store i32 %34, i32* %35, align 4
  %36 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %37 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_DECAP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %5
  %43 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %44 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42, %5
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 20
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @CFA_FLOW_ALLOC_REQ_FLAGS_TUNNEL, align 4
  %53 = load i32, i32* %16, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* @CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_TUNNEL, align 4
  %56 = load i32, i32* %17, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %49, %42
  %59 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %60 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %65 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 19
  store i32 %67, i32* %68, align 4
  %69 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %70 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BNXT_TC_FLOW_FLAGS_ETH_ADDRS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %79 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32* %77, i32** %81, i32 %82)
  %84 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %87 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* @ETH_ALEN, align 4
  %91 = call i32 @memcpy(i32* %85, i32** %89, i32 %90)
  br label %92

92:                                               ; preds = %75, %58
  %93 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %94 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i32, i32* @CFA_FLOW_ALLOC_REQ_FLAGS_NUM_VLAN_ONE, align 4
  %100 = load i32, i32* %16, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %103 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 18
  store i32 %105, i32* %106, align 8
  br label %107

107:                                              ; preds = %98, %92
  %108 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %12, align 8
  %109 = call i64 @is_wildcard(%struct.bnxt_tc_l3_key* %108, i32 48)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %113 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %112, i32 0, i32 1
  %114 = call i64 @is_wildcard(%struct.bnxt_tc_l3_key* %113, i32 48)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_L2, align 4
  %118 = load i32, i32* %16, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %16, align 4
  br label %209

120:                                              ; preds = %111, %107
  %121 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %122 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @ETH_P_IP, align 4
  %126 = call i8* @htons(i32 %125)
  %127 = icmp eq i8* %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV4, align 4
  br label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @CFA_FLOW_ALLOC_REQ_FLAGS_FLOWTYPE_IPV6, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load i32, i32* %16, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %16, align 4
  %136 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %137 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @BNXT_TC_FLOW_FLAGS_IPV4_ADDRS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %173

142:                                              ; preds = %132
  %143 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %13, align 8
  %144 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 17
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %147, i32* %150, align 4
  %151 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %12, align 8
  %152 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @inet_mask_len(i32 %155)
  %157 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 16
  store i8* %156, i8** %157, align 8
  %158 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %13, align 8
  %159 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 15
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %162, i32* %165, align 4
  %166 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %12, align 8
  %167 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @inet_mask_len(i32 %170)
  %172 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 14
  store i8* %171, i8** %172, align 8
  br label %208

173:                                              ; preds = %132
  %174 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %175 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @BNXT_TC_FLOW_FLAGS_IPV6_ADDRS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %207

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 17
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %13, align 8
  %184 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32**, i32*** %186, align 8
  %188 = call i32 @memcpy(i32* %182, i32** %187, i32 8)
  %189 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %12, align 8
  %190 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = call i8* @ipv6_mask_len(%struct.TYPE_13__* %191)
  %193 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 16
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 15
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %13, align 8
  %197 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32**, i32*** %199, align 8
  %201 = call i32 @memcpy(i32* %195, i32** %200, i32 8)
  %202 = load %struct.bnxt_tc_l3_key*, %struct.bnxt_tc_l3_key** %12, align 8
  %203 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = call i8* @ipv6_mask_len(%struct.TYPE_13__* %204)
  %206 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 14
  store i8* %205, i8** %206, align 8
  br label %207

207:                                              ; preds = %180, %173
  br label %208

208:                                              ; preds = %207, %142
  br label %209

209:                                              ; preds = %208, %116
  %210 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %211 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @BNXT_TC_FLOW_FLAGS_PORTS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %241

216:                                              ; preds = %209
  %217 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %218 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 13
  store i8* %221, i8** %222, align 8
  %223 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %224 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 12
  store i8* %227, i8** %228, align 8
  %229 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %230 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 11
  store i8* %233, i8** %234, align 8
  %235 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %236 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 10
  store i8* %239, i8** %240, align 8
  br label %278

241:                                              ; preds = %209
  %242 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %243 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @BNXT_TC_FLOW_FLAGS_ICMP, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %277

248:                                              ; preds = %241
  %249 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %250 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @htons(i32 %253)
  %255 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 13
  store i8* %254, i8** %255, align 8
  %256 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %257 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @htons(i32 %260)
  %262 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 12
  store i8* %261, i8** %262, align 8
  %263 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %264 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i8* @htons(i32 %267)
  %269 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 11
  store i8* %268, i8** %269, align 8
  %270 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %271 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i8* @htons(i32 %274)
  %276 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 10
  store i8* %275, i8** %276, align 8
  br label %277

277:                                              ; preds = %248, %241
  br label %278

278:                                              ; preds = %277, %216
  %279 = load i32, i32* %16, align 4
  %280 = call i8* @cpu_to_le16(i32 %279)
  %281 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 9
  store i8* %280, i8** %281, align 8
  %282 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %283 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @BNXT_TC_ACTION_FLAG_DROP, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %278
  %289 = load i32, i32* @CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_DROP, align 4
  %290 = load i32, i32* %17, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %17, align 4
  br label %356

292:                                              ; preds = %278
  %293 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %294 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @BNXT_TC_ACTION_FLAG_FWD, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %292
  %300 = load i32, i32* @CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_FWD, align 4
  %301 = load i32, i32* %17, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %17, align 4
  %303 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %304 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = call i8* @cpu_to_le16(i32 %305)
  %307 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 8
  store i8* %306, i8** %307, align 8
  br label %308

308:                                              ; preds = %299, %292
  %309 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %310 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @BNXT_TC_ACTION_FLAG_PUSH_VLAN, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %335

315:                                              ; preds = %308
  %316 = load i32, i32* @CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_L2_HEADER_REWRITE, align 4
  %317 = load i32, i32* %17, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %17, align 4
  %319 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %320 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 6
  store i64 %321, i64* %322, align 8
  %323 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %324 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 7
  store i32 %325, i32* %326, align 8
  %327 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 5
  %328 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 4
  %329 = load i32, i32* @ETH_ALEN, align 4
  %330 = call i32 @memcpy(i32* %327, i32** %328, i32 %329)
  %331 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 3
  %332 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 2
  %333 = load i32, i32* @ETH_ALEN, align 4
  %334 = call i32 @memcpy(i32* %331, i32** %332, i32 %333)
  br label %335

335:                                              ; preds = %315, %308
  %336 = load %struct.bnxt_tc_actions*, %struct.bnxt_tc_actions** %11, align 8
  %337 = getelementptr inbounds %struct.bnxt_tc_actions, %struct.bnxt_tc_actions* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @BNXT_TC_ACTION_FLAG_POP_VLAN, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %355

342:                                              ; preds = %335
  %343 = load i32, i32* @CFA_FLOW_ALLOC_REQ_ACTION_FLAGS_L2_HEADER_REWRITE, align 4
  %344 = load i32, i32* %17, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %17, align 4
  %346 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 6
  store i64 0, i64* %346, align 8
  %347 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 5
  %348 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 4
  %349 = load i32, i32* @ETH_ALEN, align 4
  %350 = call i32 @memcpy(i32* %347, i32** %348, i32 %349)
  %351 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 3
  %352 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 2
  %353 = load i32, i32* @ETH_ALEN, align 4
  %354 = call i32 @memcpy(i32* %351, i32** %352, i32 %353)
  br label %355

355:                                              ; preds = %342, %335
  br label %356

356:                                              ; preds = %355, %288
  %357 = load i32, i32* %17, align 4
  %358 = call i8* @cpu_to_le16(i32 %357)
  %359 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, %struct.hwrm_cfa_flow_alloc_input* %14, i32 0, i32 1
  store i8* %358, i8** %359, align 8
  %360 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %361 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %360, i32 0, i32 1
  %362 = call i32 @mutex_lock(i32* %361)
  %363 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %364 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %365 = call i32 @_hwrm_send_message(%struct.bnxt* %363, %struct.hwrm_cfa_flow_alloc_input* %14, i32 176, i32 %364)
  store i32 %365, i32* %18, align 4
  %366 = load i32, i32* %18, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %394, label %368

368:                                              ; preds = %356
  %369 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %370 = call %struct.hwrm_cfa_flow_alloc_output* @bnxt_get_hwrm_resp_addr(%struct.bnxt* %369, %struct.hwrm_cfa_flow_alloc_input* %14)
  store %struct.hwrm_cfa_flow_alloc_output* %370, %struct.hwrm_cfa_flow_alloc_output** %15, align 8
  %371 = load %struct.hwrm_cfa_flow_alloc_output*, %struct.hwrm_cfa_flow_alloc_output** %15, align 8
  %372 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_output, %struct.hwrm_cfa_flow_alloc_output* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %10, align 8
  %375 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %374, i32 0, i32 2
  store i32 %373, i32* %375, align 4
  %376 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %377 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @BNXT_FW_CAP_OVS_64BIT_HANDLE, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %393

382:                                              ; preds = %368
  %383 = load %struct.hwrm_cfa_flow_alloc_output*, %struct.hwrm_cfa_flow_alloc_output** %15, align 8
  %384 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_output, %struct.hwrm_cfa_flow_alloc_output* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %10, align 8
  %387 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  %388 = load %struct.hwrm_cfa_flow_alloc_output*, %struct.hwrm_cfa_flow_alloc_output** %15, align 8
  %389 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_output, %struct.hwrm_cfa_flow_alloc_output* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %10, align 8
  %392 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %391, i32 0, i32 0
  store i32 %390, i32* %392, align 4
  br label %393

393:                                              ; preds = %382, %368
  br label %394

394:                                              ; preds = %393, %356
  %395 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %396 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %395, i32 0, i32 1
  %397 = call i32 @mutex_unlock(i32* %396)
  %398 = load i32, i32* %18, align 4
  ret i32 %398
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_cfa_flow_alloc_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i32*, i32**, i32) #2

declare dso_local i64 @is_wildcard(%struct.bnxt_tc_l3_key*, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i8* @inet_mask_len(i32) #2

declare dso_local i8* @ipv6_mask_len(%struct.TYPE_13__*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_cfa_flow_alloc_input*, i32, i32) #2

declare dso_local %struct.hwrm_cfa_flow_alloc_output* @bnxt_get_hwrm_resp_addr(%struct.bnxt*, %struct.hwrm_cfa_flow_alloc_input*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
