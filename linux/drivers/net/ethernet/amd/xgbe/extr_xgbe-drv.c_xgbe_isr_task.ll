; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_isr_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_isr_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.xgbe_channel**, %struct.xgbe_hw_if }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.TYPE_6__ = type { i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.1 = type opaque
%struct.TYPE_5__ = type { i32 }
%struct.xgbe_channel = type { i32 }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.4*)* }
%struct.xgbe_prv_data.2 = type opaque
%struct.xgbe_prv_data.3 = type opaque
%struct.xgbe_prv_data.4 = type opaque

@DMA_ISR = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DMA_ISR=%#010x\0A\00", align 1
@DMA_CH_SR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DMA_CH%u_ISR=%#010x\0A\00", align 1
@TI = common dso_local global i32 0, align 4
@RI = common dso_local global i32 0, align 4
@RBU = common dso_local global i32 0, align 4
@FBE = common dso_local global i32 0, align 4
@MACIS = common dso_local global i32 0, align 4
@MAC_ISR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"MAC_ISR=%#010x\0A\00", align 1
@MMCTXIS = common dso_local global i32 0, align 4
@MMCRXIS = common dso_local global i32 0, align 4
@TSIS = common dso_local global i32 0, align 4
@MAC_TSSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"MAC_TSSR=%#010x\0A\00", align 1
@TXTSC = common dso_local global i32 0, align 4
@SMI = common dso_local global i32 0, align 4
@MAC_MDIOISR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"MAC_MDIOISR=%#010x\0A\00", align 1
@SNGLCOMPINT = common dso_local global i32 0, align 4
@XP_INT_REISSUE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xgbe_isr_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_isr_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_hw_if*, align 8
  %5 = alloca %struct.xgbe_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.xgbe_prv_data*
  store %struct.xgbe_prv_data* %14, %struct.xgbe_prv_data** %3, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 18
  store %struct.xgbe_hw_if* %16, %struct.xgbe_hw_if** %4, align 8
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = load i32, i32* @DMA_ISR, align 4
  %19 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %239

23:                                               ; preds = %1
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %25 = load i32, i32* @intr, align 4
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %127, %23
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %130

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %127

