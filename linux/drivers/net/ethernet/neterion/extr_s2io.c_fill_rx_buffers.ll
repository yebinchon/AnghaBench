; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_fill_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_fill_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32, i32 }
%struct.ring_info = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_15__, i32, %struct.buffAdd**, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.buffAdd = type { i8*, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.RxD_t*, %struct.TYPE_12__* }
%struct.RxD_t = type { i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.RxD_t* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.swStat }
%struct.swStat = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i8* }
%struct.RxD1 = type { i32 }
%struct.RxD3 = type { i32, i32, i32 }

@INTR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Get and Put info equated\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: Next block at: %p\0A\00", align 1
@RXD_OWN_XENA = common dso_local global i32 0, align 4
@RXD_MODE_3B = common dso_local global i64 0, align 8
@HEADER_ETHERNET_II_802_3_SIZE = common dso_local global i32 0, align 4
@HEADER_802_2_SIZE = common dso_local global i32 0, align 4
@HEADER_SNAP_SIZE = common dso_local global i32 0, align 4
@RXD_MODE_1 = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@ALIGN_SIZE = common dso_local global i32 0, align 4
@BUF0_LEN = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: Could not allocate skb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@BUF1_LEN = common dso_local global i32 0, align 4
@rxsync_frequency = common dso_local global i32 0, align 4
@SET_RXD_MARKER = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*, %struct.ring_info*, i32)* @fill_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_rx_buffers(%struct.s2io_nic* %0, %struct.ring_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s2io_nic*, align 8
  %6 = alloca %struct.ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.RxD_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffAdd*, align 8
  %18 = alloca %struct.RxD_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.RxD1*, align 8
  %22 = alloca %struct.RxD3*, align 8
  %23 = alloca %struct.swStat*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %5, align 8
  store %struct.ring_info* %1, %struct.ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store %struct.RxD_t* null, %struct.RxD_t** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %24 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %25 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %24, i32 0, i32 12
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store %struct.swStat* %30, %struct.swStat** %23, align 8
  %31 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %32 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %35 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %15, align 4
  %38 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %39 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %527, %3
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %534

46:                                               ; preds = %42
  %47 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %48 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %52 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %56 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %55, i32 0, i32 10
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.RxD_t*, %struct.RxD_t** %66, align 8
  store %struct.RxD_t* %67, %struct.RxD_t** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %46
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %74 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %73, i32 0, i32 11
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %72, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %80 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* @INTR_DBG, align 4
  %85 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %86 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %85, i32 0, i32 9
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %535

91:                                               ; preds = %78, %71, %46
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %143

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %97 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %94
  %101 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %102 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %107 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %111 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %116 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %100
  %119 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %120 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %125 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %128 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %127, i32 0, i32 10
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load %struct.RxD_t*, %struct.RxD_t** %133, align 8
  store %struct.RxD_t* %134, %struct.RxD_t** %9, align 8
  %135 = load i32, i32* @INTR_DBG, align 4
  %136 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %137 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %136, i32 0, i32 9
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %142 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %140, %struct.RxD_t* %141)
  br label %143

143:                                              ; preds = %118, %94, %91
  %144 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %145 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @RXD_OWN_XENA, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %143
  %151 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %152 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @RXD_MODE_3B, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %158 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @s2BIT(i32 0)
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %166 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  br label %535

168:                                              ; preds = %156, %150, %143
  %169 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %170 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @HEADER_ETHERNET_II_802_3_SIZE, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* @HEADER_802_2_SIZE, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* @HEADER_SNAP_SIZE, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %11, align 4
  %178 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %179 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @RXD_MODE_1, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %168
  %184 = load i32, i32* @NET_IP_ALIGN, align 4
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %11, align 4
  br label %196

