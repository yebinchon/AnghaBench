; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ibmveth_adapter = type { i32, %struct.TYPE_9__*, i32, i32, i64, i8*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%union.ibmveth_buf_desc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i64, i32* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tx: failed to checksum packet\0A\00", align 1
@IBMVETH_BUF_VALID = common dso_local global i32 0, align 4
@IBMVETH_BUF_NO_CSUM = common dso_local global i32 0, align 4
@IBMVETH_BUF_CSUM_GOOD = common dso_local global i32 0, align 4
@IBMVETH_BUF_LRG_SND = common dso_local global i32 0, align 4
@tx_copybreak = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IBMVETH_BUF_LEN_MASK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"tx: unable to map xmit buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ibmveth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x %union.ibmveth_buf_desc], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.ibmveth_adapter* %16, %struct.ibmveth_adapter** %5, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %17 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i64 @skb_has_frag_list(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i64 @__skb_linearize(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %413

35:                                               ; preds = %25, %21, %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 5
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i64 @__skb_linearize(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %413

51:                                               ; preds = %41, %35
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %51
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @ETH_P_IP, align 4
  %62 = call i64 @htons(i32 %61)
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IPPROTO_TCP, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %85, label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @ETH_P_IPV6, align 4
  %76 = call i64 @htons(i32 %75)
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = call %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IPPROTO_TCP, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %78, %64
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = call i64 @skb_checksum_help(%struct.sk_buff* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %413

97:                                               ; preds = %85, %78, %71, %51
  %98 = load i32, i32* @IBMVETH_BUF_VALID, align 4
  store i32 %98, i32* %6, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call i8* @skb_transport_header(%struct.sk_buff* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  store i8* %111, i8** %13, align 8
  %112 = load i32, i32* @IBMVETH_BUF_NO_CSUM, align 4
  %113 = load i32, i32* @IBMVETH_BUF_CSUM_GOOD, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8 0, i8* %120, align 1
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = call i64 @skb_is_gso(%struct.sk_buff* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %104
  %125 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %126 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @IBMVETH_BUF_LRG_SND, align 4
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %129, %124, %104
  br label %134

134:                                              ; preds = %133, %97
  br label %135

135:                                              ; preds = %486, %134
  %136 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %137 = call i32 @memset(%union.ibmveth_buf_desc* %136, i32 0, i32 96)
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %142 = call i32 @skb_is_nonlinear(%struct.sk_buff* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %202, label %144

144:                                              ; preds = %140
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @tx_copybreak, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %202

150:                                              ; preds = %144, %135
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %153 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %151, i32 %154, i32 %157)
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %159, %162
  %164 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %165 = bitcast %union.ibmveth_buf_desc* %164 to %struct.TYPE_10__*
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 16
  %167 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %168 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %167, i32 0, i32 5
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %171 = bitcast %union.ibmveth_buf_desc* %170 to %struct.TYPE_10__*
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  store i8* %169, i8** %172, align 8
  %173 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %174 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %175 = call i64 @ibmveth_send(%struct.ibmveth_adapter* %173, %union.ibmveth_buf_desc* %174, i64 0)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %150
  %178 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %179 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  %182 = load %struct.net_device*, %struct.net_device** %4, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %201

187:                                              ; preds = %150
  %188 = load %struct.net_device*, %struct.net_device** %4, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.net_device*, %struct.net_device** %4, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, %195
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %187, %177
  br label %413

202:                                              ; preds = %144, %140
  %203 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %204 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %203, i32 0, i32 1
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %211 = call i32 @skb_headlen(%struct.sk_buff* %210)
  %212 = load i32, i32* @DMA_TO_DEVICE, align 4
  %213 = call i8* @dma_map_single(i32* %206, i32 %209, i32 %211, i32 %212)
  store i8* %213, i8** %11, align 8
  %214 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %215 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i8*, i8** %11, align 8
  %219 = call i64 @dma_mapping_error(i32* %217, i8* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %202
  br label %465

222:                                              ; preds = %202
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %225 = call i32 @skb_headlen(%struct.sk_buff* %224)
  %226 = or i32 %223, %225
  %227 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %228 = bitcast %union.ibmveth_buf_desc* %227 to %struct.TYPE_10__*
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  store i32 %226, i32* %229, align 16
  %230 = load i8*, i8** %11, align 8
  %231 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %232 = bitcast %union.ibmveth_buf_desc* %231 to %struct.TYPE_10__*
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  store i8* %230, i8** %233, align 8
  store i32 0, i32* %9, align 4
  br label %234

234:                                              ; preds = %284, %222
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %237 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %236)
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %235, %239
  br i1 %240, label %241, label %287

241:                                              ; preds = %234
  %242 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %243 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %242)
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32* %248, i32** %14, align 8
  %249 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %250 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %249, i32 0, i32 1
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32*, i32** %14, align 8
  %254 = load i32*, i32** %14, align 8
  %255 = call i32 @skb_frag_size(i32* %254)
  %256 = load i32, i32* @DMA_TO_DEVICE, align 4
  %257 = call i8* @skb_frag_dma_map(i32* %252, i32* %253, i32 0, i32 %255, i32 %256)
  store i8* %257, i8** %11, align 8
  %258 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %259 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %258, i32 0, i32 1
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i8*, i8** %11, align 8
  %263 = call i64 @dma_mapping_error(i32* %261, i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %241
  br label %417

266:                                              ; preds = %241
  %267 = load i32, i32* %6, align 4
  %268 = load i32*, i32** %14, align 8
  %269 = call i32 @skb_frag_size(i32* %268)
  %270 = or i32 %267, %269
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %273
  %275 = bitcast %union.ibmveth_buf_desc* %274 to %struct.TYPE_10__*
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  store i32 %270, i32* %276, align 16
  %277 = load i8*, i8** %11, align 8
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %280
  %282 = bitcast %union.ibmveth_buf_desc* %281 to %struct.TYPE_10__*
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  store i8* %277, i8** %283, align 8
  br label %284

284:                                              ; preds = %266
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %234

287:                                              ; preds = %234
  %288 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %289 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %333

293:                                              ; preds = %287
  %294 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %295 = call i64 @skb_is_gso(%struct.sk_buff* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %333

297:                                              ; preds = %293
  %298 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %299 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %298, i32 0, i32 4
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %297
  %303 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %304 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %303)
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %12, align 8
  %307 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %308 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  br label %332

311:                                              ; preds = %297
  %312 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %313 = call i32 @skb_is_gso_v6(%struct.sk_buff* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %331, label %315

315:                                              ; preds = %311
  %316 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %317 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %316)
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  store i32 65535, i32* %318, align 8
  %319 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %320 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %319)
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @cpu_to_be16(i64 %322)
  %324 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %325 = call %struct.TYPE_11__* @tcp_hdr(%struct.sk_buff* %324)
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 0
  store i32 %323, i32* %326, align 4
  %327 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %328 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %315, %311
  br label %332

332:                                              ; preds = %331, %302
  br label %333

333:                                              ; preds = %332, %293, %287
  %334 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %335 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %336 = load i64, i64* %12, align 8
  %337 = call i64 @ibmveth_send(%struct.ibmveth_adapter* %334, %union.ibmveth_buf_desc* %335, i64 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %349

339:                                              ; preds = %333
  %340 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %341 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %341, align 8
  %344 = load %struct.net_device*, %struct.net_device** %4, align 8
  %345 = getelementptr inbounds %struct.net_device, %struct.net_device* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %346, align 4
  br label %363

349:                                              ; preds = %333
  %350 = load %struct.net_device*, %struct.net_device** %4, align 8
  %351 = getelementptr inbounds %struct.net_device, %struct.net_device* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %352, align 4
  %355 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %356 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.net_device*, %struct.net_device** %4, align 8
  %359 = getelementptr inbounds %struct.net_device, %struct.net_device* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = add i32 %361, %357
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %349, %339
  %364 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %365 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %364, i32 0, i32 1
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  %368 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %369 = bitcast %union.ibmveth_buf_desc* %368 to %struct.TYPE_10__*
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %373 = bitcast %union.ibmveth_buf_desc* %372 to %struct.TYPE_10__*
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 16
  %376 = load i32, i32* @IBMVETH_BUF_LEN_MASK, align 4
  %377 = and i32 %375, %376
  %378 = load i32, i32* @DMA_TO_DEVICE, align 4
  %379 = call i32 @dma_unmap_single(i32* %367, i8* %371, i32 %377, i32 %378)
  store i32 1, i32* %9, align 4
  br label %380

380:                                              ; preds = %409, %363
  %381 = load i32, i32* %9, align 4
  %382 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %383 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %382)
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %385, 1
  %387 = icmp slt i32 %381, %386
  br i1 %387, label %388, label %412

388:                                              ; preds = %380
  %389 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %390 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %389, i32 0, i32 1
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 0
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %394
  %396 = bitcast %union.ibmveth_buf_desc* %395 to %struct.TYPE_10__*
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 1
  %398 = load i8*, i8** %397, align 8
  %399 = load i32, i32* %9, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %400
  %402 = bitcast %union.ibmveth_buf_desc* %401 to %struct.TYPE_10__*
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 16
  %405 = load i32, i32* @IBMVETH_BUF_LEN_MASK, align 4
  %406 = and i32 %404, %405
  %407 = load i32, i32* @DMA_TO_DEVICE, align 4
  %408 = call i32 @dma_unmap_page(i32* %392, i8* %398, i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %388
  %410 = load i32, i32* %9, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %9, align 4
  br label %380

412:                                              ; preds = %380
  br label %413

413:                                              ; preds = %480, %412, %201, %89, %45, %29
  %414 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %415 = call i32 @dev_consume_skb_any(%struct.sk_buff* %414)
  %416 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %416

417:                                              ; preds = %265
  %418 = load i32, i32* %9, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %420

420:                                              ; preds = %445, %417
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* %8, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %448

424:                                              ; preds = %420
  %425 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %426 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %425, i32 0, i32 1
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 0
  %429 = load i32, i32* %9, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %430
  %432 = bitcast %union.ibmveth_buf_desc* %431 to %struct.TYPE_10__*
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 1
  %434 = load i8*, i8** %433, align 8
  %435 = load i32, i32* %9, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 %436
  %438 = bitcast %union.ibmveth_buf_desc* %437 to %struct.TYPE_10__*
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 16
  %441 = load i32, i32* @IBMVETH_BUF_LEN_MASK, align 4
  %442 = and i32 %440, %441
  %443 = load i32, i32* @DMA_TO_DEVICE, align 4
  %444 = call i32 @dma_unmap_page(i32* %428, i8* %434, i32 %442, i32 %443)
  br label %445

445:                                              ; preds = %424
  %446 = load i32, i32* %9, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %9, align 4
  br label %420

448:                                              ; preds = %420
  %449 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %450 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %449, i32 0, i32 1
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 0
  %453 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %454 = bitcast %union.ibmveth_buf_desc* %453 to %struct.TYPE_10__*
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 1
  %456 = load i8*, i8** %455, align 8
  %457 = getelementptr inbounds [6 x %union.ibmveth_buf_desc], [6 x %union.ibmveth_buf_desc]* %7, i64 0, i64 0
  %458 = bitcast %union.ibmveth_buf_desc* %457 to %struct.TYPE_10__*
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 16
  %461 = load i32, i32* @IBMVETH_BUF_LEN_MASK, align 4
  %462 = and i32 %460, %461
  %463 = load i32, i32* @DMA_TO_DEVICE, align 4
  %464 = call i32 @dma_unmap_single(i32* %452, i8* %456, i32 %462, i32 %463)
  br label %465

465:                                              ; preds = %448, %221
  %466 = load i32, i32* @FW_FEATURE_CMO, align 4
  %467 = call i32 @firmware_has_feature(i32 %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %465
  %470 = load %struct.net_device*, %struct.net_device** %4, align 8
  %471 = call i32 @netdev_err(%struct.net_device* %470, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %472

472:                                              ; preds = %469, %465
  %473 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %474 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %474, align 8
  %477 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %478 = call i64 @skb_linearize(%struct.sk_buff* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %472
  %481 = load %struct.net_device*, %struct.net_device** %4, align 8
  %482 = getelementptr inbounds %struct.net_device, %struct.net_device* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %483, align 4
  br label %413

486:                                              ; preds = %472
  store i32 1, i32* %10, align 4
  br label %135
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_14__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @memset(%union.ibmveth_buf_desc*, i32, i32) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ibmveth_send(%struct.ibmveth_adapter*, %union.ibmveth_buf_desc*, i64) #1

declare dso_local i8* @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i8* @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_is_gso_v6(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local %struct.TYPE_11__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
