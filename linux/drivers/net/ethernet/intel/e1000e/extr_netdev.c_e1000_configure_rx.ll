; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.e1000_hw, i32, i32, i64, %struct.e1000_ring* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_ring = type { i32, i32, i64, i64 }

@e1000_clean_rx_irq_ps = common dso_local global i32 0, align 4
@e1000_alloc_rx_buffers_ps = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@e1000_clean_jumbo_rx_irq = common dso_local global i32 0, align 4
@e1000_alloc_jumbo_rx_buffers = common dso_local global i32 0, align 4
@e1000_clean_rx_irq = common dso_local global i32 0, align 4
@e1000_alloc_rx_buffers = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@FLAG2_NO_DISABLE_RX = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@FLAG2_DMA_BURST = common dso_local global i32 0, align 4
@E1000_RXDCTL_DMA_BURST_ENABLE = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@RADV = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_IAME = common dso_local global i32 0, align 4
@IAM = common dso_local global i32 0, align 4
@FLAG2_PCIM2PCI_ARBITER_WA = common dso_local global i32 0, align 4
@RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@E1000_RXCSUM_TUOFL = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@PBA = common dso_local global i32 0, align 4
@E1000_PBA_RXA_MASK = common dso_local global i32 0, align 4
@FLAG_IS_ICH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Some CPU C-states have been disabled in order to enable jumbo frames\0A\00", align 1
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_configure_rx(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 10
  store %struct.e1000_hw* %13, %struct.e1000_hw** %3, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 14
  %16 = load %struct.e1000_ring*, %struct.e1000_ring** %15, align 8
  store %struct.e1000_ring* %16, %struct.e1000_ring** %4, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 13
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @e1000_clean_rx_irq_ps, align 4
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @e1000_alloc_rx_buffers_ps, align 4
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 8
  br label %71

34:                                               ; preds = %1
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 9
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ETH_FRAME_LEN, align 8
  %41 = load i64, i64* @ETH_FCS_LEN, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @e1000_clean_jumbo_rx_irq, align 4
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @e1000_alloc_jumbo_rx_buffers, align 4
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 8
  br label %70

57:                                               ; preds = %34
  %58 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %59 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @e1000_clean_rx_irq, align 4
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @e1000_alloc_rx_buffers, align 4
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %57, %44
  br label %71

71:                                               ; preds = %70, %21
  %72 = load i32, i32* @RCTL, align 4
  %73 = call i32 @er32(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FLAG2_NO_DISABLE_RX, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @RCTL, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @E1000_RCTL_EN, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @ew32(i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %80, %71
  %88 = call i32 (...) @e1e_flush()
  %89 = call i32 @usleep_range(i32 10000, i32 11000)
  %90 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @FLAG2_DMA_BURST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = call i32 @RXDCTL(i32 0)
  %98 = load i32, i32* @E1000_RXDCTL_DMA_BURST_ENABLE, align 4
  %99 = call i32 @ew32(i32 %97, i32 %98)
  %100 = call i32 @RXDCTL(i32 1)
  %101 = load i32, i32* @E1000_RXDCTL_DMA_BURST_ENABLE, align 4
  %102 = call i32 @ew32(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %87
  %104 = load i32, i32* @RDTR, align 4
  %105 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ew32(i32 %104, i32 %107)
  %109 = load i32, i32* @RADV, align 4
  %110 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ew32(i32 %109, i32 %112)
  %114 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %103
  %119 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %125 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @e1000e_write_itr(%struct.e1000_adapter* %124, i64 %127)
  br label %129

129:                                              ; preds = %123, %118, %103
  %130 = load i32, i32* @CTRL_EXT, align 4
  %131 = call i32 @er32(i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* @E1000_CTRL_EXT_IAME, align 4
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* @IAM, align 4
  %136 = call i32 @ew32(i32 %135, i32 -1)
  %137 = load i32, i32* @CTRL_EXT, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @ew32(i32 %137, i32 %138)
  %140 = call i32 (...) @e1e_flush()
  %141 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %5, align 4
  %144 = call i32 @RDBAL(i32 0)
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @DMA_BIT_MASK(i32 32)
  %147 = and i32 %145, %146
  %148 = call i32 @ew32(i32 %144, i32 %147)
  %149 = call i32 @RDBAH(i32 0)
  %150 = load i32, i32* %5, align 4
  %151 = ashr i32 %150, 32
  %152 = call i32 @ew32(i32 %149, i32 %151)
  %153 = call i32 @RDLEN(i32 0)
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @ew32(i32 %153, i32 %154)
  %156 = call i32 @RDH(i32 0)
  %157 = call i32 @ew32(i32 %156, i32 0)
  %158 = call i32 @RDT(i32 0)
  %159 = call i32 @ew32(i32 %158, i32 0)
  %160 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %161 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @E1000_RDH(i32 0)
  %165 = add nsw i64 %163, %164
  %166 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %167 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %169 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %168, i32 0, i32 10
  %170 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @E1000_RDT(i32 0)
  %173 = add nsw i64 %171, %172
  %174 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %175 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %177 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @writel(i32 0, i64 %178)
  %180 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %181 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @FLAG2_PCIM2PCI_ARBITER_WA, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %129
  %187 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %188 = call i32 @e1000e_update_rdt_wa(%struct.e1000_ring* %187, i32 0)
  br label %194

189:                                              ; preds = %129
  %190 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %191 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @writel(i32 0, i64 %192)
  br label %194

194:                                              ; preds = %189, %186
  %195 = load i32, i32* @RXCSUM, align 4
  %196 = call i32 @er32(i32 %195)
  store i32 %196, i32* %8, align 4
  %197 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %198 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %197, i32 0, i32 9
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %194
  %206 = load i32, i32* @E1000_RXCSUM_TUOFL, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %214

209:                                              ; preds = %194
  %210 = load i32, i32* @E1000_RXCSUM_TUOFL, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %8, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %209, %205
  %215 = load i32, i32* @RXCSUM, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @ew32(i32 %215, i32 %216)
  %218 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %219 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %218, i32 0, i32 9
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @ETH_DATA_LEN, align 8
  %224 = icmp sgt i64 %222, %223
  br i1 %224, label %225, label %262

225:                                              ; preds = %214
  %226 = load i32, i32* @PBA, align 4
  %227 = call i32 @er32(i32 %226)
  %228 = load i32, i32* @E1000_PBA_RXA_MASK, align 4
  %229 = and i32 %227, %228
  %230 = mul nsw i32 %229, 1024
  %231 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %232 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %230, %233
  %235 = mul nsw i32 %234, 8
  %236 = sdiv i32 %235, 1000
  store i32 %236, i32* %10, align 4
  %237 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %238 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @FLAG_IS_ICH, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %225
  %244 = call i32 @RXDCTL(i32 0)
  %245 = call i32 @er32(i32 %244)
  store i32 %245, i32* %11, align 4
  %246 = call i32 @RXDCTL(i32 0)
  %247 = load i32, i32* %11, align 4
  %248 = or i32 %247, 3
  %249 = call i32 @BIT(i32 8)
  %250 = or i32 %248, %249
  %251 = call i32 @ew32(i32 %246, i32 %250)
  br label %252

252:                                              ; preds = %243, %225
  %253 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %254 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %253, i32 0, i32 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = call i32 @dev_info(i32* %256, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %258 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %259 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %258, i32 0, i32 7
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @pm_qos_update_request(i32* %259, i32 %260)
  br label %267

262:                                              ; preds = %214
  %263 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %264 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %263, i32 0, i32 7
  %265 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %266 = call i32 @pm_qos_update_request(i32* %264, i32 %265)
  br label %267

267:                                              ; preds = %262, %252
  %268 = load i32, i32* @RCTL, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @ew32(i32 %268, i32 %269)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @RXDCTL(i32) #1

declare dso_local i32 @e1000e_write_itr(%struct.e1000_adapter*, i64) #1

declare dso_local i32 @RDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @RDBAH(i32) #1

declare dso_local i32 @RDLEN(i32) #1

declare dso_local i32 @RDH(i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i64 @E1000_RDH(i32) #1

declare dso_local i64 @E1000_RDT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @e1000e_update_rdt_wa(%struct.e1000_ring*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pm_qos_update_request(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