187:                                              ; preds = %168
  %188 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %189 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @ALIGN_SIZE, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* @BUF0_LEN, align 4
  %194 = add nsw i32 %192, %193
  %195 = add nsw i32 %194, 4
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %187, %183
  %197 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %198 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call %struct.sk_buff* @netdev_alloc_skb(i32 %199, i32 %200)
  store %struct.sk_buff* %201, %struct.sk_buff** %8, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %203 = icmp ne %struct.sk_buff* %202, null
  br i1 %203, label %228, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* @INFO_DBG, align 4
  %206 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %207 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %206, i32 0, i32 9
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %205, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  %212 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %213 = icmp ne %struct.RxD_t* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %204
  %215 = call i32 (...) @dma_wmb()
  %216 = load i32, i32* @RXD_OWN_XENA, align 4
  %217 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %218 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %214, %204
  %222 = load %struct.swStat*, %struct.swStat** %23, align 8
  %223 = getelementptr inbounds %struct.swStat, %struct.swStat* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %4, align 4
  br label %565

228:                                              ; preds = %196
  %229 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %230 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.swStat*, %struct.swStat** %23, align 8
  %233 = getelementptr inbounds %struct.swStat, %struct.swStat* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %231
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %233, align 4
  %238 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %239 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @RXD_MODE_1, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %285

243:                                              ; preds = %228
  %244 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %245 = bitcast %struct.RxD_t* %244 to %struct.RxD1*
  store %struct.RxD1* %245, %struct.RxD1** %21, align 8
  %246 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %247 = call i32 @memset(%struct.RxD_t* %246, i32 0, i32 4)
  %248 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %249 = load i32, i32* @NET_IP_ALIGN, align 4
  %250 = call i32 @skb_reserve(%struct.sk_buff* %248, i32 %249)
  %251 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %252 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* @NET_IP_ALIGN, align 4
  %259 = sub nsw i32 %257, %258
  %260 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %261 = call i8* @pci_map_single(i32 %253, i8* %256, i32 %259, i32 %260)
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.RxD1*, %struct.RxD1** %21, align 8
  %264 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 4
  %265 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %266 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.RxD1*, %struct.RxD1** %21, align 8
  %269 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i64 @pci_dma_mapping_error(i32 %267, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %243
  br label %547

274:                                              ; preds = %243
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* @NET_IP_ALIGN, align 4
  %277 = sub nsw i32 %275, %276
  %278 = call i32 @SET_BUFFER0_SIZE_1(i32 %277)
  %279 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %280 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %282 = ptrtoint %struct.sk_buff* %281 to i64
  %283 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %284 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %283, i32 0, i32 0
  store i64 %282, i64* %284, align 8
  br label %476

285:                                              ; preds = %228
  %286 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %287 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @RXD_MODE_3B, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %475

291:                                              ; preds = %285
  %292 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %293 = bitcast %struct.RxD_t* %292 to %struct.RxD3*
  store %struct.RxD3* %293, %struct.RxD3** %22, align 8
  %294 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %295 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %19, align 4
  %297 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %298 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %20, align 4
  %300 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %301 = call i32 @memset(%struct.RxD_t* %300, i32 0, i32 12)
  %302 = load i32, i32* %19, align 4
  %303 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %304 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %20, align 4
  %306 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %307 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  %308 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %309 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %308, i32 0, i32 8
  %310 = load %struct.buffAdd**, %struct.buffAdd*** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %310, i64 %312
  %314 = load %struct.buffAdd*, %struct.buffAdd** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %314, i64 %316
  store %struct.buffAdd* %317, %struct.buffAdd** %17, align 8
  %318 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %319 = load i32, i32* @BUF0_LEN, align 4
  %320 = call i32 @skb_reserve(%struct.sk_buff* %318, i32 %319)
  %321 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %322 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = ptrtoint i8* %323 to i64
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %16, align 4
  %326 = load i32, i32* @ALIGN_SIZE, align 4
  %327 = load i32, i32* %16, align 4
  %328 = add nsw i32 %327, %326
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* @ALIGN_SIZE, align 4
  %330 = xor i32 %329, -1
  %331 = load i32, i32* %16, align 4
  %332 = and i32 %331, %330
  store i32 %332, i32* %16, align 4
  %333 = load i32, i32* %16, align 4
  %334 = sext i32 %333 to i64
  %335 = inttoptr i64 %334 to i8*
  %336 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %337 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  %338 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %339 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %338)
  %340 = load i32, i32* %7, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %365

