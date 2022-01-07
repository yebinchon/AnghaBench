; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Am79C960 = type { i32, i32 }
%struct.ariadne_private = type { i32, i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32 }

@CSR0 = common dso_local global i8* null, align 8
@INTR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@RINT = common dso_local global i32 0, align 4
@TINT = common dso_local global i32 0, align 4
@INEA = common dso_local global i32 0, align 4
@TDMD = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@STRT = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@TF_OWN = common dso_local global i32 0, align 4
@TF_ERR = common dso_local global i32 0, align 4
@EF_RTRY = common dso_local global i32 0, align 4
@EF_LCAR = common dso_local global i32 0, align 4
@EF_LCOL = common dso_local global i32 0, align 4
@EF_UFLO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Tx FIFO error! Status %04x\0A\00", align 1
@TF_MORE = common dso_local global i32 0, align 4
@TF_ONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"out-of-sync dirty pointer, %d vs. %d, full=%d\0A\00", align 1
@BABL = common dso_local global i32 0, align 4
@MISS = common dso_local global i32 0, align 4
@MERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Bus master arbitration failure, status %04x\0A\00", align 1
@CERR = common dso_local global i32 0, align 4
@IDON = common dso_local global i32 0, align 4
@ariadne_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"exiting interrupt, csr%d=%#04x\0A\00", align 1
@RXON = common dso_local global i32 0, align 4
@TXON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ariadne_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ariadne_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.Am79C960*, align 8
  %8 = alloca %struct.ariadne_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.net_device*
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.Am79C960*
  store %struct.Am79C960* %21, %struct.Am79C960** %7, align 8
  store i32 0, i32* %11, align 4
  %22 = load i8*, i8** @CSR0, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %25 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %24, i32 0, i32 0
  store volatile i32 %23, i32* %25, align 4
  %26 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %27 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %26, i32 0, i32 1
  %28 = load volatile i32, i32* %27, align 4
  %29 = load i32, i32* @INTR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %327

34:                                               ; preds = %2
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call %struct.ariadne_private* @netdev_priv(%struct.net_device* %35)
  store %struct.ariadne_private* %36, %struct.ariadne_private** %8, align 8
  store i32 10, i32* %10, align 4
  br label %37

37:                                               ; preds = %294, %34
  %38 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %39 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %38, i32 0, i32 1
  %40 = load volatile i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @ERR, align 4
  %42 = load i32, i32* @RINT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @TINT, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br label %52

52:                                               ; preds = %48, %37
  %53 = phi i1 [ false, %37 ], [ %51, %48 ]
  br i1 %53, label %54, label %295

