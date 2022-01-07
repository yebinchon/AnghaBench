; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_dma_bd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_dma_bd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.temac_local = type { i32, i32, i32, i32, i32 (%struct.temac_local*, i32, i32)*, i64, i64, i64, i64, %struct.TYPE_5__*, %struct.sk_buff**, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i8* }

@RX_BD_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i32 0, align 4
@XTE_MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@STS_CTRL_APP0_IRQONEND = common dso_local global i32 0, align 4
@TX_CHNL_CTRL = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_EN = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_ERR_EN = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_DLY_EN = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_COAL_EN = common dso_local global i32 0, align 4
@RX_CHNL_CTRL = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_IOE = common dso_local global i32 0, align 4
@RX_CURDESC_PTR = common dso_local global i32 0, align 4
@RX_TAILDESC_PTR = common dso_local global i32 0, align 4
@TX_CURDESC_PTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @temac_dma_bd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_dma_bd_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.temac_local* @netdev_priv(%struct.net_device* %8)
  store %struct.temac_local* %9, %struct.temac_local** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* @RX_BD_NUM, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff** @devm_kcalloc(%struct.TYPE_6__* %11, i32 %12, i32 8, i32 %13)
  %15 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %16 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %15, i32 0, i32 10
  store %struct.sk_buff** %14, %struct.sk_buff*** %16, align 8
  %17 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %18 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %17, i32 0, i32 10
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %18, align 8
  %20 = icmp ne %struct.sk_buff** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %254

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TX_BD_NUM, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %32 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @dma_alloc_coherent(i32 %26, i32 %30, i32* %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  %36 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %37 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %36, i32 0, i32 11
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %39 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %38, i32 0, i32 11
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %22
  br label %254

43:                                               ; preds = %22
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RX_BD_NUM, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 32, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %53 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %52, i32 0, i32 1
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @dma_alloc_coherent(i32 %47, i32 %51, i32* %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.TYPE_5__*
  %57 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %58 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %57, i32 0, i32 9
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %60 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %59, i32 0, i32 9
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %43
  br label %254

64:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %90, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @TX_BD_NUM, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %71 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* @TX_BD_NUM, align 4
  %77 = srem i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 8, %78
  %80 = add i64 %73, %79
  %81 = trunc i64 %80 to i32
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %84 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %83, i32 0, i32 11
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i8* %82, i8** %89, align 8
  br label %90

90:                                               ; preds = %69
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %65

93:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %170, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @RX_BD_NUM, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %173

98:                                               ; preds = %94
  %99 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %100 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* @RX_BD_NUM, align 4
  %106 = srem i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = mul i64 32, %107
  %109 = add i64 %102, %108
  %110 = trunc i64 %109 to i32
  %111 = call i8* @cpu_to_be32(i32 %110)
  %112 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %113 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %112, i32 0, i32 9
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  store i8* %111, i8** %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = load i32, i32* @XTE_MAX_JUMBO_FRAME_SIZE, align 4
  %121 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %119, i32 %120)
  store %struct.sk_buff* %121, %struct.sk_buff** %5, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %98
  br label %254

125:                                              ; preds = %98
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %128 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %127, i32 0, i32 10
  %129 = load %struct.sk_buff**, %struct.sk_buff*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %129, i64 %131
  store %struct.sk_buff* %126, %struct.sk_buff** %132, align 8
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @XTE_MAX_JUMBO_FRAME_SIZE, align 4
  %141 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %142 = call i32 @dma_map_single(i32 %136, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i8* @cpu_to_be32(i32 %143)
  %145 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %146 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %145, i32 0, i32 9
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  store i8* %144, i8** %151, align 8
  %152 = load i32, i32* @XTE_MAX_JUMBO_FRAME_SIZE, align 4
  %153 = call i8* @cpu_to_be32(i32 %152)
  %154 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %155 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %154, i32 0, i32 9
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i8* %153, i8** %160, align 8
  %161 = load i32, i32* @STS_CTRL_APP0_IRQONEND, align 4
  %162 = call i8* @cpu_to_be32(i32 %161)
  %163 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %164 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %163, i32 0, i32 9
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i8* %162, i8** %169, align 8
  br label %170

170:                                              ; preds = %125
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %94

173:                                              ; preds = %94
  %174 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %175 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %174, i32 0, i32 4
  %176 = load i32 (%struct.temac_local*, i32, i32)*, i32 (%struct.temac_local*, i32, i32)** %175, align 8
  %177 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %178 = load i32, i32* @TX_CHNL_CTRL, align 4
  %179 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %180 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, 1024
  %183 = load i32, i32* @CHNL_CTRL_IRQ_EN, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @CHNL_CTRL_IRQ_ERR_EN, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @CHNL_CTRL_IRQ_DLY_EN, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @CHNL_CTRL_IRQ_COAL_EN, align 4
  %190 = or i32 %188, %189
  %191 = call i32 %176(%struct.temac_local* %177, i32 %178, i32 %190)
  %192 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %193 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %192, i32 0, i32 4
  %194 = load i32 (%struct.temac_local*, i32, i32)*, i32 (%struct.temac_local*, i32, i32)** %193, align 8
  %195 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %196 = load i32, i32* @RX_CHNL_CTRL, align 4
  %197 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %198 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @CHNL_CTRL_IRQ_IOE, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @CHNL_CTRL_IRQ_EN, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @CHNL_CTRL_IRQ_ERR_EN, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @CHNL_CTRL_IRQ_DLY_EN, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @CHNL_CTRL_IRQ_COAL_EN, align 4
  %209 = or i32 %207, %208
  %210 = call i32 %194(%struct.temac_local* %195, i32 %196, i32 %209)
  %211 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %212 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %211, i32 0, i32 8
  store i64 0, i64* %212, align 8
  %213 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %214 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %213, i32 0, i32 7
  store i64 0, i64* %214, align 8
  %215 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %216 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %215, i32 0, i32 6
  store i64 0, i64* %216, align 8
  %217 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %218 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %217, i32 0, i32 5
  store i64 0, i64* %218, align 8
  %219 = call i32 (...) @wmb()
  %220 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %221 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %220, i32 0, i32 4
  %222 = load i32 (%struct.temac_local*, i32, i32)*, i32 (%struct.temac_local*, i32, i32)** %221, align 8
  %223 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %224 = load i32, i32* @RX_CURDESC_PTR, align 4
  %225 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %226 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 %222(%struct.temac_local* %223, i32 %224, i32 %227)
  %229 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %230 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %229, i32 0, i32 4
  %231 = load i32 (%struct.temac_local*, i32, i32)*, i32 (%struct.temac_local*, i32, i32)** %230, align 8
  %232 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %233 = load i32, i32* @RX_TAILDESC_PTR, align 4
  %234 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %235 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = load i32, i32* @RX_BD_NUM, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = mul i64 32, %240
  %242 = add i64 %237, %241
  %243 = trunc i64 %242 to i32
  %244 = call i32 %231(%struct.temac_local* %232, i32 %233, i32 %243)
  %245 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %246 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %245, i32 0, i32 4
  %247 = load i32 (%struct.temac_local*, i32, i32)*, i32 (%struct.temac_local*, i32, i32)** %246, align 8
  %248 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %249 = load i32, i32* @TX_CURDESC_PTR, align 4
  %250 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %251 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 %247(%struct.temac_local* %248, i32 %249, i32 %252)
  store i32 0, i32* %2, align 4
  br label %259

254:                                              ; preds = %124, %63, %42, %21
  %255 = load %struct.net_device*, %struct.net_device** %3, align 8
  %256 = call i32 @temac_dma_bd_release(%struct.net_device* %255)
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %254, %173
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff** @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @temac_dma_bd_release(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
