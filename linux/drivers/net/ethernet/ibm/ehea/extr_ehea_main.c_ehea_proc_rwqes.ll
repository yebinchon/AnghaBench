; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_proc_rwqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_proc_rwqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port_res = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ehea_qp*, %struct.ehea_port* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.sk_buff** }
%struct.sk_buff = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.sk_buff** }
%struct.TYPE_5__ = type { i32, %struct.sk_buff** }
%struct.ehea_qp = type { i32 }
%struct.ehea_port = type { i32 }
%struct.ehea_cqe = type { i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"CQE\00", align 1
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"LL rq1: skb=NULL\0A\00", align 1
@EHEA_L_PKT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"rq2: skb=NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"rq3: skb=NULL\0A\00", align 1
@EHEA_CQE_VLAN_TAG_XTRACT = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ehea_port_res*, i32)* @ehea_proc_rwqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_proc_rwqes(%struct.net_device* %0, %struct.ehea_port_res* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ehea_port_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehea_port*, align 8
  %8 = alloca %struct.ehea_qp*, align 8
  %9 = alloca %struct.ehea_cqe*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca %struct.sk_buff**, align 8
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ehea_port_res* %1, %struct.ehea_port_res** %5, align 8
  store i32 %2, i32* %6, align 4
  %26 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %27 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %26, i32 0, i32 8
  %28 = load %struct.ehea_port*, %struct.ehea_port** %27, align 8
  store %struct.ehea_port* %28, %struct.ehea_port** %7, align 8
  %29 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %30 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %29, i32 0, i32 7
  %31 = load %struct.ehea_qp*, %struct.ehea_qp** %30, align 8
  store %struct.ehea_qp* %31, %struct.ehea_qp** %8, align 8
  %32 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %33 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %34, align 8
  store %struct.sk_buff** %35, %struct.sk_buff*** %11, align 8
  %36 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %37 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  store %struct.sk_buff** %39, %struct.sk_buff*** %12, align 8
  %40 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %41 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %42, align 8
  store %struct.sk_buff** %43, %struct.sk_buff*** %13, align 8
  %44 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %45 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %49 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  %52 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %53 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %16, align 4
  store i64 0, i64* %21, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %23, align 4
  %56 = load %struct.ehea_qp*, %struct.ehea_qp** %8, align 8
  %57 = call %struct.ehea_cqe* @ehea_poll_rq1(%struct.ehea_qp* %56, i32* %22)
  store %struct.ehea_cqe* %57, %struct.ehea_cqe** %9, align 8
  br label %58

58:                                               ; preds = %218, %3
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %64 = icmp ne %struct.ehea_cqe* %63, null
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %67, label %221

67:                                               ; preds = %65
  %68 = load %struct.ehea_qp*, %struct.ehea_qp** %8, align 8
  %69 = call i32 @ehea_inc_rq1(%struct.ehea_qp* %68)
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  %74 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %75 = call i64 @netif_msg_rx_status(%struct.ehea_port* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %79 = call i32 @ehea_dump(%struct.ehea_cqe* %78, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %67
  %81 = load i32, i32* %22, align 4
  store i32 %81, i32* %23, align 4
  %82 = call i32 (...) @rmb()
  %83 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %84 = call i32 @ehea_check_cqe(%struct.ehea_cqe* %83, i32* %24)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %204, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %24, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %127

89:                                               ; preds = %86
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %22, align 4
  %93 = call %struct.sk_buff* @get_skb_by_index_ll(%struct.sk_buff** %90, i32 %91, i32 %92)
  store %struct.sk_buff* %93, %struct.sk_buff** %10, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = icmp ne %struct.sk_buff* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %89
  %101 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %102 = load i32, i32* @rx_err, align 4
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = call i32 @netif_info(%struct.ehea_port* %101, i32 %102, %struct.net_device* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = load i32, i32* @EHEA_L_PKT_SIZE, align 4
  %107 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %105, i32 %106)
  store %struct.sk_buff* %107, %struct.sk_buff** %10, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %221

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %89
  %113 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %114 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %115 = bitcast %struct.ehea_cqe* %114 to i8*
  %116 = getelementptr inbounds i8, i8* %115, i64 64
  %117 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %118 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, 4
  %121 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %113, i8* %116, i64 %120)
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %125 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %126 = call i32 @ehea_fill_skb(%struct.net_device* %122, %struct.sk_buff* %123, %struct.ehea_cqe* %124, %struct.ehea_port_res* %125)
  br label %179

127:                                              ; preds = %86
  %128 = load i32, i32* %24, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %154

130:                                              ; preds = %127
  %131 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %134 = call %struct.sk_buff* @get_skb_by_index(%struct.sk_buff** %131, i32 %132, %struct.ehea_cqe* %133)
  store %struct.sk_buff* %134, %struct.sk_buff** %10, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = icmp ne %struct.sk_buff* %135, null
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %130
  %142 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %143 = load i32, i32* @rx_err, align 4
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = call i32 @netif_err(%struct.ehea_port* %142, i32 %143, %struct.net_device* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %221

146:                                              ; preds = %130
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %149 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %150 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %151 = call i32 @ehea_fill_skb(%struct.net_device* %147, %struct.sk_buff* %148, %struct.ehea_cqe* %149, %struct.ehea_port_res* %150)
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %178

154:                                              ; preds = %127
  %155 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %158 = call %struct.sk_buff* @get_skb_by_index(%struct.sk_buff** %155, i32 %156, %struct.ehea_cqe* %157)
  store %struct.sk_buff* %158, %struct.sk_buff** %10, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %160 = icmp ne %struct.sk_buff* %159, null
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %167 = load i32, i32* @rx_err, align 4
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = call i32 @netif_err(%struct.ehea_port* %166, i32 %167, %struct.net_device* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %221

170:                                              ; preds = %154
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %173 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %174 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %175 = call i32 @ehea_fill_skb(%struct.net_device* %171, %struct.sk_buff* %172, %struct.ehea_cqe* %173, %struct.ehea_port_res* %174)
  %176 = load i32, i32* %20, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %20, align 4
  br label %178

178:                                              ; preds = %170, %146
  br label %179

179:                                              ; preds = %178, %112
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %21, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %21, align 8
  %185 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %186 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @EHEA_CQE_VLAN_TAG_XTRACT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %179
  %192 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %193 = load i32, i32* @ETH_P_8021Q, align 4
  %194 = call i32 @htons(i32 %193)
  %195 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %196 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %192, i32 %194, i32 %197)
  br label %199

199:                                              ; preds = %191, %179
  %200 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %201 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %200, i32 0, i32 3
  %202 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %203 = call i32 @napi_gro_receive(i32* %201, %struct.sk_buff* %202)
  br label %218

204:                                              ; preds = %80
  %205 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %206 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %211 = load i32, i32* %24, align 4
  %212 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %213 = call i32 @ehea_treat_poll_error(%struct.ehea_port_res* %210, i32 %211, %struct.ehea_cqe* %212, i32* %19, i32* %20)
  store i32 %213, i32* %25, align 4
  %214 = load i32, i32* %25, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %204
  br label %221

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217, %199
  %219 = load %struct.ehea_qp*, %struct.ehea_qp** %8, align 8
  %220 = call %struct.ehea_cqe* @ehea_poll_rq1(%struct.ehea_qp* %219, i32* %22)
  store %struct.ehea_cqe* %220, %struct.ehea_cqe** %9, align 8
  br label %58

221:                                              ; preds = %216, %165, %141, %110, %65
  %222 = load i32, i32* %17, align 4
  %223 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %224 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load i64, i64* %21, align 8
  %228 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %229 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %227
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %229, align 4
  %234 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %18, align 4
  %237 = call i32 @ehea_refill_rq1(%struct.ehea_port_res* %234, i32 %235, i32 %236)
  %238 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @ehea_refill_rq2(%struct.ehea_port_res* %238, i32 %239)
  %241 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %242 = load i32, i32* %20, align 4
  %243 = call i32 @ehea_refill_rq3(%struct.ehea_port_res* %241, i32 %242)
  %244 = load i32, i32* %17, align 4
  ret i32 %244
}

declare dso_local %struct.ehea_cqe* @ehea_poll_rq1(%struct.ehea_qp*, i32*) #1

declare dso_local i32 @ehea_inc_rq1(%struct.ehea_qp*) #1

declare dso_local i64 @netif_msg_rx_status(%struct.ehea_port*) #1

declare dso_local i32 @ehea_dump(%struct.ehea_cqe*, i32, i8*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ehea_check_cqe(%struct.ehea_cqe*, i32*) #1

declare dso_local %struct.sk_buff* @get_skb_by_index_ll(%struct.sk_buff**, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_info(%struct.ehea_port*, i32, %struct.net_device*, i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @ehea_fill_skb(%struct.net_device*, %struct.sk_buff*, %struct.ehea_cqe*, %struct.ehea_port_res*) #1

declare dso_local %struct.sk_buff* @get_skb_by_index(%struct.sk_buff**, i32, %struct.ehea_cqe*) #1

declare dso_local i32 @netif_err(%struct.ehea_port*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ehea_treat_poll_error(%struct.ehea_port_res*, i32, %struct.ehea_cqe*, i32*, i32*) #1

declare dso_local i32 @ehea_refill_rq1(%struct.ehea_port_res*, i32, i32) #1

declare dso_local i32 @ehea_refill_rq2(%struct.ehea_port_res*, i32) #1

declare dso_local i32 @ehea_refill_rq3(%struct.ehea_port_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
