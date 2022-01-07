; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_txdesc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_txdesc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { %struct.TYPE_13__, i64, %struct.wil_ring, %struct.wil_ring* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.wil_ring = type { i32, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.sk_buff* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { i32 }
%struct.wil_rx_enhanced_desc = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@dbg_ring_index = common dso_local global i32 0, align 4
@dbg_txdesc_index = common dso_local global i32 0, align 4
@WIL6210_MAX_TX_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid ring index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No Tx[%2d] RING\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"No Rx RING\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"[%2d] TxDesc index (%d) >= size (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"RxDesc index (%d) >= size (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid buff_id %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Tx[%2d][%3d] = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Rx[%3d] = {\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"  MAC = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"  DMA = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"  SKB = 0x%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @txdesc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txdesc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vring_tx_desc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.wil_rx_enhanced_desc*, align 8
  %15 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %16, i32 0, i32 0
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %17, align 8
  store %struct.wil6210_priv* %18, %struct.wil6210_priv** %6, align 8
  %19 = load i32, i32* @dbg_ring_index, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @dbg_txdesc_index, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %252

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %50

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %252

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %48 = icmp slt i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %55 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %54, i32 0, i32 3
  %56 = load %struct.wil_ring*, %struct.wil_ring** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %56, i64 %58
  br label %63

60:                                               ; preds = %50
  %61 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %61, i32 0, i32 2
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi %struct.wil_ring* [ %59, %53 ], [ %62, %60 ]
  store %struct.wil_ring* %64, %struct.wil_ring** %7, align 8
  %65 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %66 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %79

76:                                               ; preds = %69
  %77 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %78 = call i32 @seq_puts(%struct.seq_file* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %72
  store i32 0, i32* %3, align 4
  br label %252

80:                                               ; preds = %63
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %83 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %94 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92, i32 %95)
  br label %104

97:                                               ; preds = %86
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %101 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %97, %89
  store i32 0, i32* %3, align 4
  br label %252

105:                                              ; preds = %80
  %106 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %107 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store %struct.vring_tx_desc* %113, %struct.vring_tx_desc** %11, align 8
  %114 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %11, align 8
  %115 = bitcast %struct.vring_tx_desc* %114 to i32*
  store i32* %115, i32** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %116 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %117 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %185

120:                                              ; preds = %105
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %125 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = icmp ne %struct.TYPE_14__* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %130 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load %struct.sk_buff*, %struct.sk_buff** %135, align 8
  br label %138

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %128
  %139 = phi %struct.sk_buff* [ %136, %128 ], [ null, %137 ]
  store %struct.sk_buff* %139, %struct.sk_buff** %13, align 8
  br label %184

140:                                              ; preds = %120
  %141 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %142 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = icmp ne %struct.TYPE_12__* %144, null
  br i1 %145, label %146, label %183

146:                                              ; preds = %140
  %147 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %148 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %147, i32 0, i32 2
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = bitcast i32* %154 to %struct.wil_rx_enhanced_desc*
  store %struct.wil_rx_enhanced_desc* %155, %struct.wil_rx_enhanced_desc** %14, align 8
  %156 = load %struct.wil_rx_enhanced_desc*, %struct.wil_rx_enhanced_desc** %14, align 8
  %157 = getelementptr inbounds %struct.wil_rx_enhanced_desc, %struct.wil_rx_enhanced_desc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @le16_to_cpu(i32 %159)
  store i64 %160, i64* %15, align 8
  %161 = load i64, i64* %15, align 8
  %162 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %163 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @wil_val_in_range(i64 %161, i32 0, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %146
  %169 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %170 = load i64, i64* %15, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  br label %182

173:                                              ; preds = %146
  %174 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %175 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load i64, i64* %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load %struct.sk_buff*, %struct.sk_buff** %180, align 8
  store %struct.sk_buff* %181, %struct.sk_buff** %13, align 8
  br label %182

182:                                              ; preds = %173, %168
  br label %183

183:                                              ; preds = %182, %140
  br label %184

184:                                              ; preds = %183, %138
  br label %194

185:                                              ; preds = %105
  %186 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %187 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %186, i32 0, i32 1
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load %struct.sk_buff*, %struct.sk_buff** %192, align 8
  store %struct.sk_buff* %193, %struct.sk_buff** %13, align 8
  br label %194

194:                                              ; preds = %185, %184
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %10, align 4
  %201 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %199, i32 %200)
  br label %206

202:                                              ; preds = %194
  %203 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %202, %197
  %207 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load volatile i32, i32* %209, align 4
  %211 = load i32*, i32** %12, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load volatile i32, i32* %212, align 4
  %214 = load i32*, i32** %12, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load volatile i32, i32* %215, align 4
  %217 = load i32*, i32** %12, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load volatile i32, i32* %218, align 4
  %220 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %210, i32 %213, i32 %216, i32 %219)
  %221 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %222 = load i32*, i32** %12, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  %224 = load volatile i32, i32* %223, align 4
  %225 = load i32*, i32** %12, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 5
  %227 = load volatile i32, i32* %226, align 4
  %228 = load i32*, i32** %12, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 6
  %230 = load volatile i32, i32* %229, align 4
  %231 = load i32*, i32** %12, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 7
  %233 = load volatile i32, i32* %232, align 4
  %234 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %224, i32 %227, i32 %230, i32 %233)
  %235 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %237 = ptrtoint %struct.sk_buff* %236 to i32
  %238 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %235, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %240 = icmp ne %struct.sk_buff* %239, null
  br i1 %240, label %241, label %249

241:                                              ; preds = %206
  %242 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %243 = call i32 @skb_get(%struct.sk_buff* %242)
  %244 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %246 = call i32 @wil_seq_print_skb(%struct.seq_file* %244, %struct.sk_buff* %245)
  %247 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %248 = call i32 @kfree_skb(%struct.sk_buff* %247)
  br label %249

249:                                              ; preds = %241, %206
  %250 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %251 = call i32 @seq_puts(%struct.seq_file* %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %252

252:                                              ; preds = %249, %104, %79, %41, %29
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @wil_val_in_range(i64, i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @wil_seq_print_skb(%struct.seq_file*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
