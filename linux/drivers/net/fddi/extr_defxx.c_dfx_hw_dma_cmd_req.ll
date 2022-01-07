; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_hw_dma_cmd_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_hw_dma_cmd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__*, %struct.TYPE_17__, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i8* }

@PI_STATE_K_RESET = common dso_local global i32 0, align 4
@PI_STATE_K_HALTED = common dso_local global i32 0, align 4
@PI_STATE_K_DMA_UNAVAIL = common dso_local global i32 0, align 4
@PI_STATE_K_UPGRADE = common dso_local global i32 0, align 4
@DFX_K_OUTSTATE = common dso_local global i32 0, align 4
@PI_RCV_DESCR_M_SOP = common dso_local global i32 0, align 4
@PI_CMD_RSP_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_ALIGN_K_CMD_RSP_BUFF = common dso_local global i32 0, align 4
@PI_RCV_DESCR_V_SEG_LEN = common dso_local global i32 0, align 4
@PI_CMD_RSP_K_NUM_ENTRIES = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_CMD_RSP_PROD = common dso_local global i32 0, align 4
@PI_XMT_DESCR_M_SOP = common dso_local global i32 0, align 4
@PI_XMT_DESCR_M_EOP = common dso_local global i32 0, align 4
@PI_CMD_REQ_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_XMT_DESCR_V_SEG_LEN = common dso_local global i32 0, align 4
@PI_CMD_REQ_K_NUM_ENTRIES = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_CMD_REQ_PROD = common dso_local global i32 0, align 4
@DFX_K_HW_TIMEOUT = common dso_local global i32 0, align 4
@DFX_K_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @dfx_hw_dma_cmd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfx_hw_dma_cmd_req(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %6 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %7 = call i32 @dfx_hw_adap_state_rd(%struct.TYPE_21__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PI_STATE_K_RESET, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PI_STATE_K_HALTED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PI_STATE_K_DMA_UNAVAIL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PI_STATE_K_UPGRADE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15, %11, %1
  %24 = load i32, i32* @DFX_K_OUTSTATE, align 4
  store i32 %24, i32* %2, align 4
  br label %243

25:                                               ; preds = %19
  %26 = load i32, i32* @PI_RCV_DESCR_M_SOP, align 4
  %27 = load i32, i32* @PI_CMD_RSP_K_SIZE_MAX, align 4
  %28 = load i32, i32* @PI_ALIGN_K_CMD_RSP_BUFF, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i32, i32* @PI_RCV_DESCR_V_SEG_LEN, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  store i8* %34, i8** %46, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 %49, i32* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* @PI_CMD_RSP_K_NUM_ENTRIES, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = and i64 %75, %70
  store i64 %76, i64* %74, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %78 = load i32, i32* @PI_PDQ_K_REG_CMD_RSP_PROD, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dfx_port_write_long(%struct.TYPE_21__* %77, i32 %78, i32 %82)
  %84 = load i32, i32* @PI_XMT_DESCR_M_SOP, align 4
  %85 = load i32, i32* @PI_XMT_DESCR_M_EOP, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PI_CMD_REQ_K_SIZE_MAX, align 4
  %88 = load i32, i32* @PI_XMT_DESCR_V_SEG_LEN, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  store i8* %92, i8** %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 %107, i32* %119, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load i32, i32* @PI_CMD_REQ_K_NUM_ENTRIES, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = and i64 %133, %128
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %136 = load i32, i32* @PI_PDQ_K_REG_CMD_REQ_PROD, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dfx_port_write_long(%struct.TYPE_21__* %135, i32 %136, i32 %140)
  store i32 20000, i32* %5, align 4
  br label %142

142:                                              ; preds = %162, %25
  %143 = load i32, i32* %5, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %142
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = sext i32 %156 to i64
  %158 = icmp eq i64 %150, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %145
  br label %165

160:                                              ; preds = %145
  %161 = call i32 @udelay(i32 100)
  br label %162

162:                                              ; preds = %160
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %5, align 4
  br label %142

165:                                              ; preds = %159, %142
  %166 = load i32, i32* %5, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* @DFX_K_HW_TIMEOUT, align 4
  store i32 %169, i32* %2, align 4
  br label %243

170:                                              ; preds = %165
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load i32, i32* @PI_CMD_REQ_K_NUM_ENTRIES, align 4
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %178
  store i32 %184, i32* %182, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %186 = load i32, i32* @PI_PDQ_K_REG_CMD_REQ_PROD, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dfx_port_write_long(%struct.TYPE_21__* %185, i32 %186, i32 %190)
  store i32 20000, i32* %5, align 4
  br label %192

192:                                              ; preds = %212, %170
  %193 = load i32, i32* %5, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %192
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = sext i32 %206 to i64
  %208 = icmp eq i64 %200, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %195
  br label %215

210:                                              ; preds = %195
  %211 = call i32 @udelay(i32 100)
  br label %212

212:                                              ; preds = %210
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %5, align 4
  br label %192

215:                                              ; preds = %209, %192
  %216 = load i32, i32* %5, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32, i32* @DFX_K_HW_TIMEOUT, align 4
  store i32 %219, i32* %2, align 4
  br label %243

220:                                              ; preds = %215
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 8
  %227 = load i32, i32* @PI_CMD_RSP_K_NUM_ENTRIES, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %228
  store i32 %234, i32* %232, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %236 = load i32, i32* @PI_PDQ_K_REG_CMD_RSP_PROD, align 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @dfx_port_write_long(%struct.TYPE_21__* %235, i32 %236, i32 %240)
  %242 = load i32, i32* @DFX_K_SUCCESS, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %220, %218, %168, %23
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @dfx_hw_adap_state_rd(%struct.TYPE_21__*) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
