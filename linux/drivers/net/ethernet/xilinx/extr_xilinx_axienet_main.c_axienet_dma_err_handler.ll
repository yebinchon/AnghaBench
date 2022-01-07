; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_dma_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_dma_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axienet_local = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, %struct.axidma_bd*, %struct.axidma_bd*, %struct.TYPE_3__*, %struct.net_device* }
%struct.axidma_bd = type { i32, i64, i64, i64, i64, i64, i64, i32*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XAE_OPTION_TXEN = common dso_local global i32 0, align 4
@XAE_OPTION_RXEN = common dso_local global i32 0, align 4
@XAXIDMA_BD_CTRL_LENGTH_MASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_COALESCE_MASK = common dso_local global i64 0, align 8
@XAXIDMA_DFT_RX_THRESHOLD = common dso_local global i64 0, align 8
@XAXIDMA_COALESCE_SHIFT = common dso_local global i64 0, align 8
@XAXIDMA_DELAY_MASK = common dso_local global i64 0, align 8
@XAXIDMA_DFT_RX_WAITBOUND = common dso_local global i64 0, align 8
@XAXIDMA_DELAY_SHIFT = common dso_local global i64 0, align 8
@XAXIDMA_IRQ_ALL_MASK = common dso_local global i64 0, align 8
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_DFT_TX_THRESHOLD = common dso_local global i64 0, align 8
@XAXIDMA_DFT_TX_WAITBOUND = common dso_local global i64 0, align 8
@XAXIDMA_RX_CDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_CR_RUNSTOP_MASK = common dso_local global i64 0, align 8
@XAXIDMA_RX_TDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_TX_CDESC_OFFSET = common dso_local global i32 0, align 4
@XAE_RCW1_OFFSET = common dso_local global i32 0, align 4
@XAE_RCW1_RX_MASK = common dso_local global i64 0, align 8
@XAE_IP_OFFSET = common dso_local global i32 0, align 4
@XAE_INT_RXRJECT_MASK = common dso_local global i64 0, align 8
@XAE_IS_OFFSET = common dso_local global i32 0, align 4
@XAE_IE_OFFSET = common dso_local global i32 0, align 4
@XAE_INT_RECV_ERROR_MASK = common dso_local global i64 0, align 8
@XAE_FCC_OFFSET = common dso_local global i32 0, align 4
@XAE_FCC_FCRX_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @axienet_dma_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_dma_err_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.axienet_local*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.axidma_bd*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.axienet_local*
  store %struct.axienet_local* %10, %struct.axienet_local** %6, align 8
  %11 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %12 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %11, i32 0, i32 12
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %16 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XAE_OPTION_TXEN, align 4
  %19 = load i32, i32* @XAE_OPTION_RXEN, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = call i32 @axienet_setoptions(%struct.net_device* %14, i32 %22)
  %24 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %25 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %24, i32 0, i32 11
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %30 = call i32 @axienet_mdio_disable(%struct.axienet_local* %29)
  %31 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %32 = call i32 @__axienet_device_reset(%struct.axienet_local* %31)
  %33 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %34 = call i32 @axienet_mdio_enable(%struct.axienet_local* %33)
  %35 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %36 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %35, i32 0, i32 11
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %100, %1
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %43 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %103

46:                                               ; preds = %40
  %47 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %48 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %47, i32 0, i32 10
  %49 = load %struct.axidma_bd*, %struct.axidma_bd** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %49, i64 %50
  store %struct.axidma_bd* %51, %struct.axidma_bd** %8, align 8
  %52 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %53 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %46
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %62 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %65 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @XAXIDMA_BD_CTRL_LENGTH_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @dma_unmap_single(i32 %60, i64 %63, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %56, %46
  %72 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %73 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %78 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @dev_kfree_skb_irq(i32* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %83 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %85 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %87 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %89 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %91 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %93 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %95 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %97 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %99 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %98, i32 0, i32 7
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %81
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %5, align 8
  br label %40

103:                                              ; preds = %40
  store i64 0, i64* %5, align 8
  br label %104

104:                                              ; preds = %128, %103
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %107 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %104
  %111 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %112 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %111, i32 0, i32 9
  %113 = load %struct.axidma_bd*, %struct.axidma_bd** %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %113, i64 %114
  store %struct.axidma_bd* %115, %struct.axidma_bd** %8, align 8
  %116 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %117 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %116, i32 0, i32 6
  store i64 0, i64* %117, align 8
  %118 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %119 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %118, i32 0, i32 5
  store i64 0, i64* %119, align 8
  %120 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %121 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %120, i32 0, i32 4
  store i64 0, i64* %121, align 8
  %122 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %123 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %125 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.axidma_bd*, %struct.axidma_bd** %8, align 8
  %127 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %110
  %129 = load i64, i64* %5, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %5, align 8
  br label %104

131:                                              ; preds = %104
  %132 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %133 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %132, i32 0, i32 8
  store i64 0, i64* %133, align 8
  %134 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %135 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %134, i32 0, i32 7
  store i64 0, i64* %135, align 8
  %136 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %137 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %136, i32 0, i32 6
  store i64 0, i64* %137, align 8
  %138 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %139 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %140 = call i64 @axienet_dma_in32(%struct.axienet_local* %138, i32 %139)
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* @XAXIDMA_COALESCE_MASK, align 8
  %143 = xor i64 %142, -1
  %144 = and i64 %141, %143
  %145 = load i64, i64* @XAXIDMA_DFT_RX_THRESHOLD, align 8
  %146 = load i64, i64* @XAXIDMA_COALESCE_SHIFT, align 8
  %147 = shl i64 %145, %146
  %148 = or i64 %144, %147
  store i64 %148, i64* %4, align 8
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* @XAXIDMA_DELAY_MASK, align 8
  %151 = xor i64 %150, -1
  %152 = and i64 %149, %151
  %153 = load i64, i64* @XAXIDMA_DFT_RX_WAITBOUND, align 8
  %154 = load i64, i64* @XAXIDMA_DELAY_SHIFT, align 8
  %155 = shl i64 %153, %154
  %156 = or i64 %152, %155
  store i64 %156, i64* %4, align 8
  %157 = load i64, i64* @XAXIDMA_IRQ_ALL_MASK, align 8
  %158 = load i64, i64* %4, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %4, align 8
  %160 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %161 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @axienet_dma_out32(%struct.axienet_local* %160, i32 %161, i64 %162)
  %164 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %165 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %166 = call i64 @axienet_dma_in32(%struct.axienet_local* %164, i32 %165)
  store i64 %166, i64* %4, align 8
  %167 = load i64, i64* %4, align 8
  %168 = load i64, i64* @XAXIDMA_COALESCE_MASK, align 8
  %169 = xor i64 %168, -1
  %170 = and i64 %167, %169
  %171 = load i64, i64* @XAXIDMA_DFT_TX_THRESHOLD, align 8
  %172 = load i64, i64* @XAXIDMA_COALESCE_SHIFT, align 8
  %173 = shl i64 %171, %172
  %174 = or i64 %170, %173
  store i64 %174, i64* %4, align 8
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* @XAXIDMA_DELAY_MASK, align 8
  %177 = xor i64 %176, -1
  %178 = and i64 %175, %177
  %179 = load i64, i64* @XAXIDMA_DFT_TX_WAITBOUND, align 8
  %180 = load i64, i64* @XAXIDMA_DELAY_SHIFT, align 8
  %181 = shl i64 %179, %180
  %182 = or i64 %178, %181
  store i64 %182, i64* %4, align 8
  %183 = load i64, i64* @XAXIDMA_IRQ_ALL_MASK, align 8
  %184 = load i64, i64* %4, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %4, align 8
  %186 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %187 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %188 = load i64, i64* %4, align 8
  %189 = call i32 @axienet_dma_out32(%struct.axienet_local* %186, i32 %187, i64 %188)
  %190 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %191 = load i32, i32* @XAXIDMA_RX_CDESC_OFFSET, align 4
  %192 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %193 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @axienet_dma_out32(%struct.axienet_local* %190, i32 %191, i64 %194)
  %196 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %197 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %198 = call i64 @axienet_dma_in32(%struct.axienet_local* %196, i32 %197)
  store i64 %198, i64* %4, align 8
  %199 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %200 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %201 = load i64, i64* %4, align 8
  %202 = load i64, i64* @XAXIDMA_CR_RUNSTOP_MASK, align 8
  %203 = or i64 %201, %202
  %204 = call i32 @axienet_dma_out32(%struct.axienet_local* %199, i32 %200, i64 %203)
  %205 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %206 = load i32, i32* @XAXIDMA_RX_TDESC_OFFSET, align 4
  %207 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %208 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %211 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, 1
  %214 = mul i64 72, %213
  %215 = add i64 %209, %214
  %216 = call i32 @axienet_dma_out32(%struct.axienet_local* %205, i32 %206, i64 %215)
  %217 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %218 = load i32, i32* @XAXIDMA_TX_CDESC_OFFSET, align 4
  %219 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %220 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @axienet_dma_out32(%struct.axienet_local* %217, i32 %218, i64 %221)
  %223 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %224 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %225 = call i64 @axienet_dma_in32(%struct.axienet_local* %223, i32 %224)
  store i64 %225, i64* %4, align 8
  %226 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %227 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %228 = load i64, i64* %4, align 8
  %229 = load i64, i64* @XAXIDMA_CR_RUNSTOP_MASK, align 8
  %230 = or i64 %228, %229
  %231 = call i32 @axienet_dma_out32(%struct.axienet_local* %226, i32 %227, i64 %230)
  %232 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %233 = load i32, i32* @XAE_RCW1_OFFSET, align 4
  %234 = call i64 @axienet_ior(%struct.axienet_local* %232, i32 %233)
  store i64 %234, i64* %3, align 8
  %235 = load i64, i64* @XAE_RCW1_RX_MASK, align 8
  %236 = xor i64 %235, -1
  %237 = load i64, i64* %3, align 8
  %238 = and i64 %237, %236
  store i64 %238, i64* %3, align 8
  %239 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %240 = load i32, i32* @XAE_RCW1_OFFSET, align 4
  %241 = load i64, i64* %3, align 8
  %242 = call i32 @axienet_iow(%struct.axienet_local* %239, i32 %240, i64 %241)
  %243 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %244 = load i32, i32* @XAE_IP_OFFSET, align 4
  %245 = call i64 @axienet_ior(%struct.axienet_local* %243, i32 %244)
  store i64 %245, i64* %3, align 8
  %246 = load i64, i64* %3, align 8
  %247 = load i64, i64* @XAE_INT_RXRJECT_MASK, align 8
  %248 = and i64 %246, %247
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %131
  %251 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %252 = load i32, i32* @XAE_IS_OFFSET, align 4
  %253 = load i64, i64* @XAE_INT_RXRJECT_MASK, align 8
  %254 = call i32 @axienet_iow(%struct.axienet_local* %251, i32 %252, i64 %253)
  br label %255

255:                                              ; preds = %250, %131
  %256 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %257 = load i32, i32* @XAE_IE_OFFSET, align 4
  %258 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %259 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = icmp sgt i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = load i64, i64* @XAE_INT_RECV_ERROR_MASK, align 8
  br label %265

264:                                              ; preds = %255
  br label %265

265:                                              ; preds = %264, %262
  %266 = phi i64 [ %263, %262 ], [ 0, %264 ]
  %267 = call i32 @axienet_iow(%struct.axienet_local* %256, i32 %257, i64 %266)
  %268 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %269 = load i32, i32* @XAE_FCC_OFFSET, align 4
  %270 = load i64, i64* @XAE_FCC_FCRX_MASK, align 8
  %271 = call i32 @axienet_iow(%struct.axienet_local* %268, i32 %269, i64 %270)
  %272 = load %struct.net_device*, %struct.net_device** %7, align 8
  %273 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %274 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @XAE_OPTION_TXEN, align 4
  %277 = load i32, i32* @XAE_OPTION_RXEN, align 4
  %278 = or i32 %276, %277
  %279 = xor i32 %278, -1
  %280 = and i32 %275, %279
  %281 = call i32 @axienet_setoptions(%struct.net_device* %272, i32 %280)
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = call i32 @axienet_set_mac_address(%struct.net_device* %282, i32* null)
  %284 = load %struct.net_device*, %struct.net_device** %7, align 8
  %285 = call i32 @axienet_set_multicast_list(%struct.net_device* %284)
  %286 = load %struct.net_device*, %struct.net_device** %7, align 8
  %287 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %288 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @axienet_setoptions(%struct.net_device* %286, i32 %289)
  ret void
}

declare dso_local i32 @axienet_setoptions(%struct.net_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @axienet_mdio_disable(%struct.axienet_local*) #1

declare dso_local i32 @__axienet_device_reset(%struct.axienet_local*) #1

declare dso_local i32 @axienet_mdio_enable(%struct.axienet_local*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

declare dso_local i64 @axienet_dma_in32(%struct.axienet_local*, i32) #1

declare dso_local i32 @axienet_dma_out32(%struct.axienet_local*, i32, i64) #1

declare dso_local i64 @axienet_ior(%struct.axienet_local*, i32) #1

declare dso_local i32 @axienet_iow(%struct.axienet_local*, i32, i64) #1

declare dso_local i32 @axienet_set_mac_address(%struct.net_device*, i32*) #1

declare dso_local i32 @axienet_set_multicast_list(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
