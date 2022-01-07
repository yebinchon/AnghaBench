; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_do_bottom_half_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_do_bottom_half_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fst_card_info = type { i32, i64, i64, i64, i32, %struct.fst_port_info*, i32, i64, i32, i32, %struct.fst_port_info* }
%struct.fst_port_info = type { i64, i32, i64, i64, %struct.sk_buff**, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"do_bottom_half_tx\0A\00", align 1
@txDescrRing = common dso_local global %struct.TYPE_4__** null, align 8
@DMA_OWN = common dso_local global i32 0, align 4
@FST_TXQ_DEPTH = common dso_local global i32 0, align 4
@FST_MIN_DMA_LEN = common dso_local global i64 0, align 8
@FST_FAMILY_TXP = common dso_local global i64 0, align 8
@txBuffer = common dso_local global i32*** null, align 8
@TX_STP = common dso_local global i32 0, align 4
@TX_ENP = common dso_local global i32 0, align 4
@NUM_TX_BUFFER = common dso_local global i64 0, align 8
@fst_txq_low = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*)* @do_bottom_half_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_bottom_half_tx(%struct.fst_card_info* %0) #0 {
  %2 = alloca %struct.fst_card_info*, align 8
  %3 = alloca %struct.fst_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.fst_card_info* %0, %struct.fst_card_info** %2, align 8
  %9 = load i32, i32* @DBG_TX, align 4
  %10 = call i32 @dbg(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %11 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %12 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %11, i32 0, i32 10
  %13 = load %struct.fst_port_info*, %struct.fst_port_info** %12, align 8
  store %struct.fst_port_info* %13, %struct.fst_port_info** %3, align 8
  br label %14

14:                                               ; preds = %276, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %17 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %281

20:                                               ; preds = %14
  %21 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %22 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %276

26:                                               ; preds = %20
  %27 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %28 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %27)
  store %struct.net_device* %28, %struct.net_device** %8, align 8
  br label %29

29:                                               ; preds = %274, %26
  %30 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @txDescrRing, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %37 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FST_RDB(%struct.fst_card_info* %30, i32 %41)
  %43 = load i32, i32* @DMA_OWN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %29
  %47 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %48 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %29
  %53 = phi i1 [ false, %29 ], [ %51, %46 ]
  br i1 %53, label %54, label %275

54:                                               ; preds = %52
  %55 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %56 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %55, i32 0, i32 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %60 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %64 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @FST_TXQ_DEPTH, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %54
  %74 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %75 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %74, i32 0, i32 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %273

80:                                               ; preds = %73
  %81 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %82 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %81, i32 0, i32 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %86 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %85, i32 0, i32 4
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %86, align 8
  %88 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %89 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %87, i64 %90
  %92 = load %struct.sk_buff*, %struct.sk_buff** %91, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %6, align 8
  %93 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %94 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %98 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @FST_TXQ_DEPTH, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %80
  %104 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %105 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %80
  %107 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %108 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %107, i32 0, i32 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %112 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @txDescrRing, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %112, i64 %114
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %118 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @cnv_bcnt(i64 %125)
  %127 = call i32 @FST_WRW(%struct.fst_card_info* %111, i32 %122, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FST_MIN_DMA_LEN, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %106
  %134 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %135 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @FST_FAMILY_TXP, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %199

139:                                              ; preds = %133, %106
  %140 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %141 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = load i32***, i32**** @txBuffer, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32**, i32*** %143, i64 %145
  %147 = load i32**, i32*** %146, align 8
  %148 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %149 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32*, i32** %147, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @BUF_OFFSET(i32 %154)
  %156 = add nsw i64 %142, %155
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @memcpy_toio(i64 %156, i32 %159, i64 %162)
  %164 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %165 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @txDescrRing, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %165, i64 %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %171 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @DMA_OWN, align 4
  %177 = load i32, i32* @TX_STP, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @TX_ENP, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @FST_WRB(%struct.fst_card_info* %164, i32 %175, i32 %180)
  %182 = load %struct.net_device*, %struct.net_device** %8, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.net_device*, %struct.net_device** %8, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %189
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 4
  %197 = load %struct.net_device*, %struct.net_device** %8, align 8
  %198 = call i32 @netif_trans_update(%struct.net_device* %197)
  br label %244

199:                                              ; preds = %133
  %200 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %201 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @memcpy(i32 %202, i32 %205, i64 %208)
  %210 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %211 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %212 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %211, i32 0, i32 5
  store %struct.fst_port_info* %210, %struct.fst_port_info** %212, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %217 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %216, i32 0, i32 2
  store i64 %215, i64* %217, align 8
  %218 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %219 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %222 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %221, i32 0, i32 3
  store i64 %220, i64* %222, align 8
  %223 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %224 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %225 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32***, i32**** @txBuffer, align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32**, i32*** %227, i64 %229
  %231 = load i32**, i32*** %230, align 8
  %232 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %233 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i32*, i32** %231, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @BUF_OFFSET(i32 %238)
  %240 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @fst_tx_dma(%struct.fst_card_info* %223, i32 %226, i64 %239, i64 %242)
  br label %244

244:                                              ; preds = %199, %139
  %245 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %246 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %246, align 8
  %249 = load i64, i64* @NUM_TX_BUFFER, align 8
  %250 = icmp uge i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %253 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  br label %254

254:                                              ; preds = %251, %244
  %255 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %256 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %254
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @fst_txq_low, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %265 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %264)
  %266 = call i32 @netif_wake_queue(%struct.net_device* %265)
  %267 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %268 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %267, i32 0, i32 3
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %263, %259
  br label %270

270:                                              ; preds = %269, %254
  %271 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %272 = call i32 @dev_kfree_skb(%struct.sk_buff* %271)
  br label %274

273:                                              ; preds = %73
  br label %275

274:                                              ; preds = %270
  br label %29

275:                                              ; preds = %273, %52
  br label %276

276:                                              ; preds = %275, %25
  %277 = load i32, i32* %4, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %4, align 4
  %279 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %280 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %279, i32 1
  store %struct.fst_port_info* %280, %struct.fst_port_info** %3, align 8
  br label %14

281:                                              ; preds = %14
  ret void
}

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local %struct.net_device* @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FST_WRW(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @cnv_bcnt(i64) #1

declare dso_local i32 @memcpy_toio(i64, i32, i64) #1

declare dso_local i64 @BUF_OFFSET(i32) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @fst_tx_dma(%struct.fst_card_info*, i32, i64, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
