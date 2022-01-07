; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MACE_MAX_IR_ITERATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"mace_interrupt(): irq 0x%X for unknown device.\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Interrupt with tx_irq_disabled\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Re-entering the interrupt handler\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s [isr=%02X, imr=%02X]\0A\00", align 1
@AM2150_MACE_BASE = common dso_local global i64 0, align 8
@MACE_IR = common dso_local global i64 0, align 8
@MACE_IMR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"interrupt from dead card\0A\00", align 1
@MACE_IMR_DEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"mace_interrupt: irq 0x%X status 0x%X.\0A\00", align 1
@MACE_IR_RCVINT = common dso_local global i32 0, align 4
@MACE_MAX_RX_ITERATIONS = common dso_local global i32 0, align 4
@MACE_IR_XMTINT = common dso_local global i32 0, align 4
@MACE_FIFOFC = common dso_local global i64 0, align 8
@MACE_FIFOFC_XMTFC = common dso_local global i8 0, align 1
@AM2150_XMT_SKIP = common dso_local global i64 0, align 8
@MACE_XMTRC = common dso_local global i64 0, align 8
@MACE_XMTRC_EXDEF = common dso_local global i8 0, align 1
@MACE_XMTRC_XMTRC = common dso_local global i8 0, align 1
@MACE_XMTFS = common dso_local global i64 0, align 8
@MACE_XMTFS_XMTSV = common dso_local global i8 0, align 1
@MACE_XMTFS_UFLO = common dso_local global i8 0, align 1
@MACE_XMTFS_LCOL = common dso_local global i8 0, align 1
@MACE_XMTFS_MORE = common dso_local global i8 0, align 1
@MACE_XMTFS_ONE = common dso_local global i8 0, align 1
@MACE_XMTFS_DEFER = common dso_local global i8 0, align 1
@MACE_XMTFS_LCAR = common dso_local global i8 0, align 1
@MACE_XMTFS_RTRY = common dso_local global i8 0, align 1
@MACE_IR_JAB = common dso_local global i32 0, align 4
@MACE_IR_BABL = common dso_local global i32 0, align 4
@MACE_IR_CERR = common dso_local global i32 0, align 4
@MACE_IR_RCVCCO = common dso_local global i32 0, align 4
@MACE_IR_RNTPCO = common dso_local global i32 0, align 4
@MACE_IR_MPCO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mace_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.net_device*
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %7, align 8
  %19 = load i32, i32* @MACE_MAX_IR_ITERATIONS, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = icmp eq %struct.net_device* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %391

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %41

41:                                               ; preds = %40, %39
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @AM2150_MACE_BASE, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @MACE_IR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @inb(i64 %49)
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @AM2150_MACE_BASE, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* @MACE_IMR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i8* @inb(i64 %56)
  %58 = call i32 @netdev_notice(%struct.net_device* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %43, i8* %50, i8* %57)
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %391

