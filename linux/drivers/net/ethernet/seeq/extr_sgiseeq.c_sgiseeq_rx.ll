; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sgiseeq_private = type { i64, %struct.sgiseeq_rx_desc* }
%struct.sgiseeq_rx_desc = type { %struct.TYPE_6__, %struct.sk_buff* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.hpc3_ethregs = type { i32 }
%struct.sgiseeq_regs = type { i32 }

@HPCDMA_OWN = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@HPCDMA_BCNT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SEEQ_RSTAT_FIG = common dso_local global i8 0, align 1
@rx_copybreak = common dso_local global i32 0, align 4
@RCNTINFO_INIT = common dso_local global i32 0, align 4
@HPCDMA_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*)* @sgiseeq_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgiseeq_rx(%struct.net_device* %0, %struct.sgiseeq_private* %1, %struct.hpc3_ethregs* %2, %struct.sgiseeq_regs* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sgiseeq_private*, align 8
  %7 = alloca %struct.hpc3_ethregs*, align 8
  %8 = alloca %struct.sgiseeq_regs*, align 8
  %9 = alloca %struct.sgiseeq_rx_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sgiseeq_private* %1, %struct.sgiseeq_private** %6, align 8
  store %struct.hpc3_ethregs* %2, %struct.hpc3_ethregs** %7, align 8
  store %struct.sgiseeq_regs* %3, %struct.sgiseeq_regs** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %16 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @PREV_RX(i64 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %14, align 4
  %20 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %21 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %20, i32 0, i32 1
  %22 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %21, align 8
  %23 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %24 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %22, i64 %25
  store %struct.sgiseeq_rx_desc* %26, %struct.sgiseeq_rx_desc** %9, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %29 = call i32 @dma_sync_desc_cpu(%struct.net_device* %27, %struct.sgiseeq_rx_desc* %28)
  br label %30

30:                                               ; preds = %169, %4
  %31 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %32 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HPCDMA_OWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %210

39:                                               ; preds = %30
  %40 = load i32, i32* @PKT_BUF_SZ, align 4
  %41 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %42 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HPCDMA_BCNT, align 4
  %46 = and i32 %44, %45
  %47 = sub nsw i32 %40, %46
  %48 = sub nsw i32 %47, 3
  store i32 %48, i32* %13, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %54 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PKT_BUF_SZ, align 4
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(i32 %52, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %61 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %60, i32 0, i32 1
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %12, align 1
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @SEEQ_RSTAT_FIG, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %162

75:                                               ; preds = %39
  %76 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %77 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %76, i32 0, i32 1
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 6
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ether_addr_equal(i8* %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %157, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @rx_copybreak, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %93 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %92, i32 0, i32 1
  %94 = load %struct.sk_buff*, %struct.sk_buff** %93, align 8
  store %struct.sk_buff* %94, %struct.sk_buff** %10, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load i32, i32* @PKT_BUF_SZ, align 4
  %97 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %95, i32 %96)
  store %struct.sk_buff* %97, %struct.sk_buff** %11, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %125

102:                                              ; preds = %91
  %103 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %104 = call i32 @skb_reserve(%struct.sk_buff* %103, i32 2)
  br label %124

105:                                              ; preds = %87
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %106, i32 %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %10, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %114 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %113, i32 0, i32 1
  %115 = load %struct.sk_buff*, %struct.sk_buff** %114, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %112, i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %111, %105
  %121 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %122 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %121, i32 0, i32 1
  %123 = load %struct.sk_buff*, %struct.sk_buff** %122, align 8
  store %struct.sk_buff* %123, %struct.sk_buff** %11, align 8
  br label %124

124:                                              ; preds = %120, %102
  br label %125

125:                                              ; preds = %124, %100
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @skb_put(%struct.sk_buff* %129, i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = call i32 @eth_type_trans(%struct.sk_buff* %132, %struct.net_device* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %138 = call i32 @netif_rx(%struct.sk_buff* %137)
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %144
  store i32 %149, i32* %147, align 4
  br label %156

150:                                              ; preds = %125
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %128
  br label %161

157:                                              ; preds = %75
  %158 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %159 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %158, i32 0, i32 1
  %160 = load %struct.sk_buff*, %struct.sk_buff** %159, align 8
  store %struct.sk_buff* %160, %struct.sk_buff** %11, align 8
  br label %161

161:                                              ; preds = %157, %156
  br label %169

162:                                              ; preds = %39
  %163 = load %struct.net_device*, %struct.net_device** %5, align 8
  %164 = load i8, i8* %12, align 1
  %165 = call i32 @record_rx_errors(%struct.net_device* %163, i8 zeroext %164)
  %166 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %167 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %166, i32 0, i32 1
  %168 = load %struct.sk_buff*, %struct.sk_buff** %167, align 8
  store %struct.sk_buff* %168, %struct.sk_buff** %11, align 8
  br label %169

169:                                              ; preds = %162, %161
  %170 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %171 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %172 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %171, i32 0, i32 1
  store %struct.sk_buff* %170, %struct.sk_buff** %172, align 8
  %173 = load %struct.net_device*, %struct.net_device** %5, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 -2
  %181 = load i32, i32* @PKT_BUF_SZ, align 4
  %182 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %183 = call i32 @dma_map_single(i32 %176, i8* %180, i32 %181, i32 %182)
  %184 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %185 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @RCNTINFO_INIT, align 4
  %188 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %189 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %192 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @NEXT_RX(i64 %193)
  %195 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %196 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.net_device*, %struct.net_device** %5, align 8
  %198 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %199 = call i32 @dma_sync_desc_dev(%struct.net_device* %197, %struct.sgiseeq_rx_desc* %198)
  %200 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %201 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %200, i32 0, i32 1
  %202 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %201, align 8
  %203 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %204 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %202, i64 %205
  store %struct.sgiseeq_rx_desc* %206, %struct.sgiseeq_rx_desc** %9, align 8
  %207 = load %struct.net_device*, %struct.net_device** %5, align 8
  %208 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %9, align 8
  %209 = call i32 @dma_sync_desc_cpu(%struct.net_device* %207, %struct.sgiseeq_rx_desc* %208)
  br label %30

210:                                              ; preds = %30
  %211 = load %struct.net_device*, %struct.net_device** %5, align 8
  %212 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %213 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %212, i32 0, i32 1
  %214 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %214, i64 %216
  %218 = call i32 @dma_sync_desc_cpu(%struct.net_device* %211, %struct.sgiseeq_rx_desc* %217)
  %219 = load i32, i32* @HPCDMA_EOR, align 4
  %220 = xor i32 %219, -1
  %221 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %222 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %221, i32 0, i32 1
  %223 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %223, i64 %225
  %227 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, %220
  store i32 %230, i32* %228, align 8
  %231 = load %struct.net_device*, %struct.net_device** %5, align 8
  %232 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %233 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %232, i32 0, i32 1
  %234 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %233, align 8
  %235 = load i32, i32* %14, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %234, i64 %236
  %238 = call i32 @dma_sync_desc_dev(%struct.net_device* %231, %struct.sgiseeq_rx_desc* %237)
  %239 = load %struct.net_device*, %struct.net_device** %5, align 8
  %240 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %241 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %240, i32 0, i32 1
  %242 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %241, align 8
  %243 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %244 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @PREV_RX(i64 %245)
  %247 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %242, i64 %246
  %248 = call i32 @dma_sync_desc_cpu(%struct.net_device* %239, %struct.sgiseeq_rx_desc* %247)
  %249 = load i32, i32* @HPCDMA_EOR, align 4
  %250 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %251 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %250, i32 0, i32 1
  %252 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %251, align 8
  %253 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %254 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i64 @PREV_RX(i64 %255)
  %257 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %252, i64 %256
  %258 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %249
  store i32 %261, i32* %259, align 8
  %262 = load %struct.net_device*, %struct.net_device** %5, align 8
  %263 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %264 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %263, i32 0, i32 1
  %265 = load %struct.sgiseeq_rx_desc*, %struct.sgiseeq_rx_desc** %264, align 8
  %266 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %267 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i64 @PREV_RX(i64 %268)
  %270 = getelementptr inbounds %struct.sgiseeq_rx_desc, %struct.sgiseeq_rx_desc* %265, i64 %269
  %271 = call i32 @dma_sync_desc_dev(%struct.net_device* %262, %struct.sgiseeq_rx_desc* %270)
  %272 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %273 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %274 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %8, align 8
  %275 = call i32 @rx_maybe_restart(%struct.sgiseeq_private* %272, %struct.hpc3_ethregs* %273, %struct.sgiseeq_regs* %274)
  ret void
}

declare dso_local i64 @PREV_RX(i64) #1

declare dso_local i32 @dma_sync_desc_cpu(%struct.net_device*, %struct.sgiseeq_rx_desc*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @ether_addr_equal(i8*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @record_rx_errors(%struct.net_device*, i8 zeroext) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @NEXT_RX(i64) #1

declare dso_local i32 @dma_sync_desc_dev(%struct.net_device*, %struct.sgiseeq_rx_desc*) #1

declare dso_local i32 @rx_maybe_restart(%struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
