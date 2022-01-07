; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i64, i32, %struct.TYPE_2__, i32, i32, i32, %struct.xlgmac_channel*, %struct.xlgmac_hw_ops }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.xlgmac_channel = type { i32 }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.1*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_pdata.1 = type opaque

@DMA_ISR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DMA_ISR=%#010x\0A\00", align 1
@DMA_CH_SR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DMA_CH%u_ISR=%#010x\0A\00", align 1
@DMA_CH_SR_TI_POS = common dso_local global i32 0, align 4
@DMA_CH_SR_TI_LEN = common dso_local global i32 0, align 4
@DMA_CH_SR_RI_POS = common dso_local global i32 0, align 4
@DMA_CH_SR_RI_LEN = common dso_local global i32 0, align 4
@DMA_CH_SR_TPS_POS = common dso_local global i32 0, align 4
@DMA_CH_SR_TPS_LEN = common dso_local global i32 0, align 4
@DMA_CH_SR_RPS_POS = common dso_local global i32 0, align 4
@DMA_CH_SR_RPS_LEN = common dso_local global i32 0, align 4
@DMA_CH_SR_TBU_POS = common dso_local global i32 0, align 4
@DMA_CH_SR_TBU_LEN = common dso_local global i32 0, align 4
@DMA_CH_SR_RBU_POS = common dso_local global i32 0, align 4
@DMA_CH_SR_RBU_LEN = common dso_local global i32 0, align 4
@DMA_CH_SR_FBE_POS = common dso_local global i32 0, align 4
@DMA_CH_SR_FBE_LEN = common dso_local global i32 0, align 4
@DMA_ISR_MACIS_POS = common dso_local global i32 0, align 4
@DMA_ISR_MACIS_LEN = common dso_local global i32 0, align 4
@MAC_ISR = common dso_local global i64 0, align 8
@MAC_ISR_MMCTXIS_POS = common dso_local global i32 0, align 4
@MAC_ISR_MMCTXIS_LEN = common dso_local global i32 0, align 4
@MAC_ISR_MMCRXIS_POS = common dso_local global i32 0, align 4
@MAC_ISR_MMCRXIS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xlgmac_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xlgmac_pdata*, align 8
  %10 = alloca %struct.xlgmac_channel*, align 8
  %11 = alloca %struct.xlgmac_hw_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.xlgmac_pdata*
  store %struct.xlgmac_pdata* %16, %struct.xlgmac_pdata** %9, align 8
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 8
  store %struct.xlgmac_hw_ops* %18, %struct.xlgmac_hw_ops** %11, align 8
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMA_ISR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %217

