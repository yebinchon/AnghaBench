; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c___coda_start_decoding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c___coda_start_decoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, %struct.coda_dev*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.coda_dev = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.coda_q_data = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@CODA_REG_BIT_PARA_BUF_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate framebuffers\0A\00", align 1
@CODA_CMD_SET_FRAME_BUF_NUM = common dso_local global i32 0, align 4
@CODA_CMD_SET_FRAME_BUF_STRIDE = common dso_local global i32 0, align 4
@CODA_DX6 = common dso_local global i64 0, align 8
@CODA7_CMD_SET_FRAME_AXI_BIT_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_OVL_ADDR = common dso_local global i32 0, align 4
@CODA_960 = common dso_local global i64 0, align 8
@CODA9_CMD_SET_FRAME_AXI_BTP_ADDR = common dso_local global i32 0, align 4
@CODA9_CMD_SET_FRAME_DELAY = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@CODA_CMD_SET_FRAME_SLICE_BB_START = common dso_local global i32 0, align 4
@CODA_CMD_SET_FRAME_SLICE_BB_SIZE = common dso_local global i32 0, align 4
@CODA_HX4 = common dso_local global i64 0, align 8
@CODA_7541 = common dso_local global i64 0, align 8
@CODA7_CMD_SET_FRAME_MAX_DEC_SIZE = common dso_local global i32 0, align 4
@CODA9_CMD_SET_FRAME_MAX_DEC_SIZE = common dso_local global i32 0, align 4
@CODA_COMMAND_SET_FRAME_BUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"CODA_COMMAND_SET_FRAME_BUF timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @__coda_start_decoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__coda_start_decoding(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca %struct.coda_q_data*, align 8
  %5 = alloca %struct.coda_q_data*, align 8
  %6 = alloca %struct.coda_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %16 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %16, i32 0, i32 1
  %18 = load %struct.coda_dev*, %struct.coda_dev** %17, align 8
  store %struct.coda_dev* %18, %struct.coda_dev** %6, align 8
  %19 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %25 = call i32 @__coda_decoder_seq_init(%struct.coda_ctx* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %231

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %33 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %34 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %32, i32 %33)
  store %struct.coda_q_data* %34, %struct.coda_q_data** %4, align 8
  %35 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %36 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %37 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %35, i32 %36)
  store %struct.coda_q_data* %37, %struct.coda_q_data** %5, align 8
  %38 = load %struct.coda_q_data*, %struct.coda_q_data** %4, align 8
  %39 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %42 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %45 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CODA_REG_BIT_PARA_BUF_ADDR, align 4
  %50 = call i32 @coda_write(%struct.coda_dev* %44, i32 %48, i32 %49)
  %51 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %52 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @coda_alloc_framebuffers(%struct.coda_ctx* %51, %struct.coda_q_data* %52, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %31
  %58 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %59 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %58, i32 0, i32 0
  %60 = call i32 @v4l2_err(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %231

62:                                               ; preds = %31
  %63 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %64 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CODA_CMD_SET_FRAME_BUF_NUM, align 4
  %68 = call i32 @coda_write(%struct.coda_dev* %63, i32 %66, i32 %67)
  %69 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %70 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %71 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @round_up(i32 %73, i32 16)
  %75 = load i32, i32* @CODA_CMD_SET_FRAME_BUF_STRIDE, align 4
  %76 = call i32 @coda_write(%struct.coda_dev* %69, i32 %74, i32 %75)
  %77 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %78 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CODA_DX6, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %144

84:                                               ; preds = %62
  %85 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %86 = call i32 @coda_setup_iram(%struct.coda_ctx* %85)
  %87 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %88 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_BIT_ADDR, align 4
  %93 = call i32 @coda_write(%struct.coda_dev* %87, i32 %91, i32 %92)
  %94 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %95 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR, align 4
  %100 = call i32 @coda_write(%struct.coda_dev* %94, i32 %98, i32 %99)
  %101 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %102 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR, align 4
  %107 = call i32 @coda_write(%struct.coda_dev* %101, i32 %105, i32 %106)
  %108 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %109 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR, align 4
  %114 = call i32 @coda_write(%struct.coda_dev* %108, i32 %112, i32 %113)
  %115 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %116 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_OVL_ADDR, align 4
  %121 = call i32 @coda_write(%struct.coda_dev* %115, i32 %119, i32 %120)
  %122 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %123 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @CODA_960, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %84
  %130 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %131 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CODA9_CMD_SET_FRAME_AXI_BTP_ADDR, align 4
  %136 = call i32 @coda_write(%struct.coda_dev* %130, i32 %134, i32 %135)
  %137 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %138 = load i32, i32* @CODA9_CMD_SET_FRAME_DELAY, align 4
  %139 = call i32 @coda_write(%struct.coda_dev* %137, i32 -1, i32 %138)
  %140 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @coda9_set_frame_cache(%struct.coda_ctx* %140, i64 %141)
  br label %143

143:                                              ; preds = %129, %84
  br label %144

144:                                              ; preds = %143, %62
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %150 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %151 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CODA_CMD_SET_FRAME_SLICE_BB_START, align 4
  %155 = call i32 @coda_write(%struct.coda_dev* %149, i32 %153, i32 %154)
  %156 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %157 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 1024
  %162 = load i32, i32* @CODA_CMD_SET_FRAME_SLICE_BB_SIZE, align 4
  %163 = call i32 @coda_write(%struct.coda_dev* %156, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %148, %144
  %165 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %166 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %165, i32 0, i32 1
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @CODA_HX4, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %180, label %172

172:                                              ; preds = %164
  %173 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %174 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %173, i32 0, i32 1
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @CODA_7541, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %172, %164
  store i32 120, i32* %10, align 4
  store i32 68, i32* %11, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = mul nsw i32 %181, %182
  store i32 %183, i32* %12, align 4
  %184 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %185 = load i32, i32* %12, align 4
  %186 = shl i32 %185, 16
  %187 = load i32, i32* %10, align 4
  %188 = shl i32 %187, 8
  %189 = or i32 %186, %188
  %190 = load i32, i32* %11, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @CODA7_CMD_SET_FRAME_MAX_DEC_SIZE, align 4
  %193 = call i32 @coda_write(%struct.coda_dev* %184, i32 %191, i32 %192)
  br label %217

194:                                              ; preds = %172
  %195 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %196 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %195, i32 0, i32 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CODA_960, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %194
  store i32 120, i32* %13, align 4
  store i32 68, i32* %14, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = mul nsw i32 %203, %204
  store i32 %205, i32* %15, align 4
  %206 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %207 = load i32, i32* %15, align 4
  %208 = shl i32 %207, 16
  %209 = load i32, i32* %13, align 4
  %210 = shl i32 %209, 8
  %211 = or i32 %208, %210
  %212 = load i32, i32* %14, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @CODA9_CMD_SET_FRAME_MAX_DEC_SIZE, align 4
  %215 = call i32 @coda_write(%struct.coda_dev* %206, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %202, %194
  br label %217

217:                                              ; preds = %216, %180
  %218 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %219 = load i32, i32* @CODA_COMMAND_SET_FRAME_BUF, align 4
  %220 = call i64 @coda_command_sync(%struct.coda_ctx* %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %224 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %223, i32 0, i32 1
  %225 = load %struct.coda_dev*, %struct.coda_dev** %224, align 8
  %226 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %225, i32 0, i32 0
  %227 = call i32 @v4l2_err(i32* %226, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %228 = load i32, i32* @ETIMEDOUT, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %231

230:                                              ; preds = %217
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %230, %222, %57, %28
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @__coda_decoder_seq_init(%struct.coda_ctx*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @coda_alloc_framebuffers(%struct.coda_ctx*, %struct.coda_q_data*, i64) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @coda_setup_iram(%struct.coda_ctx*) #1

declare dso_local i32 @coda9_set_frame_cache(%struct.coda_ctx*, i64) #1

declare dso_local i64 @coda_command_sync(%struct.coda_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