342:                                              ; preds = %291
  %343 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %344 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %347 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %346, i32 0, i32 1
  %348 = load i8*, i8** %347, align 8
  %349 = load i32, i32* @BUF0_LEN, align 4
  %350 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %351 = call i8* @pci_map_single(i32 %345, i8* %348, i32 %349, i32 %350)
  %352 = ptrtoint i8* %351 to i32
  %353 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %354 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 4
  %355 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %356 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %359 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i64 @pci_dma_mapping_error(i32 %357, i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %342
  br label %547

364:                                              ; preds = %342
  br label %375

365:                                              ; preds = %291
  %366 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %367 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %370 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @BUF0_LEN, align 4
  %373 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %374 = call i32 @pci_dma_sync_single_for_device(i32 %368, i32 %371, i32 %372, i32 %373)
  br label %375

375:                                              ; preds = %365, %364
  %376 = load i32, i32* @BUF0_LEN, align 4
  %377 = call i32 @SET_BUFFER0_SIZE_3(i32 %376)
  %378 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %379 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %378, i32 0, i32 2
  store i32 %377, i32* %379, align 4
  %380 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %381 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %380, i32 0, i32 4
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @RXD_MODE_3B, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %465

385:                                              ; preds = %375
  %386 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %387 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %390 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %389, i32 0, i32 1
  %391 = load i8*, i8** %390, align 8
  %392 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %393 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %394, 4
  %396 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %397 = call i8* @pci_map_single(i32 %388, i8* %391, i32 %395, i32 %396)
  %398 = ptrtoint i8* %397 to i32
  %399 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %400 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %399, i32 0, i32 2
  store i32 %398, i32* %400, align 4
  %401 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %402 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %405 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = call i64 @pci_dma_mapping_error(i32 %403, i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %385
  br label %547

410:                                              ; preds = %385
  %411 = load i32, i32* %7, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %450

413:                                              ; preds = %410
  %414 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %415 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %414, i32 0, i32 7
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %418 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %417, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8
  %420 = load i32, i32* @BUF1_LEN, align 4
  %421 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %422 = call i8* @pci_map_single(i32 %416, i8* %419, i32 %420, i32 %421)
  %423 = ptrtoint i8* %422 to i32
  %424 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %425 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %424, i32 0, i32 1
  store i32 %423, i32* %425, align 4
  %426 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %427 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.RxD3*, %struct.RxD3** %22, align 8
  %430 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i64 @pci_dma_mapping_error(i32 %428, i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %449

434:                                              ; preds = %413
  %435 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %436 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %435, i32 0, i32 7
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %439 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %438, i32 0, i32 1
  %440 = load i8*, i8** %439, align 8
  %441 = ptrtoint i8* %440 to i64
  %442 = trunc i64 %441 to i32
  %443 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %444 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %443, i32 0, i32 5
  %445 = load i32, i32* %444, align 8
  %446 = add nsw i32 %445, 4
  %447 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %448 = call i32 @pci_unmap_single(i32 %437, i32 %442, i32 %446, i32 %447)
  br label %547

449:                                              ; preds = %413
  br label %450

450:                                              ; preds = %449, %410
  %451 = call i32 @SET_BUFFER1_SIZE_3(i32 1)
  %452 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %453 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %451
  store i32 %455, i32* %453, align 4
  %456 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %457 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 8
  %459 = add nsw i32 %458, 4
  %460 = call i32 @SET_BUFFER2_SIZE_3(i32 %459)
  %461 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %462 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = or i32 %463, %460
  store i32 %464, i32* %462, align 4
  br label %465

465:                                              ; preds = %450, %375
  %466 = call i32 @s2BIT(i32 0)
  %467 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %468 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 4
  %470 = or i32 %469, %466
  store i32 %470, i32* %468, align 4
  %471 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %472 = ptrtoint %struct.sk_buff* %471 to i64
  %473 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %474 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %473, i32 0, i32 0
  store i64 %472, i64* %474, align 8
  br label %475

475:                                              ; preds = %465, %285
  br label %476

476:                                              ; preds = %475, %274
  %477 = load i32, i32* %14, align 4
  %478 = load i32, i32* @rxsync_frequency, align 4
  %479 = shl i32 1, %478
  %480 = sub nsw i32 %479, 1
  %481 = and i32 %477, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %489

483:                                              ; preds = %476
  %484 = load i32, i32* @RXD_OWN_XENA, align 4
  %485 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %486 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 8
  %488 = or i32 %487, %484
  store i32 %488, i32* %486, align 8
  br label %489

489:                                              ; preds = %483, %476
  %490 = load i32, i32* %10, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %10, align 4
  %492 = load i32, i32* %10, align 4
  %493 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %494 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = add nsw i32 %495, 1
  %497 = icmp eq i32 %492, %496
  br i1 %497, label %498, label %499

498:                                              ; preds = %489
  store i32 0, i32* %10, align 4
  br label %499

499:                                              ; preds = %498, %489
  %500 = load i32, i32* %10, align 4
  %501 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %502 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %501, i32 0, i32 6
  %503 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %502, i32 0, i32 1
  store i32 %500, i32* %503, align 4
  %504 = load i32, i32* @SET_RXD_MARKER, align 4
  %505 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %506 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = or i32 %507, %504
  store i32 %508, i32* %506, align 4
  %509 = load i32, i32* %14, align 4
  %510 = load i32, i32* @rxsync_frequency, align 4
  %511 = shl i32 1, %510
  %512 = sub nsw i32 %511, 1
  %513 = and i32 %509, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %527, label %515

515:                                              ; preds = %499
  %516 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %517 = icmp ne %struct.RxD_t* %516, null
  br i1 %517, label %518, label %525

518:                                              ; preds = %515
  %519 = call i32 (...) @dma_wmb()
  %520 = load i32, i32* @RXD_OWN_XENA, align 4
  %521 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %522 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 8
  %524 = or i32 %523, %520
  store i32 %524, i32* %522, align 8
  br label %525

525:                                              ; preds = %518, %515
  %526 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  store %struct.RxD_t* %526, %struct.RxD_t** %18, align 8
  br label %527

527:                                              ; preds = %525, %499
  %528 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %529 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %529, align 4
  %532 = load i32, i32* %14, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %14, align 4
  br label %42

534:                                              ; preds = %42
  br label %535

535:                                              ; preds = %534, %163, %83
  %536 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %537 = icmp ne %struct.RxD_t* %536, null
  br i1 %537, label %538, label %545

538:                                              ; preds = %535
  %539 = call i32 (...) @dma_wmb()
  %540 = load i32, i32* @RXD_OWN_XENA, align 4
  %541 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %542 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 8
  %544 = or i32 %543, %540
  store i32 %544, i32* %542, align 8
  br label %545

545:                                              ; preds = %538, %535
  %546 = load i32, i32* @SUCCESS, align 4
  store i32 %546, i32* %4, align 4
  br label %565

547:                                              ; preds = %434, %409, %363, %273
  %548 = load %struct.swStat*, %struct.swStat** %23, align 8
  %549 = getelementptr inbounds %struct.swStat, %struct.swStat* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %549, align 4
  %552 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %553 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.swStat*, %struct.swStat** %23, align 8
  %556 = getelementptr inbounds %struct.swStat, %struct.swStat* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  %559 = add nsw i64 %558, %554
  %560 = trunc i64 %559 to i32
  store i32 %560, i32* %556, align 4
  %561 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %562 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %561)
  %563 = load i32, i32* @ENOMEM, align 4
  %564 = sub nsw i32 0, %563
  store i32 %564, i32* %4, align 4
  br label %565

565:                                              ; preds = %547, %545, %221
  %566 = load i32, i32* %4, align 4
  ret i32 %566
}

declare dso_local i32 @DBG_PRINT(i32, i8*, i32, ...) #1

declare dso_local i32 @s2BIT(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @memset(%struct.RxD_t*, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @pci_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @SET_BUFFER0_SIZE_1(i32) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @SET_BUFFER0_SIZE_3(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @SET_BUFFER1_SIZE_3(i32) #1

declare dso_local i32 @SET_BUFFER2_SIZE_3(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
