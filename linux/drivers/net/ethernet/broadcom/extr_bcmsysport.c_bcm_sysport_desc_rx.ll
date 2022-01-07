; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_desc_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_desc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32, i64, i64, %struct.TYPE_4__, i32, i32, i64, %struct.bcm_sysport_cb*, i32, %struct.net_device*, %struct.bcm_sysport_stats64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bcm_sysport_cb = type { i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_stats64 = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.bcm_rsb = type { i32 }

@INTRL2_0_RDMA_MBDONE = common dso_local global i32 0, align 4
@INTRL2_CPU_CLEAR = common dso_local global i32 0, align 4
@RDMA_PROD_INDEX = common dso_local global i32 0, align 4
@RDMA_CONS_INDEX = common dso_local global i32 0, align 4
@RDMA_PROD_INDEX_MASK = common dso_local global i32 0, align 4
@RDMA_CONS_INDEX_MASK = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"p_index=%d rx_c_index=%d to_process=%d\0A\00", align 1
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"out of memory!\0A\00", align 1
@DESC_LEN_SHIFT = common dso_local global i32 0, align 4
@DESC_LEN_MASK = common dso_local global i32 0, align 4
@DESC_STATUS_SHIFT = common dso_local global i32 0, align 4
@DESC_STATUS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"p=%d, c=%d, rd_ptr=%d, len=%d, flag=0x%04x\0A\00", align 1
@RX_BUF_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"oversized packet\0A\00", align 1
@DESC_EOP = common dso_local global i32 0, align 4
@DESC_SOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"fragmented packet!\0A\00", align 1
@RX_STATUS_ERR = common dso_local global i32 0, align 4
@RX_STATUS_OVFLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"error packet\0A\00", align 1
@DESC_L4_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*, i32)* @bcm_sysport_desc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_desc_rx(%struct.bcm_sysport_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sysport_stats64*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm_sysport_cb*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bcm_rsb*, align 8
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %17 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %16, i32 0, i32 10
  store %struct.bcm_sysport_stats64* %17, %struct.bcm_sysport_stats64** %5, align 8
  %18 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %18, i32 0, i32 9
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %22 = load i32, i32* @INTRL2_0_RDMA_MBDONE, align 4
  %23 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %24 = call i32 @intrl2_0_writel(%struct.bcm_sysport_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %26 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %31 = load i32, i32* @RDMA_PROD_INDEX, align 4
  %32 = call i32 @rdma_readl(%struct.bcm_sysport_priv* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %35 = load i32, i32* @RDMA_CONS_INDEX, align 4
  %36 = call i32 @rdma_readl(%struct.bcm_sysport_priv* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @RDMA_PROD_INDEX_MASK, align 4
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %43 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub i32 %41, %44
  %46 = load i32, i32* @RDMA_CONS_INDEX_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %49 = load i32, i32* @rx_status, align 4
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %53 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = call i32 (%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*, i32, i32, i64, ...) @netif_dbg(%struct.bcm_sysport_priv* %48, i32 %49, %struct.net_device* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i64 %56)
  br label %58

58:                                               ; preds = %316, %37
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ult i32 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %317

68:                                               ; preds = %66
  %69 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %70 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %69, i32 0, i32 7
  %71 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %70, align 8
  %72 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %73 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %71, i64 %74
  store %struct.bcm_sysport_cb* %75, %struct.bcm_sysport_cb** %10, align 8
  %76 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %77 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %10, align 8
  %78 = call %struct.sk_buff* @bcm_sysport_rx_refill(%struct.bcm_sysport_priv* %76, %struct.bcm_sysport_cb* %77)
  store %struct.sk_buff* %78, %struct.sk_buff** %11, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %68
  %86 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %87 = load i32, i32* @rx_err, align 4
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = call i32 @netif_err(%struct.bcm_sysport_priv* %86, i32 %87, %struct.net_device* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %299

100:                                              ; preds = %68
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.bcm_rsb*
  store %struct.bcm_rsb* %104, %struct.bcm_rsb** %15, align 8
  %105 = load %struct.bcm_rsb*, %struct.bcm_rsb** %15, align 8
  %106 = getelementptr inbounds %struct.bcm_rsb, %struct.bcm_rsb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DESC_LEN_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* @DESC_LEN_MASK, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %13, align 4
  %112 = load %struct.bcm_rsb*, %struct.bcm_rsb** %15, align 8
  %113 = getelementptr inbounds %struct.bcm_rsb, %struct.bcm_rsb* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @DESC_STATUS_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = load i32, i32* @DESC_STATUS_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %14, align 4
  %119 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %120 = load i32, i32* @rx_status, align 4
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %124 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %127 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*, i32, i32, i64, ...) @netif_dbg(%struct.bcm_sysport_priv* %119, i32 %120, %struct.net_device* %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %125, i64 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @RX_BUF_LENGTH, align 4
  %134 = icmp sgt i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %100
  %139 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %140 = load i32, i32* @rx_status, align 4
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = call i32 @netif_err(%struct.bcm_sysport_priv* %139, i32 %140, %struct.net_device* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %153)
  br label %299

155:                                              ; preds = %100
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @DESC_EOP, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @DESC_SOP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %160, %155
  %167 = phi i1 [ true, %155 ], [ %165, %160 ]
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %173 = load i32, i32* @rx_status, align 4
  %174 = load %struct.net_device*, %struct.net_device** %6, align 8
  %175 = call i32 @netif_err(%struct.bcm_sysport_priv* %172, i32 %173, %struct.net_device* %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %176 = load %struct.net_device*, %struct.net_device** %6, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = load %struct.net_device*, %struct.net_device** %6, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %187 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %186)
  br label %299

188:                                              ; preds = %166
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @RX_STATUS_ERR, align 4
  %191 = load i32, i32* @RX_STATUS_OVFLOW, align 4
  %192 = or i32 %190, %191
  %193 = and i32 %189, %192
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %224

196:                                              ; preds = %188
  %197 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %198 = load i32, i32* @rx_err, align 4
  %199 = load %struct.net_device*, %struct.net_device** %6, align 8
  %200 = call i32 @netif_err(%struct.bcm_sysport_priv* %197, i32 %198, %struct.net_device* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* @RX_STATUS_OVFLOW, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %196
  %206 = load %struct.net_device*, %struct.net_device** %6, align 8
  %207 = getelementptr inbounds %struct.net_device, %struct.net_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %196
  %212 = load %struct.net_device*, %struct.net_device** %6, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  %217 = load %struct.net_device*, %struct.net_device** %6, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %223 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %222)
  br label %299

224:                                              ; preds = %188
  %225 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @skb_put(%struct.sk_buff* %225, i32 %226)
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @DESC_L4_CSUM, align 4
  %230 = and i32 %228, %229
  %231 = call i64 @likely(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %224
  %234 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %235 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %233, %224
  %238 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %239 = call i32 @skb_pull(%struct.sk_buff* %238, i32 6)
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = sub i64 %241, 6
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %9, align 4
  %246 = add i32 %245, %244
  store i32 %246, i32* %9, align 4
  %247 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %248 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %237
  %252 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* @ETH_FCS_LEN, align 8
  %256 = sub nsw i64 %254, %255
  %257 = call i32 @skb_trim(%struct.sk_buff* %252, i64 %256)
  %258 = load i64, i64* @ETH_FCS_LEN, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = sub nsw i64 %260, %258
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %13, align 4
  br label %263

263:                                              ; preds = %251, %237
  %264 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %265 = load %struct.net_device*, %struct.net_device** %6, align 8
  %266 = call i32 @eth_type_trans(%struct.sk_buff* %264, %struct.net_device* %265)
  %267 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load %struct.net_device*, %struct.net_device** %6, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* %13, align 4
  %275 = load %struct.net_device*, %struct.net_device** %6, align 8
  %276 = getelementptr inbounds %struct.net_device, %struct.net_device* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, %274
  store i32 %279, i32* %277, align 4
  %280 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %281 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %280, i32 0, i32 5
  %282 = call i32 @u64_stats_update_begin(i32* %281)
  %283 = load %struct.bcm_sysport_stats64*, %struct.bcm_sysport_stats64** %5, align 8
  %284 = getelementptr inbounds %struct.bcm_sysport_stats64, %struct.bcm_sysport_stats64* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = load i32, i32* %13, align 4
  %288 = load %struct.bcm_sysport_stats64*, %struct.bcm_sysport_stats64** %5, align 8
  %289 = getelementptr inbounds %struct.bcm_sysport_stats64, %struct.bcm_sysport_stats64* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %293 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %292, i32 0, i32 5
  %294 = call i32 @u64_stats_update_end(i32* %293)
  %295 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %296 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %295, i32 0, i32 4
  %297 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %298 = call i32 @napi_gro_receive(i32* %296, %struct.sk_buff* %297)
  br label %299

299:                                              ; preds = %263, %211, %171, %138, %85
  %300 = load i32, i32* %7, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %7, align 4
  %302 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %303 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %303, align 8
  %306 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %307 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %310 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %308, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %299
  %314 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %315 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %314, i32 0, i32 1
  store i64 0, i64* %315, align 8
  br label %316

316:                                              ; preds = %313, %299
  br label %58

317:                                              ; preds = %66
  %318 = load i32, i32* %7, align 4
  %319 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %320 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  store i32 %318, i32* %321, align 8
  %322 = load i32, i32* %9, align 4
  %323 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %324 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  store i32 %322, i32* %325, align 4
  %326 = load i32, i32* %7, align 4
  ret i32 %326
}

declare dso_local i32 @intrl2_0_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @rdma_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*, i32, i32, i64, ...) #1

declare dso_local %struct.sk_buff* @bcm_sysport_rx_refill(%struct.bcm_sysport_priv*, %struct.bcm_sysport_cb*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
