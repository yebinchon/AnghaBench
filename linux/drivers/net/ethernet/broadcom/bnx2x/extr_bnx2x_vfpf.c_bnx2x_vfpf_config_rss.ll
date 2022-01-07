; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_config_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.vfpf_rss_tlv }
%struct.vfpf_rss_tlv = type { i32, %struct.TYPE_13__, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.pfvf_general_resp_tlv }
%struct.pfvf_general_resp_tlv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.bnx2x_config_rss_params = type { i32, i32, i32, i32 }

@CHANNEL_TLV_UPDATE_RSS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@T_ETH_INDIRECTION_TABLE_SIZE = common dso_local global i32 0, align 4
@T_ETH_RSS_KEY = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@VFPF_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@VFPF_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@BNX2X_RSS_SET_SRCH = common dso_local global i32 0, align 4
@VFPF_RSS_SET_SRCH = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4 = common dso_local global i32 0, align 4
@VFPF_RSS_IPV4 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@VFPF_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@VFPF_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6 = common dso_local global i32 0, align 4
@VFPF_RSS_IPV6 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@VFPF_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@VFPF_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rss flags %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to send message to pf. rc was %d\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Failed to send rss message to PF over VF-PF channel [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_config_rss(%struct.bnx2x* %0, %struct.bnx2x_config_rss_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_config_rss_params*, align 8
  %5 = alloca %struct.pfvf_general_resp_tlv*, align 8
  %6 = alloca %struct.vfpf_rss_tlv*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_config_rss_params* %1, %struct.bnx2x_config_rss_params** %4, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store %struct.pfvf_general_resp_tlv* %12, %struct.pfvf_general_resp_tlv** %5, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store %struct.vfpf_rss_tlv* %17, %struct.vfpf_rss_tlv** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %20 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %19, i32 0, i32 1
  %21 = load i32, i32* @CHANNEL_TLV_UPDATE_RSS, align 4
  %22 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %18, %struct.TYPE_13__* %20, i32 %21, i32 28)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %25 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %26 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %31 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %23, %struct.vfpf_rss_tlv* %24, i32 %29, i32 %30, i32 4)
  %32 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %33 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %36 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %39 = call i32 @memcpy(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %41 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %42, i32 %45, i32 4)
  %47 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %48 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %49 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @T_ETH_RSS_KEY, align 4
  %51 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %52 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %57 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %59 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BNX2X_RSS_MODE_DISABLED, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %2
  %66 = load i32, i32* @VFPF_RSS_MODE_DISABLED, align 4
  %67 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %68 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %2
  %72 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %73 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BNX2X_RSS_MODE_REGULAR, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i32, i32* @VFPF_RSS_MODE_REGULAR, align 4
  %81 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %82 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %87 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BNX2X_RSS_SET_SRCH, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* @VFPF_RSS_SET_SRCH, align 4
  %95 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %96 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %85
  %100 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %101 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @BNX2X_RSS_IPV4, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* @VFPF_RSS_IPV4, align 4
  %109 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %110 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %99
  %114 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %115 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @BNX2X_RSS_IPV4_TCP, align 4
  %118 = shl i32 1, %117
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load i32, i32* @VFPF_RSS_IPV4_TCP, align 4
  %123 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %124 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %113
  %128 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %129 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BNX2X_RSS_IPV4_UDP, align 4
  %132 = shl i32 1, %131
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @VFPF_RSS_IPV4_UDP, align 4
  %137 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %138 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %127
  %142 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %143 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BNX2X_RSS_IPV6, align 4
  %146 = shl i32 1, %145
  %147 = and i32 %144, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load i32, i32* @VFPF_RSS_IPV6, align 4
  %151 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %152 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %141
  %156 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %157 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @BNX2X_RSS_IPV6_TCP, align 4
  %160 = shl i32 1, %159
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load i32, i32* @VFPF_RSS_IPV6_TCP, align 4
  %165 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %166 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %155
  %170 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %171 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @BNX2X_RSS_IPV6_UDP, align 4
  %174 = shl i32 1, %173
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load i32, i32* @VFPF_RSS_IPV6_UDP, align 4
  %179 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %180 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %169
  %184 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %185 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %186 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @DP(i32 %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %190 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %191 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %189, %struct.vfpf_rss_tlv* %190)
  %192 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %193 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %194 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %197 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %192, i32* %195, i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %183
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  br label %220

205:                                              ; preds = %183
  %206 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %207 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %214 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %5, align 8
  %215 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @DP(i32 %213, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %212, %205
  br label %220

220:                                              ; preds = %219, %202
  %221 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %222 = load %struct.vfpf_rss_tlv*, %struct.vfpf_rss_tlv** %6, align 8
  %223 = getelementptr inbounds %struct.vfpf_rss_tlv, %struct.vfpf_rss_tlv* %222, i32 0, i32 1
  %224 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %221, %struct.TYPE_13__* %223)
  %225 = load i32, i32* %7, align 4
  ret i32 %225
}

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_rss_tlv*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_rss_tlv*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