54:                                               ; preds = %52
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @INEA, align 4
  %57 = load i32, i32* @TDMD, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @STOP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @STRT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @INIT, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %55, %65
  %67 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %68 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %67, i32 0, i32 1
  store volatile i32 %66, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @RINT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = call i32 @ariadne_rx(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %73, %54
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @TINT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %260

81:                                               ; preds = %76
  %82 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %83 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %209, %81
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %88 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %212

91:                                               ; preds = %85
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @TX_RING_SIZE, align 4
  %94 = srem i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %96 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %95, i32 0, i32 3
  %97 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %97, i64 %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lowb(i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @TF_OWN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  br label %212

110:                                              ; preds = %91
  %111 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %112 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %111, i32 0, i32 3
  %113 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %113, i64 %115
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 65280
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @TF_ERR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %190

125:                                              ; preds = %110
  %126 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %127 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %126, i32 0, i32 3
  %128 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %128, i64 %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %15, align 4
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @EF_RTRY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %125
  %145 = load %struct.net_device*, %struct.net_device** %6, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %125
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @EF_LCAR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.net_device*, %struct.net_device** %6, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @EF_LCOL, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %161
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @EF_UFLO, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load %struct.net_device*, %struct.net_device** %6, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @STRT, align 4
  %187 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %188 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %187, i32 0, i32 1
  store volatile i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %177, %172
  br label %209

190:                                              ; preds = %110
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @TF_MORE, align 4
  %193 = load i32, i32* @TF_ONE, align 4
  %194 = or i32 %192, %193
  %195 = and i32 %191, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %190
  %198 = load %struct.net_device*, %struct.net_device** %6, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %197, %190
  %204 = load %struct.net_device*, %struct.net_device** %6, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %203, %189
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %85

212:                                              ; preds = %109, %85
  %213 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %214 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %12, align 4
  %217 = sub nsw i32 %215, %216
  %218 = load i32, i32* @TX_RING_SIZE, align 4
  %219 = icmp sge i32 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %212
  %221 = load %struct.net_device*, %struct.net_device** %6, align 8
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %224 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %227 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %221, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %222, i32 %225, i32 %228)
  %230 = load i32, i32* @TX_RING_SIZE, align 4
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %12, align 4
  br label %233

233:                                              ; preds = %220, %212
  %234 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %235 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %256

238:                                              ; preds = %233
  %239 = load %struct.net_device*, %struct.net_device** %6, align 8
  %240 = call i64 @netif_queue_stopped(%struct.net_device* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %238
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %245 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @TX_RING_SIZE, align 4
  %248 = sub nsw i32 %246, %247
  %249 = add nsw i32 %248, 2
  %250 = icmp sgt i32 %243, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %242
  %252 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %253 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %252, i32 0, i32 2
  store i32 0, i32* %253, align 8
  %254 = load %struct.net_device*, %struct.net_device** %6, align 8
  %255 = call i32 @netif_wake_queue(%struct.net_device* %254)
  br label %256

256:                                              ; preds = %251, %242, %238, %233
  %257 = load i32, i32* %12, align 4
  %258 = load %struct.ariadne_private*, %struct.ariadne_private** %8, align 8
  %259 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %256, %76
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @BABL, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  store i32 1, i32* %11, align 4
  %266 = load %struct.net_device*, %struct.net_device** %6, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %265, %260
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @MISS, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  store i32 1, i32* %11, align 4
  %277 = load %struct.net_device*, %struct.net_device** %6, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %276, %271
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @MERR, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  store i32 1, i32* %11, align 4
  %288 = load %struct.net_device*, %struct.net_device** %6, align 8
  %289 = load i32, i32* %9, align 4
  %290 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %288, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* @STRT, align 4
  %292 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %293 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %292, i32 0, i32 1
  store volatile i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %287, %282
  br label %37

295:                                              ; preds = %52
  %296 = load i8*, i8** @CSR0, align 8
  %297 = ptrtoint i8* %296 to i32
  %298 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %299 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %298, i32 0, i32 0
  store volatile i32 %297, i32* %299, align 4
  %300 = load i32, i32* @INEA, align 4
  %301 = load i32, i32* @BABL, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @CERR, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @MISS, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @MERR, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @IDON, align 4
  %310 = or i32 %308, %309
  %311 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %312 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %311, i32 0, i32 1
  store volatile i32 %310, i32* %312, align 4
  %313 = load i32, i32* @ariadne_debug, align 4
  %314 = icmp sgt i32 %313, 4
  br i1 %314, label %315, label %324

315:                                              ; preds = %295
  %316 = load %struct.net_device*, %struct.net_device** %6, align 8
  %317 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %318 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %317, i32 0, i32 0
  %319 = load volatile i32, i32* %318, align 4
  %320 = load %struct.Am79C960*, %struct.Am79C960** %7, align 8
  %321 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %320, i32 0, i32 1
  %322 = load volatile i32, i32* %321, align 4
  %323 = call i32 @netdev_dbg(%struct.net_device* %316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %319, i32 %322)
  br label %324

324:                                              ; preds = %315, %295
  %325 = load i32, i32* %11, align 4
  %326 = call i32 @IRQ_RETVAL(i32 %325)
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %324, %32
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local %struct.ariadne_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ariadne_rx(%struct.net_device*) #1

declare dso_local i32 @lowb(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
