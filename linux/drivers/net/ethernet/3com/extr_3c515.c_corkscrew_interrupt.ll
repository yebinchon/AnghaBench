; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.corkscrew_private = type { i32, i32, i32, i32*, i64, i32**, i32* }

@max_interrupt_work = common dso_local global i32 0, align 4
@Timer = common dso_local global i32 0, align 4
@EL3_STATUS = common dso_local global i64 0, align 8
@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: interrupt, status %4.4x, timer %d.\0A\00", align 1
@corkscrew_interrupt.donedidthis = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: Bogus interrupt, bailing. Status %4.4x, start=%d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: In interrupt loop, status %4.4x.\0A\00", align 1
@RxComplete = common dso_local global i32 0, align 4
@TxAvailable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"\09TX room bit was handled.\0A\00", align 1
@AckIntr = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@DownComplete = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@DownListPtr = common dso_local global i64 0, align 8
@UpComplete = common dso_local global i32 0, align 4
@AdapterFailure = common dso_local global i32 0, align 4
@RxEarly = common dso_local global i32 0, align 4
@StatsFull = common dso_local global i32 0, align 4
@corkscrew_interrupt.DoneDidThat = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: Updating stats.\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"%s: Updating stats failed, disabling stats as an interrupt source.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Vortex window %d:\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" %2.2x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SetIntrEnb = common dso_local global i32 0, align 4
@TxComplete = common dso_local global i32 0, align 4
@RxReset = common dso_local global i32 0, align 4
@RxEnable = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [76 x i8] c"%s: Too much work in interrupt, status %4.4x. Disabling functions (%4.4x).\0A\00", align 1
@SetStatusEnb = common dso_local global i32 0, align 4
@IntReq = common dso_local global i32 0, align 4
@IntLatch = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"%s: exiting interrupt, status %4.4x.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DMADone = common dso_local global i32 0, align 4
@Wn7_MasterStatus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @corkscrew_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corkscrew_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.corkscrew_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.net_device*
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %17)
  store %struct.corkscrew_private* %18, %struct.corkscrew_private** %6, align 8
  %19 = load i32, i32* @max_interrupt_work, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @Timer, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @inb(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %28 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @EL3_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inw(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @corkscrew_debug, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %2
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 57344
  %47 = icmp ne i32 %46, 57344
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i32, i32* @corkscrew_interrupt.donedidthis, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @corkscrew_interrupt.donedidthis, align 4
  %51 = icmp sgt i32 %49, 100
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @netif_running(%struct.net_device* %57)
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @free_irq(i32 %62, %struct.net_device* %63)
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 2
  store i32 -1, i32* %66, align 4
  br label %67

67:                                               ; preds = %52, %48
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %393, %68
  %70 = load i32, i32* @corkscrew_debug, align 4
  %71 = icmp sgt i32 %70, 5
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @RxComplete, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = call i32 @corkscrew_rx(%struct.net_device* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @TxAvailable, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load i32, i32* @corkscrew_debug, align 4
  %93 = icmp sgt i32 %92, 5
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* @AckIntr, align 4
  %98 = load i32, i32* @TxAvailable, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @EL3_CMD, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outw(i32 %99, i64 %103)
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 @netif_wake_queue(%struct.net_device* %105)
  br label %107

107:                                              ; preds = %96, %86
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @DownComplete, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %199

112:                                              ; preds = %107
  %113 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %114 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %165, %112
  %117 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %118 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sub i32 %119, %120
  %122 = icmp ugt i32 %121, 0
  br i1 %122, label %123, label %168

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @TX_RING_SIZE, align 4
  %126 = urem i32 %124, %125
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* @DownListPtr, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i64 @inl(i64 %130)
  %132 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %133 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i64 @isa_virt_to_bus(i32* %137)
  %139 = icmp eq i64 %131, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %123
  br label %168

141:                                              ; preds = %123
  %142 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %143 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %142, i32 0, i32 5
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %165

150:                                              ; preds = %141
  %151 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %152 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %151, i32 0, i32 5
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @dev_consume_skb_irq(i32* %157)
  %159 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %160 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %159, i32 0, i32 5
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %150, %141
  %166 = load i32, i32* %11, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %116

168:                                              ; preds = %140, %116
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %171 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @AckIntr, align 4
  %173 = load i32, i32* @DownComplete, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* @EL3_CMD, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @outw(i32 %174, i64 %178)
  %180 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %181 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %168
  %185 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %186 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %11, align 4
  %189 = sub i32 %187, %188
  %190 = load i32, i32* @TX_RING_SIZE, align 4
  %191 = sub i32 %190, 1
  %192 = icmp ule i32 %189, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %195 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %194, i32 0, i32 4
  store i64 0, i64* %195, align 8
  %196 = load %struct.net_device*, %struct.net_device** %5, align 8
  %197 = call i32 @netif_wake_queue(%struct.net_device* %196)
  br label %198

198:                                              ; preds = %193, %184, %168
  br label %199

199:                                              ; preds = %198, %107
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @UpComplete, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %199
  %205 = load %struct.net_device*, %struct.net_device** %5, align 8
  %206 = call i32 @boomerang_rx(%struct.net_device* %205)
  %207 = load i32, i32* @AckIntr, align 4
  %208 = load i32, i32* @UpComplete, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* @EL3_CMD, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @outw(i32 %209, i64 %213)
  br label %215

215:                                              ; preds = %204, %199
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @AdapterFailure, align 4
  %218 = load i32, i32* @RxEarly, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @StatsFull, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %216, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %350

224:                                              ; preds = %215
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @RxEarly, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = load %struct.net_device*, %struct.net_device** %5, align 8
  %231 = call i32 @corkscrew_rx(%struct.net_device* %230)
  %232 = load i32, i32* @AckIntr, align 4
  %233 = load i32, i32* @RxEarly, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* @EL3_CMD, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @outw(i32 %234, i64 %238)
  br label %240

240:                                              ; preds = %229, %224
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @StatsFull, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %321

245:                                              ; preds = %240
  %246 = load i32, i32* @corkscrew_debug, align 4
  %247 = icmp sgt i32 %246, 4
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load %struct.net_device*, %struct.net_device** %5, align 8
  %250 = getelementptr inbounds %struct.net_device, %struct.net_device* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %248, %245
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.net_device*, %struct.net_device** %5, align 8
  %256 = call i32 @update_stats(i32 %254, %struct.net_device* %255)
  %257 = load i32, i32* @corkscrew_interrupt.DoneDidThat, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %320

259:                                              ; preds = %253
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* @EL3_STATUS, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @inw(i64 %263)
  %265 = load i32, i32* @StatsFull, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %320

268:                                              ; preds = %259
  %269 = load %struct.net_device*, %struct.net_device** %5, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @pr_notice(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %271)
  store i32 0, i32* %13, align 4
  br label %273

273:                                              ; preds = %295, %268
  %274 = load i32, i32* %13, align 4
  %275 = icmp slt i32 %274, 8
  br i1 %275, label %276, label %298

276:                                              ; preds = %273
  %277 = load i32, i32* %13, align 4
  %278 = call i32 @EL3WINDOW(i32 %277)
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %279)
  store i32 0, i32* %14, align 4
  br label %281

281:                                              ; preds = %290, %276
  %282 = load i32, i32* %14, align 4
  %283 = icmp slt i32 %282, 16
  br i1 %283, label %284, label %293

284:                                              ; preds = %281
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %285, %286
  %288 = call i32 @inb(i32 %287)
  %289 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %284
  %291 = load i32, i32* %14, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %14, align 4
  br label %281

293:                                              ; preds = %281
  %294 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293
  %296 = load i32, i32* %13, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %13, align 4
  br label %273

298:                                              ; preds = %273
  %299 = call i32 @EL3WINDOW(i32 7)
  %300 = load i32, i32* @SetIntrEnb, align 4
  %301 = load i32, i32* @TxAvailable, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @RxComplete, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @AdapterFailure, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @UpComplete, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @DownComplete, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @TxComplete, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* @EL3_CMD, align 8
  %316 = add nsw i64 %314, %315
  %317 = call i32 @outw(i32 %312, i64 %316)
  %318 = load i32, i32* @corkscrew_interrupt.DoneDidThat, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* @corkscrew_interrupt.DoneDidThat, align 4
  br label %320

320:                                              ; preds = %298, %259, %253
  br label %321

321:                                              ; preds = %320, %240
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @AdapterFailure, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %349

326:                                              ; preds = %321
  %327 = load i32, i32* @RxReset, align 4
  %328 = load i32, i32* %7, align 4
  %329 = sext i32 %328 to i64
  %330 = load i64, i64* @EL3_CMD, align 8
  %331 = add nsw i64 %329, %330
  %332 = call i32 @outw(i32 %327, i64 %331)
  %333 = load %struct.net_device*, %struct.net_device** %5, align 8
  %334 = call i32 @set_rx_mode(%struct.net_device* %333)
  %335 = load i32, i32* @RxEnable, align 4
  %336 = load i32, i32* %7, align 4
  %337 = sext i32 %336 to i64
  %338 = load i64, i64* @EL3_CMD, align 8
  %339 = add nsw i64 %337, %338
  %340 = call i32 @outw(i32 %335, i64 %339)
  %341 = load i32, i32* @AckIntr, align 4
  %342 = load i32, i32* @AdapterFailure, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = load i64, i64* @EL3_CMD, align 8
  %347 = add nsw i64 %345, %346
  %348 = call i32 @outw(i32 %343, i64 %347)
  br label %349

349:                                              ; preds = %326, %321
  br label %350

350:                                              ; preds = %349, %215
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %10, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %382

354:                                              ; preds = %350
  %355 = load %struct.net_device*, %struct.net_device** %5, align 8
  %356 = getelementptr inbounds %struct.net_device, %struct.net_device* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* @SetStatusEnb, align 4
  %360 = load i32, i32* %8, align 4
  %361 = xor i32 %360, -1
  %362 = and i32 %361, 2046
  %363 = or i32 %359, %362
  %364 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0), i32 %357, i32 %358, i32 %363)
  %365 = load i32, i32* @SetStatusEnb, align 4
  %366 = load i32, i32* %8, align 4
  %367 = xor i32 %366, -1
  %368 = and i32 %367, 2046
  %369 = or i32 %365, %368
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* @EL3_CMD, align 8
  %373 = add nsw i64 %371, %372
  %374 = call i32 @outw(i32 %369, i64 %373)
  %375 = load i32, i32* @AckIntr, align 4
  %376 = or i32 %375, 2047
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = load i64, i64* @EL3_CMD, align 8
  %380 = add nsw i64 %378, %379
  %381 = call i32 @outw(i32 %376, i64 %380)
  br label %404

