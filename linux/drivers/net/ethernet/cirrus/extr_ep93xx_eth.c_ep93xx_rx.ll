; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ep93xx_priv = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ep93xx_rdesc*, %struct.ep93xx_rstat* }
%struct.ep93xx_rdesc = type { i32 }
%struct.ep93xx_rstat = type { i32, i32 }
%struct.sk_buff = type { i32 }

@RSTAT0_RFP = common dso_local global i32 0, align 4
@RSTAT1_RFP = common dso_local global i32 0, align 4
@RSTAT0_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"not end-of-frame %.8x %.8x\0A\00", align 1
@RSTAT0_EOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"not end-of-buffer %.8x %.8x\0A\00", align 1
@RSTAT1_BUFFER_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"entry mismatch %.8x %.8x\0A\00", align 1
@RSTAT0_RWE = common dso_local global i32 0, align 4
@RSTAT0_OE = common dso_local global i32 0, align 4
@RSTAT0_FE = common dso_local global i32 0, align 4
@RSTAT0_RUNT = common dso_local global i32 0, align 4
@RSTAT0_EDATA = common dso_local global i32 0, align 4
@RSTAT0_CRCE = common dso_local global i32 0, align 4
@RSTAT1_FRAME_LENGTH = common dso_local global i32 0, align 4
@MAX_PKT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid length %.8x %.8x\0A\00", align 1
@RSTAT0_CRCI = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ep93xx_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ep93xx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ep93xx_rstat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ep93xx_rdesc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.ep93xx_priv* %15, %struct.ep93xx_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %238, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %248

20:                                               ; preds = %16
  %21 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %28, i64 %30
  store %struct.ep93xx_rstat* %31, %struct.ep93xx_rstat** %8, align 8
  %32 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %8, align 8
  %33 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %8, align 8
  %36 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @RSTAT0_RFP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %20
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @RSTAT1_RFP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %20
  br label %248

48:                                               ; preds = %42
  %49 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %8, align 8
  %50 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.ep93xx_rstat*, %struct.ep93xx_rstat** %8, align 8
  %52 = getelementptr inbounds %struct.ep93xx_rstat, %struct.ep93xx_rstat* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @RSTAT0_EOF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @RSTAT0_EOB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @RSTAT1_BUFFER_INDEX, align 4
  %73 = and i32 %71, %72
  %74 = ashr i32 %73, 16
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %70
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @RSTAT0_RWE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %138, label %86

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RSTAT0_OE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %86
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @RSTAT0_FE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @RSTAT0_RUNT, align 4
  %116 = load i32, i32* @RSTAT0_EDATA, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %113
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @RSTAT0_CRCE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %126
  br label %238

138:                                              ; preds = %81
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @RSTAT1_FRAME_LENGTH, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @MAX_PKT_SIZE, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147)
  br label %238

149:                                              ; preds = %138
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @RSTAT0_CRCI, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %11, align 4
  %156 = sub nsw i32 %155, 4
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %154, %149
  %158 = load %struct.net_device*, %struct.net_device** %3, align 8
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 2
  %161 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %158, i32 %160)
  store %struct.sk_buff* %161, %struct.sk_buff** %12, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = icmp ne %struct.sk_buff* %162, null
  %164 = zext i1 %163 to i32
  %165 = call i64 @likely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %231

167:                                              ; preds = %157
  %168 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %169 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.ep93xx_rdesc*, %struct.ep93xx_rdesc** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ep93xx_rdesc, %struct.ep93xx_rdesc* %172, i64 %174
  store %struct.ep93xx_rdesc* %175, %struct.ep93xx_rdesc** %13, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %177 = call i32 @skb_reserve(%struct.sk_buff* %176, i32 2)
  %178 = load %struct.net_device*, %struct.net_device** %3, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ep93xx_rdesc*, %struct.ep93xx_rdesc** %13, align 8
  %183 = getelementptr inbounds %struct.ep93xx_rdesc, %struct.ep93xx_rdesc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %187 = call i32 @dma_sync_single_for_cpu(i32 %181, i32 %184, i32 %185, i32 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %189 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %190 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %188, i32 %195, i32 %196)
  %198 = load %struct.net_device*, %struct.net_device** %3, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ep93xx_rdesc*, %struct.ep93xx_rdesc** %13, align 8
  %203 = getelementptr inbounds %struct.ep93xx_rdesc, %struct.ep93xx_rdesc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %207 = call i32 @dma_sync_single_for_device(i32 %201, i32 %204, i32 %205, i32 %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @skb_put(%struct.sk_buff* %208, i32 %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %212 = load %struct.net_device*, %struct.net_device** %3, align 8
  %213 = call i32 @eth_type_trans(%struct.sk_buff* %211, %struct.net_device* %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %217 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %216, i32 0, i32 1
  %218 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %219 = call i32 @napi_gro_receive(i32* %217, %struct.sk_buff* %218)
  %220 = load %struct.net_device*, %struct.net_device** %3, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load %struct.net_device*, %struct.net_device** %3, align 8
  %227 = getelementptr inbounds %struct.net_device, %struct.net_device* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, %225
  store i32 %230, i32* %228, align 4
  br label %237

231:                                              ; preds = %157
  %232 = load %struct.net_device*, %struct.net_device** %3, align 8
  %233 = getelementptr inbounds %struct.net_device, %struct.net_device* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %231, %167
  br label %238

238:                                              ; preds = %237, %145, %137
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, 1
  %241 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %242 = sub nsw i32 %241, 1
  %243 = and i32 %240, %242
  %244 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %5, align 8
  %245 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %6, align 4
  br label %16

248:                                              ; preds = %47, %16
  %249 = load i32, i32* %6, align 4
  ret i32 %249
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_crit(i8*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
