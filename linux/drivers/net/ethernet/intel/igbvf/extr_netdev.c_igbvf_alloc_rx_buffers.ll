; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_ring = type { i32, i32, i64, %struct.igbvf_buffer*, %struct.igbvf_adapter* }
%struct.igbvf_buffer = type { i32, i64, i64, %struct.sk_buff*, i32* }
%struct.sk_buff = type { i32 }
%struct.igbvf_adapter = type { i32, i32, %struct.TYPE_4__, i32, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_4__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_ring*, i32)* @igbvf_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_alloc_rx_buffers(%struct.igbvf_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.igbvf_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igbvf_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %union.e1000_adv_rx_desc*, align 8
  %9 = alloca %struct.igbvf_buffer*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.igbvf_ring* %0, %struct.igbvf_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %14 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %13, i32 0, i32 4
  %15 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %14, align 8
  store %struct.igbvf_adapter* %15, %struct.igbvf_adapter** %5, align 8
  %16 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %16, i32 0, i32 5
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %19, i32 0, i32 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %7, align 8
  %22 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %23 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %26 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %25, i32 0, i32 3
  %27 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %27, i64 %29
  store %struct.igbvf_buffer* %30, %struct.igbvf_buffer** %9, align 8
  %31 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  br label %43

39:                                               ; preds = %2
  %40 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %211, %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %218

48:                                               ; preds = %44
  %49 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(%struct.igbvf_ring* byval(%struct.igbvf_ring) align 8 %49, i32 %50)
  store %union.e1000_adv_rx_desc* %51, %union.e1000_adv_rx_desc** %8, align 8
  %52 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %123

56:                                               ; preds = %48
  %57 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %58 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %123, label %61

61:                                               ; preds = %56
  %62 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %63 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i32* @alloc_page(i32 %67)
  %69 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %72 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %66
  %76 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %77 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %219

80:                                               ; preds = %66
  %81 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %82 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %90

83:                                               ; preds = %61
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = sdiv i32 %84, 2
  %86 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %87 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = xor i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %80
  %91 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %94 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %97 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = sdiv i32 %99, 2
  %101 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %102 = call i64 @dma_map_page(i32* %92, i32* %95, i32 %98, i32 %100, i32 %101)
  %103 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %104 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %108 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @dma_mapping_error(i32* %106, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %90
  %113 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %114 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @__free_page(i32* %115)
  %117 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %118 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %218

122:                                              ; preds = %90
  br label %123

123:                                              ; preds = %122, %56, %48
  %124 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %125 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %124, i32 0, i32 3
  %126 = load %struct.sk_buff*, %struct.sk_buff** %125, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %171, label %128

128:                                              ; preds = %123
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %129, i32 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %10, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %136 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %219

139:                                              ; preds = %128
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %142 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %141, i32 0, i32 3
  store %struct.sk_buff* %140, %struct.sk_buff** %142, align 8
  %143 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 0
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %150 = call i64 @dma_map_single(i32* %144, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %152 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %156 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @dma_mapping_error(i32* %154, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %139
  %161 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %162 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %161, i32 0, i32 3
  %163 = load %struct.sk_buff*, %struct.sk_buff** %162, align 8
  %164 = call i32 @dev_kfree_skb(%struct.sk_buff* %163)
  %165 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %166 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %165, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %166, align 8
  %167 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 0
  %169 = call i32 @dev_err(i32* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %219

170:                                              ; preds = %139
  br label %171

171:                                              ; preds = %170, %123
  %172 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %173 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %178 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = call i8* @cpu_to_le64(i64 %179)
  %181 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %8, align 8
  %182 = bitcast %union.e1000_adv_rx_desc* %181 to %struct.TYPE_3__*
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  store i8* %180, i8** %183, align 8
  %184 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %185 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i8* @cpu_to_le64(i64 %186)
  %188 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %8, align 8
  %189 = bitcast %union.e1000_adv_rx_desc* %188 to %struct.TYPE_3__*
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  br label %202

191:                                              ; preds = %171
  %192 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %9, align 8
  %193 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i8* @cpu_to_le64(i64 %194)
  %196 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %8, align 8
  %197 = bitcast %union.e1000_adv_rx_desc* %196 to %struct.TYPE_3__*
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %8, align 8
  %200 = bitcast %union.e1000_adv_rx_desc* %199 to %struct.TYPE_3__*
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i8* null, i8** %201, align 8
  br label %202

202:                                              ; preds = %191, %176
  %203 = load i32, i32* %11, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %207 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %205, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  store i32 0, i32* %11, align 4
  br label %211

211:                                              ; preds = %210, %202
  %212 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %213 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %212, i32 0, i32 3
  %214 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %214, i64 %216
  store %struct.igbvf_buffer* %217, %struct.igbvf_buffer** %9, align 8
  br label %44

218:                                              ; preds = %112, %44
  br label %219

219:                                              ; preds = %218, %160, %134, %75
  %220 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %221 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %251

225:                                              ; preds = %219
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %228 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %11, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %225
  %232 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %233 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = sub i32 %234, 1
  store i32 %235, i32* %11, align 4
  br label %239

236:                                              ; preds = %225
  %237 = load i32, i32* %11, align 4
  %238 = add i32 %237, -1
  store i32 %238, i32* %11, align 4
  br label %239

239:                                              ; preds = %236, %231
  %240 = call i32 (...) @wmb()
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %243 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.igbvf_ring*, %struct.igbvf_ring** %3, align 8
  %247 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %245, %248
  %250 = call i32 @writel(i32 %241, i64 %249)
  br label %251

251:                                              ; preds = %239, %219
  ret void
}

declare dso_local %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(%struct.igbvf_ring* byval(%struct.igbvf_ring) align 8, i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i64 @dma_map_page(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