382:                                              ; preds = %350
  %383 = load i32, i32* @AckIntr, align 4
  %384 = load i32, i32* @IntReq, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @IntLatch, align 4
  %387 = or i32 %385, %386
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = load i64, i64* @EL3_CMD, align 8
  %391 = add nsw i64 %389, %390
  %392 = call i32 @outw(i32 %387, i64 %391)
  br label %393

393:                                              ; preds = %382
  %394 = load i32, i32* %7, align 4
  %395 = sext i32 %394 to i64
  %396 = load i64, i64* @EL3_STATUS, align 8
  %397 = add nsw i64 %395, %396
  %398 = call i32 @inw(i64 %397)
  store i32 %398, i32* %8, align 4
  %399 = load i32, i32* @IntLatch, align 4
  %400 = load i32, i32* @RxComplete, align 4
  %401 = or i32 %399, %400
  %402 = and i32 %398, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %69, label %404

404:                                              ; preds = %393, %354
  %405 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %406 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %405, i32 0, i32 2
  %407 = call i32 @spin_unlock(i32* %406)
  %408 = load i32, i32* @corkscrew_debug, align 4
  %409 = icmp sgt i32 %408, 4
  br i1 %409, label %410, label %416

410:                                              ; preds = %404
  %411 = load %struct.net_device*, %struct.net_device** %5, align 8
  %412 = getelementptr inbounds %struct.net_device, %struct.net_device* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %8, align 4
  %415 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %410, %404
  %417 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %417
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @corkscrew_rx(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i64 @isa_virt_to_bus(i32*) #1

declare dso_local i32 @dev_consume_skb_irq(i32*) #1

declare dso_local i32 @boomerang_rx(%struct.net_device*) #1

declare dso_local i32 @update_stats(i32, %struct.net_device*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