29:                                               ; preds = %2
  %30 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %31 = load i32, i32* @intr, align 4
  %32 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %33 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (%struct.xlgmac_pdata*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xlgmac_pdata* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %173, %29
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %40 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %176

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %173

50:                                               ; preds = %43
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %52 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %51, i32 0, i32 7
  %53 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %53, i64 %55
  store %struct.xlgmac_channel* %56, %struct.xlgmac_channel** %10, align 8
  %57 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %10, align 8
  %58 = load i32, i32* @DMA_CH_SR, align 4
  %59 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %57, i32 %58)
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %62 = load i32, i32* @intr, align 4
  %63 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %64 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (%struct.xlgmac_pdata*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xlgmac_pdata* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @DMA_CH_SR_TI_POS, align 4
  %71 = load i32, i32* @DMA_CH_SR_TI_LEN, align 4
  %72 = call i32 @XLGMAC_GET_REG_BITS(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @DMA_CH_SR_RI_POS, align 4
  %75 = load i32, i32* @DMA_CH_SR_RI_LEN, align 4
  %76 = call i32 @XLGMAC_GET_REG_BITS(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %78 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %50
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %84, %81
  %88 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %89 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %88, i32 0, i32 4
  %90 = call i64 @napi_schedule_prep(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %94 = call i32 @xlgmac_disable_rx_tx_ints(%struct.xlgmac_pdata* %93)
  %95 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %96 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %101 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %100, i32 0, i32 4
  %102 = call i32 @__napi_schedule_irqoff(i32* %101)
  br label %103

103:                                              ; preds = %92, %87
  br label %104

104:                                              ; preds = %103, %84, %50
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @DMA_CH_SR_TPS_POS, align 4
  %107 = load i32, i32* @DMA_CH_SR_TPS_LEN, align 4
  %108 = call i32 @XLGMAC_GET_REG_BITS(i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %112 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %104
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @DMA_CH_SR_RPS_POS, align 4
  %119 = load i32, i32* @DMA_CH_SR_RPS_LEN, align 4
  %120 = call i32 @XLGMAC_GET_REG_BITS(i32 %117, i32 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %124 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %116
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @DMA_CH_SR_TBU_POS, align 4
  %131 = load i32, i32* @DMA_CH_SR_TBU_LEN, align 4
  %132 = call i32 @XLGMAC_GET_REG_BITS(i32 %129, i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %136 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %128
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @DMA_CH_SR_RBU_POS, align 4
  %143 = load i32, i32* @DMA_CH_SR_RBU_LEN, align 4
  %144 = call i32 @XLGMAC_GET_REG_BITS(i32 %141, i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %148 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %140
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @DMA_CH_SR_FBE_POS, align 4
  %155 = load i32, i32* @DMA_CH_SR_FBE_LEN, align 4
  %156 = call i32 @XLGMAC_GET_REG_BITS(i32 %153, i32 %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %160 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %165 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %164, i32 0, i32 2
  %166 = call i32 @schedule_work(i32* %165)
  br label %167

167:                                              ; preds = %158, %152
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %10, align 8
  %170 = load i32, i32* @DMA_CH_SR, align 4
  %171 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %169, i32 %170)
  %172 = call i32 @writel(i32 %168, i64 %171)
  br label %173

173:                                              ; preds = %167, %49
  %174 = load i32, i32* %12, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %37

176:                                              ; preds = %37
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @DMA_ISR_MACIS_POS, align 4
  %179 = load i32, i32* @DMA_ISR_MACIS_LEN, align 4
  %180 = call i32 @XLGMAC_GET_REG_BITS(i32 %177, i32 %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %215

182:                                              ; preds = %176
  %183 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %184 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @MAC_ISR, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @readl(i64 %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @MAC_ISR_MMCTXIS_POS, align 4
  %191 = load i32, i32* @MAC_ISR_MMCTXIS_LEN, align 4
  %192 = call i32 @XLGMAC_GET_REG_BITS(i32 %189, i32 %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %182
  %195 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %196 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %195, i32 0, i32 1
  %197 = load i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.1*)** %196, align 8
  %198 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %199 = bitcast %struct.xlgmac_pdata* %198 to %struct.xlgmac_pdata.1*
  %200 = call i32 %197(%struct.xlgmac_pdata.1* %199)
  br label %201

201:                                              ; preds = %194, %182
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @MAC_ISR_MMCRXIS_POS, align 4
  %204 = load i32, i32* @MAC_ISR_MMCRXIS_LEN, align 4
  %205 = call i32 @XLGMAC_GET_REG_BITS(i32 %202, i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %209 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %208, i32 0, i32 0
  %210 = load i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.0*)** %209, align 8
  %211 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  %212 = bitcast %struct.xlgmac_pdata* %211 to %struct.xlgmac_pdata.0*
  %213 = call i32 %210(%struct.xlgmac_pdata.0* %212)
  br label %214

214:                                              ; preds = %207, %201
  br label %215

215:                                              ; preds = %214, %176
  %216 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %27
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_dbg(%struct.xlgmac_pdata*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

declare dso_local i32 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @xlgmac_disable_rx_tx_ints(%struct.xlgmac_pdata*) #1

declare dso_local i32 @__napi_schedule_irqoff(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