60:                                               ; preds = %26
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = call i32 @netif_device_present(%struct.net_device* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = call i32 @netdev_dbg(%struct.net_device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @IRQ_NONE, align 4
  store i32 %67, i32* %3, align 4
  br label %391

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %387, %68
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @AM2150_MACE_BASE, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* @MACE_IR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i8* @inb(i64 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MACE_IMR_DEFAULT, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MACE_MAX_IR_ITERATIONS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @IRQ_NONE, align 4
  store i32 %88, i32* %3, align 4
  br label %391

89:                                               ; preds = %83, %69
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @MACE_IR_RCVINT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load i32, i32* @MACE_MAX_RX_ITERATIONS, align 4
  %100 = call i32 @mace_rx(%struct.net_device* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %89
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @MACE_IR_XMTINT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %297

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* @AM2150_MACE_BASE, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* @MACE_FIFOFC, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i8* @inb(i64 %112)
  %114 = ptrtoint i8* %113 to i8
  store i8 %114, i8* %12, align 1
  %115 = load i8, i8* %12, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @MACE_FIFOFC_XMTFC, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %106
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* @AM2150_XMT_SKIP, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outb(i32 255, i64 %130)
  br label %132

132:                                              ; preds = %121, %106
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* @AM2150_MACE_BASE, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i64, i64* @MACE_XMTRC, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i8* @inb(i64 %138)
  %140 = ptrtoint i8* %139 to i8
  store i8 %140, i8* %13, align 1
  %141 = load i8, i8* %13, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @MACE_XMTRC_EXDEF, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 15
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %132
  %154 = load i8, i8* %13, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* @MACE_XMTRC_XMTRC, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %155, %157
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 8
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %163, %158
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %161, align 8
  %166 = load i32, i32* %8, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* @AM2150_MACE_BASE, align 8
  %169 = add nsw i64 %167, %168
  %170 = load i64, i64* @MACE_XMTFS, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i8* @inb(i64 %171)
  %173 = ptrtoint i8* %172 to i8
  store i8 %173, i8* %14, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* @MACE_XMTFS_XMTSV, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %174, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %285

179:                                              ; preds = %153
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 14
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load i8, i8* %14, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* @MACE_XMTFS_XMTSV, align 1
  %188 = zext i8 %187 to i32
  %189 = xor i32 %188, -1
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %284

192:                                              ; preds = %179
  %193 = load i8, i8* %14, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8, i8* @MACE_XMTFS_UFLO, align 1
  %196 = zext i8 %195 to i32
  %197 = and i32 %194, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 13
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %192
  %206 = load i8, i8* %14, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* @MACE_XMTFS_LCOL, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %207, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 12
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %205
  %219 = load i8, i8* %14, align 1
  %220 = zext i8 %219 to i32
  %221 = load i8, i8* @MACE_XMTFS_MORE, align 1
  %222 = zext i8 %221 to i32
  %223 = and i32 %220, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 11
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %225, %218
  %232 = load i8, i8* %14, align 1
  %233 = zext i8 %232 to i32
  %234 = load i8, i8* @MACE_XMTFS_ONE, align 1
  %235 = zext i8 %234 to i32
  %236 = and i32 %233, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %231
  %245 = load i8, i8* %14, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8, i8* @MACE_XMTFS_DEFER, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 %246, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %251, %244
  %258 = load i8, i8* %14, align 1
  %259 = zext i8 %258 to i32
  %260 = load i8, i8* @MACE_XMTFS_LCAR, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %259, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %257
  %271 = load i8, i8* %14, align 1
  %272 = zext i8 %271 to i32
  %273 = load i8, i8* @MACE_XMTFS_RTRY, align 1
  %274 = zext i8 %273 to i32
  %275 = and i32 %272, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %270
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 4
  br label %283

283:                                              ; preds = %277, %270
  br label %284

284:                                              ; preds = %283, %179
  br label %285

285:                                              ; preds = %284, %153
  %286 = load %struct.net_device*, %struct.net_device** %6, align 8
  %287 = getelementptr inbounds %struct.net_device, %struct.net_device* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %292, align 8
  %295 = load %struct.net_device*, %struct.net_device** %6, align 8
  %296 = call i32 @netif_wake_queue(%struct.net_device* %295)
  br label %297

297:                                              ; preds = %285, %101
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* @MACE_IMR_DEFAULT, align 4
  %300 = xor i32 %299, -1
  %301 = and i32 %298, %300
  %302 = load i32, i32* @MACE_IR_RCVINT, align 4
  %303 = xor i32 %302, -1
  %304 = and i32 %301, %303
  %305 = load i32, i32* @MACE_IR_XMTINT, align 4
  %306 = xor i32 %305, -1
  %307 = and i32 %304, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %376

309:                                              ; preds = %297
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* @MACE_IR_JAB, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %314, %309
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @MACE_IR_BABL, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %320
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %325, %320
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* @MACE_IR_CERR, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %331
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %336, %331
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* @MACE_IR_RCVCCO, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %342
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %347, %342
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* @MACE_IR_RNTPCO, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %353
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 8
  br label %364

364:                                              ; preds = %358, %353
  %365 = load i32, i32* %9, align 4
  %366 = load i32, i32* @MACE_IR_MPCO, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %375

369:                                              ; preds = %364
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %372, align 4
  br label %375

375:                                              ; preds = %369, %364
  br label %376

376:                                              ; preds = %375, %297
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* @MACE_IMR_DEFAULT, align 4
  %380 = xor i32 %379, -1
  %381 = and i32 %378, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %377
  %384 = load i32, i32* %10, align 4
  %385 = add nsw i32 %384, -1
  store i32 %385, i32* %10, align 4
  %386 = icmp ne i32 %385, 0
  br label %387

387:                                              ; preds = %383, %377
  %388 = phi i1 [ false, %377 ], [ %386, %383 ]
  br i1 %388, label %69, label %389

389:                                              ; preds = %387
  %390 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %390, i32* %3, align 4
  br label %391

391:                                              ; preds = %389, %87, %64, %41, %22
  %392 = load i32, i32* %3, align 4
  ret i32 %392
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @mace_rx(%struct.net_device*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
