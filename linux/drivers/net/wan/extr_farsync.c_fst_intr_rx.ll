; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_intr_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_intr_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fst_card_info = type { i64, i16, i32, i32, %struct.fst_port_info*, %struct.sk_buff*, i64, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.fst_port_info = type { i32, i32, i64 }
%struct.net_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i16, i32, i32 }

@rxDescrRing = common dso_local global %struct.TYPE_4__** null, align 8
@DMA_OWN = common dso_local global i8 0, align 1
@DBG_RX = common dso_local global i32 0, align 4
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"intr_rx: No buffer port %d pos %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Frame received with 0 length. Card %d Port %d\0A\00", align 1
@NUM_RX_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"intr_rx: %d,%d: flags %x len %d\0A\00", align 1
@RX_STP = common dso_local global i8 0, align 1
@RX_ENP = common dso_local global i8 0, align 1
@LEN_RX_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"intr_rx: can't allocate buffer\0A\00", align 1
@FST_MIN_DMA_LEN = common dso_local global i16 0, align 2
@FST_FAMILY_TXP = common dso_local global i64 0, align 8
@rxBuffer = common dso_local global i32*** null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Pushing frame up the stack\0A\00", align 1
@FST_RAW = common dso_local global i64 0, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@DBG_ASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"About to increment rxpos by more than 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"rxp = %d rxpos = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*)* @fst_intr_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_intr_rx(%struct.fst_card_info* %0, %struct.fst_port_info* %1) #0 {
  %3 = alloca %struct.fst_card_info*, align 8
  %4 = alloca %struct.fst_port_info*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.fst_card_info* %0, %struct.fst_card_info** %3, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %4, align 8
  %12 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %13 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %12)
  store %struct.net_device* %13, %struct.net_device** %11, align 8
  %14 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %15 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %18 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rxDescrRing, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call zeroext i8 @FST_RDB(%struct.fst_card_info* %20, i32 %30)
  store i8 %31, i8* %5, align 1
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @DMA_OWN, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load i32, i32* @DBG_RX, align 4
  %40 = load i32, i32* @DBG_INTR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, ...) @dbg(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %320

45:                                               ; preds = %2
  %46 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %47 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %320

51:                                               ; preds = %45
  %52 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rxDescrRing, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call zeroext i16 @FST_RDW(%struct.fst_card_info* %52, i32 %62)
  store i16 %63, i16* %9, align 2
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = sub nsw i32 %65, 2
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %9, align 2
  %68 = load i16, i16* %9, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %51
  %72 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %73 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %76 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rxDescrRing, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8, i8* @DMA_OWN, align 1
  %91 = call i32 @FST_WRB(%struct.fst_card_info* %79, i32 %89, i8 zeroext %90)
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @NUM_RX_BUFFER, align 4
  %95 = srem i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %98 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %320

99:                                               ; preds = %51
  %100 = load i32, i32* @DBG_RX, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i8, i8* %5, align 1
  %104 = zext i8 %103 to i32
  %105 = load i16, i16* %9, align 2
  %106 = zext i16 %105 to i32
  %107 = call i32 (i32, i8*, ...) @dbg(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, i32 %104, i32 %106)
  %108 = load i8, i8* %5, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @RX_STP, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @RX_ENP, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %111, %113
  %115 = icmp ne i32 %109, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %99
  %117 = load i16, i16* %9, align 2
  %118 = zext i16 %117 to i32
  %119 = load i32, i32* @LEN_RX_BUFFER, align 4
  %120 = sub nsw i32 %119, 2
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116, %99
  %123 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %124 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %125 = load i8, i8* %5, align 1
  %126 = load i32, i32* %7, align 4
  %127 = load i16, i16* %9, align 2
  %128 = call i32 @fst_log_rx_error(%struct.fst_card_info* %123, %struct.fst_port_info* %124, i8 zeroext %125, i32 %126, i16 zeroext %127)
  %129 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %130 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %131 = load i8, i8* %5, align 1
  %132 = load i32, i32* %7, align 4
  %133 = load i16, i16* %9, align 2
  %134 = call i32 @fst_recover_rx_error(%struct.fst_card_info* %129, %struct.fst_port_info* %130, i8 zeroext %131, i32 %132, i16 zeroext %133)
  br label %320

135:                                              ; preds = %116
  %136 = load i16, i16* %9, align 2
  %137 = call %struct.sk_buff* @dev_alloc_skb(i16 zeroext %136)
  store %struct.sk_buff* %137, %struct.sk_buff** %10, align 8
  %138 = icmp eq %struct.sk_buff* %137, null
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load i32, i32* @DBG_RX, align 4
  %141 = call i32 (i32, i8*, ...) @dbg(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.net_device*, %struct.net_device** %11, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %148 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rxDescrRing, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %148, i64 %150
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i8, i8* @DMA_OWN, align 1
  %159 = call i32 @FST_WRB(%struct.fst_card_info* %147, i32 %157, i8 zeroext %158)
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* @NUM_RX_BUFFER, align 4
  %163 = srem i32 %161, %162
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %166 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %320

167:                                              ; preds = %135
  %168 = load i16, i16* %9, align 2
  %169 = zext i16 %168 to i32
  %170 = load i16, i16* @FST_MIN_DMA_LEN, align 2
  %171 = zext i16 %170 to i32
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %167
  %174 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %175 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @FST_FAMILY_TXP, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %266

179:                                              ; preds = %173, %167
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %181 = load i16, i16* %9, align 2
  %182 = call i32 @skb_put(%struct.sk_buff* %180, i16 zeroext %181)
  %183 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %184 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = load i32***, i32**** @rxBuffer, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32**, i32*** %186, i64 %188
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @BUF_OFFSET(i32 %196)
  %198 = add nsw i64 %185, %197
  %199 = load i16, i16* %9, align 2
  %200 = call i32 @memcpy_fromio(i32 %182, i64 %198, i16 zeroext %199)
  %201 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %202 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rxDescrRing, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %202, i64 %204
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i8, i8* @DMA_OWN, align 1
  %213 = call i32 @FST_WRB(%struct.fst_card_info* %201, i32 %211, i8 zeroext %212)
  %214 = load %struct.net_device*, %struct.net_device** %11, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load i16, i16* %9, align 2
  %220 = zext i16 %219 to i32
  %221 = load %struct.net_device*, %struct.net_device** %11, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i16, i16* %223, align 4
  %225 = zext i16 %224 to i32
  %226 = add nsw i32 %225, %220
  %227 = trunc i32 %226 to i16
  store i16 %227, i16* %223, align 4
  %228 = load i32, i32* @DBG_RX, align 4
  %229 = call i32 (i32, i8*, ...) @dbg(i32 %228, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %230 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %231 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @FST_RAW, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %179
  %236 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %237 = load %struct.net_device*, %struct.net_device** %11, align 8
  %238 = call i32 @farsync_type_trans(%struct.sk_buff* %236, %struct.net_device* %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  br label %247

241:                                              ; preds = %179
  %242 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %243 = load %struct.net_device*, %struct.net_device** %11, align 8
  %244 = call i32 @hdlc_type_trans(%struct.sk_buff* %242, %struct.net_device* %243)
  %245 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %246 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %241, %235
  %248 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %249 = call i32 @netif_rx(%struct.sk_buff* %248)
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %252 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %251)
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @fst_process_rx_status(i32 %250, i32 %254)
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @NET_RX_DROP, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %247
  %260 = load %struct.net_device*, %struct.net_device** %11, align 8
  %261 = getelementptr inbounds %struct.net_device, %struct.net_device* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %259, %247
  br label %297

266:                                              ; preds = %173
  %267 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %268 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %269 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %268, i32 0, i32 5
  store %struct.sk_buff* %267, %struct.sk_buff** %269, align 8
  %270 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %271 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %272 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %271, i32 0, i32 4
  store %struct.fst_port_info* %270, %struct.fst_port_info** %272, align 8
  %273 = load i16, i16* %9, align 2
  %274 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %275 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %274, i32 0, i32 1
  store i16 %273, i16* %275, align 8
  %276 = load i32, i32* %7, align 4
  %277 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %278 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  %279 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %280 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %281 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load i32***, i32**** @rxBuffer, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32**, i32*** %283, i64 %285
  %287 = load i32**, i32*** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @BUF_OFFSET(i32 %293)
  %295 = load i16, i16* %9, align 2
  %296 = call i32 @fst_rx_dma(%struct.fst_card_info* %279, i32 %282, i64 %294, i16 zeroext %295)
  br label %297

297:                                              ; preds = %266, %265
  %298 = load i32, i32* %7, align 4
  %299 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %300 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %298, %301
  br i1 %302, label %303, label %312

303:                                              ; preds = %297
  %304 = load i32, i32* @DBG_ASS, align 4
  %305 = call i32 (i32, i8*, ...) @dbg(i32 %304, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %306 = load i32, i32* @DBG_ASS, align 4
  %307 = load i32, i32* %7, align 4
  %308 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %309 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (i32, i8*, ...) @dbg(i32 %306, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %307, i32 %310)
  br label %312

312:                                              ; preds = %303, %297
  %313 = load i32, i32* %7, align 4
  %314 = add nsw i32 %313, 1
  %315 = load i32, i32* @NUM_RX_BUFFER, align 4
  %316 = srem i32 %314, %315
  store i32 %316, i32* %7, align 4
  %317 = load i32, i32* %7, align 4
  %318 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %319 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 4
  br label %320

320:                                              ; preds = %312, %139, %122, %71, %50, %38
  ret void
}

declare dso_local %struct.net_device* @port_to_dev(%struct.fst_port_info*) #1

declare dso_local zeroext i8 @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i32 @dbg(i32, i8*, ...) #1

declare dso_local zeroext i16 @FST_RDW(%struct.fst_card_info*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i8 zeroext) #1

declare dso_local i32 @fst_log_rx_error(%struct.fst_card_info*, %struct.fst_port_info*, i8 zeroext, i32, i16 zeroext) #1

declare dso_local i32 @fst_recover_rx_error(%struct.fst_card_info*, %struct.fst_port_info*, i8 zeroext, i32, i16 zeroext) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i16 zeroext) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i16 zeroext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 zeroext) #1

declare dso_local i64 @BUF_OFFSET(i32) #1

declare dso_local i32 @farsync_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @hdlc_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @fst_process_rx_status(i32, i32) #1

declare dso_local i32 @fst_rx_dma(%struct.fst_card_info*, i32, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