44:                                               ; preds = %37
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 17
  %47 = load %struct.xgbe_channel**, %struct.xgbe_channel*** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.xgbe_channel*, %struct.xgbe_channel** %47, i64 %49
  %51 = load %struct.xgbe_channel*, %struct.xgbe_channel** %50, align 8
  store %struct.xgbe_channel* %51, %struct.xgbe_channel** %5, align 8
  %52 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %53 = load i32, i32* @DMA_CH_SR, align 4
  %54 = call i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %56 = load i32, i32* @intr, align 4
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %44
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @DMA_CH_SR, align 4
  %70 = load i32, i32* @TI, align 4
  %71 = call i64 @XGMAC_GET_BITS(i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @DMA_CH_SR, align 4
  %76 = load i32, i32* @RI, align 4
  %77 = call i64 @XGMAC_GET_BITS(i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %73, %67
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %81 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %80, i32 0, i32 16
  %82 = call i64 @napi_schedule_prep(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %86 = call i32 @xgbe_disable_rx_tx_ints(%struct.xgbe_prv_data* %85)
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %88 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %87, i32 0, i32 16
  %89 = call i32 @__napi_schedule_irqoff(i32* %88)
  br label %90

90:                                               ; preds = %84, %79
  br label %100

91:                                               ; preds = %73, %44
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @DMA_CH_SR, align 4
  %94 = load i32, i32* @TI, align 4
  %95 = call i32 @XGMAC_SET_BITS(i32 %92, i32 %93, i32 %94, i32 0)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @DMA_CH_SR, align 4
  %98 = load i32, i32* @RI, align 4
  %99 = call i32 @XGMAC_SET_BITS(i32 %96, i32 %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %91, %90
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @DMA_CH_SR, align 4
  %103 = load i32, i32* @RBU, align 4
  %104 = call i64 @XGMAC_GET_BITS(i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %108 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %100
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @DMA_CH_SR, align 4
  %115 = load i32, i32* @FBE, align 4
  %116 = call i64 @XGMAC_GET_BITS(i32 %113, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %120 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %119, i32 0, i32 14
  %121 = call i32 @schedule_work(i32* %120)
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %124 = load i32, i32* @DMA_CH_SR, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %43
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %31

130:                                              ; preds = %31
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @DMA_ISR, align 4
  %133 = load i32, i32* @MACIS, align 4
  %134 = call i64 @XGMAC_GET_BITS(i32 %131, i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %238

136:                                              ; preds = %130
  %137 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %138 = load i32, i32* @MAC_ISR, align 4
  %139 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %137, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %141 = load i32, i32* @intr, align 4
  %142 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %143 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %140, i32 %141, i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @MAC_ISR, align 4
  %149 = load i32, i32* @MMCTXIS, align 4
  %150 = call i64 @XGMAC_GET_BITS(i32 %147, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %136
  %153 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %154 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %153, i32 0, i32 2
  %155 = load i32 (%struct.xgbe_prv_data.4*)*, i32 (%struct.xgbe_prv_data.4*)** %154, align 8
  %156 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %157 = bitcast %struct.xgbe_prv_data* %156 to %struct.xgbe_prv_data.4*
  %158 = call i32 %155(%struct.xgbe_prv_data.4* %157)
  br label %159

159:                                              ; preds = %152, %136
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @MAC_ISR, align 4
  %162 = load i32, i32* @MMCRXIS, align 4
  %163 = call i64 @XGMAC_GET_BITS(i32 %160, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %167 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %166, i32 0, i32 1
  %168 = load i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.3*)** %167, align 8
  %169 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %170 = bitcast %struct.xgbe_prv_data* %169 to %struct.xgbe_prv_data.3*
  %171 = call i32 %168(%struct.xgbe_prv_data.3* %170)
  br label %172

172:                                              ; preds = %165, %159
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @MAC_ISR, align 4
  %175 = load i32, i32* @TSIS, align 4
  %176 = call i64 @XGMAC_GET_BITS(i32 %173, i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %210

178:                                              ; preds = %172
  %179 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %180 = load i32, i32* @MAC_TSSR, align 4
  %181 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %183 = load i32, i32* @intr, align 4
  %184 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %185 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %184, i32 0, i32 10
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %182, i32 %183, i32 %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @MAC_TSSR, align 4
  %191 = load i32, i32* @TXTSC, align 4
  %192 = call i64 @XGMAC_GET_BITS(i32 %189, i32 %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %178
  %195 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %4, align 8
  %196 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %195, i32 0, i32 0
  %197 = load i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.2*)** %196, align 8
  %198 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %199 = bitcast %struct.xgbe_prv_data* %198 to %struct.xgbe_prv_data.2*
  %200 = call i32 %197(%struct.xgbe_prv_data.2* %199)
  %201 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %202 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %201, i32 0, i32 13
  store i32 %200, i32* %202, align 8
  %203 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %204 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %207 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %206, i32 0, i32 11
  %208 = call i32 @queue_work(i32 %205, i32* %207)
  br label %209

209:                                              ; preds = %194, %178
  br label %210

210:                                              ; preds = %209, %172
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @MAC_ISR, align 4
  %213 = load i32, i32* @SMI, align 4
  %214 = call i64 @XGMAC_GET_BITS(i32 %211, i32 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %210
  %217 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %218 = load i32, i32* @MAC_MDIOISR, align 4
  %219 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %217, i32 %218)
  store i32 %219, i32* %10, align 4
  %220 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %221 = load i32, i32* @intr, align 4
  %222 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %223 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %10, align 4
  %226 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %220, i32 %221, i32 %224, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @MAC_MDIOISR, align 4
  %229 = load i32, i32* @SNGLCOMPINT, align 4
  %230 = call i64 @XGMAC_GET_BITS(i32 %227, i32 %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %216
  %233 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %234 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %233, i32 0, i32 9
  %235 = call i32 @complete(i32* %234)
  br label %236

236:                                              ; preds = %232, %216
  br label %237

237:                                              ; preds = %236, %210
  br label %238

238:                                              ; preds = %237, %130
  br label %239

239:                                              ; preds = %238, %22
  %240 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %241 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %244 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %242, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %239
  %248 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %249 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %248, i32 0, i32 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %250, align 8
  %252 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %253 = bitcast %struct.xgbe_prv_data* %252 to %struct.xgbe_prv_data.1*
  %254 = call i32 %251(%struct.xgbe_prv_data.1* %253)
  br label %255

255:                                              ; preds = %247, %239
  %256 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %257 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %256, i32 0, i32 6
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %255
  %263 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %264 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %267 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %265, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %262
  %271 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %272 = ptrtoint %struct.xgbe_prv_data* %271 to i64
  %273 = call i32 @xgbe_ecc_isr_task(i64 %272)
  br label %274

274:                                              ; preds = %270, %262, %255
  %275 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %276 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %275, i32 0, i32 6
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %274
  %282 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %283 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %286 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %284, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %281
  %290 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %291 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %292, align 8
  %294 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %295 = bitcast %struct.xgbe_prv_data* %294 to %struct.xgbe_prv_data.0*
  %296 = call i32 %293(%struct.xgbe_prv_data.0* %295)
  br label %297

297:                                              ; preds = %289, %281, %274
  %298 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %299 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %298, i32 0, i32 6
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %297
  store i32 1, i32* %12, align 4
  %305 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %306 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %312, label %309

309:                                              ; preds = %304
  %310 = load i32, i32* %12, align 4
  %311 = or i32 %310, 1048560
  store i32 %311, i32* %12, align 4
  br label %312

312:                                              ; preds = %309, %304
  %313 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %314 = load i32, i32* @XP_INT_REISSUE_EN, align 4
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %313, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %312, %297
  ret void
}

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @XGMAC_DMA_IOREAD(%struct.xgbe_channel*, i32) #1

declare dso_local i64 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @xgbe_disable_rx_tx_ints(%struct.xgbe_prv_data*) #1

declare dso_local i32 @__napi_schedule_irqoff(i32*) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @xgbe_ecc_isr_task(i64) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
