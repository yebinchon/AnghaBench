; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.cx25840_ir_state = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%union.cx25840_ir_fifo_rec = type { i32 }

@FIFO_RX_DEPTH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CX25840_IR_CNTRL_REG = common dso_local global i32 0, align 4
@CX25840_IR_IRQEN_REG = common dso_local global i32 0, align 4
@IRQEN_MSK = common dso_local global i32 0, align 4
@CX25840_IR_STATS_REG = common dso_local global i32 0, align 4
@STATS_TSR = common dso_local global i32 0, align 4
@STATS_RSR = common dso_local global i32 0, align 4
@STATS_RTO = common dso_local global i32 0, align 4
@STATS_ROR = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@ir_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IR IRQ Status:  %s %s %s %s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tsr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rsr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rto\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@STATS_TBY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tby\00", align 1
@STATS_RBY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rby\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"IR IRQ Enables: %s %s %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tse\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rse\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rte\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"roe\00", align 1
@V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_TX_NOTIFY = common dso_local global i32 0, align 4
@FIFO_RX_NDV = common dso_local global i32 0, align 4
@CX25840_IR_FIFO_REG = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"IR receiver software FIFO overrun\0A\00", align 1
@CNTRL_RFE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"IR receiver hardware FIFO overrun\0A\00", align 1
@CNTRL_RXE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED = common dso_local global i32 0, align 4
@CX25840_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_ir_irq_handler(%struct.v4l2_subdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cx25840_state*, align 8
  %9 = alloca %struct.cx25840_ir_state*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %33 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %32)
  store %struct.cx25840_state* %33, %struct.cx25840_state** %8, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %34)
  store %struct.cx25840_ir_state* %35, %struct.cx25840_ir_state** %9, align 8
  store %struct.i2c_client* null, %struct.i2c_client** %10, align 8
  %36 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %12, align 8
  %39 = alloca %union.cx25840_ir_fifo_rec, i64 %37, align 16
  store i64 %37, i64* %13, align 8
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  %41 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %42 = icmp eq %struct.cx25840_ir_state* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %31, align 4
  br label %329

46:                                               ; preds = %3
  %47 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %48 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %47, i32 0, i32 2
  %49 = load %struct.i2c_client*, %struct.i2c_client** %48, align 8
  store %struct.i2c_client* %49, %struct.i2c_client** %10, align 8
  %50 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %51 = call i64 @is_cx23885(%struct.cx25840_state* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %55 = call i64 @is_cx23887(%struct.cx25840_state* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %31, align 4
  br label %329

60:                                               ; preds = %53, %46
  %61 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %62 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %63 = call i32 @cx25840_read4(%struct.i2c_client* %61, i32 %62)
  store i32 %63, i32* %28, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %65 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %66 = call i32 @cx25840_read4(%struct.i2c_client* %64, i32 %65)
  store i32 %66, i32* %29, align 4
  %67 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %68 = call i64 @is_cx23885(%struct.cx25840_state* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %72 = call i64 @is_cx23887(%struct.cx25840_state* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %60
  %75 = load i32, i32* @IRQEN_MSK, align 4
  %76 = load i32, i32* %29, align 4
  %77 = xor i32 %76, %75
  store i32 %77, i32* %29, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %80 = load i32, i32* @CX25840_IR_STATS_REG, align 4
  %81 = call i32 @cx25840_read4(%struct.i2c_client* %79, i32 %80)
  store i32 %81, i32* %30, align 4
  %82 = load i32, i32* %30, align 4
  %83 = load i32, i32* @STATS_TSR, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %30, align 4
  %86 = load i32, i32* @STATS_RSR, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %30, align 4
  %89 = load i32, i32* @STATS_RTO, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %30, align 4
  %92 = load i32, i32* @STATS_ROR, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %29, align 4
  %95 = load i32, i32* @IRQEN_TSE, align 4
  %96 = and i32 %94, %95
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %29, align 4
  %98 = load i32, i32* @IRQEN_RSE, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %24, align 4
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* @IRQEN_RTE, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %25, align 4
  %103 = load i32, i32* %29, align 4
  %104 = load i32, i32* @IRQEN_ROE, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* @ir_debug, align 4
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %116 = load i32, i32* %21, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %124 = load i32, i32* %30, align 4
  %125 = load i32, i32* @STATS_TBY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %130 = load i32, i32* %30, align 4
  %131 = load i32, i32* @STATS_RBY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %136 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %106, %struct.v4l2_subdev* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %111, i8* %115, i8* %119, i8* %123, i8* %129, i8* %135)
  %137 = load i32, i32* @ir_debug, align 4
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %139 = load i32, i32* %23, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %143 = load i32, i32* %24, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %147 = load i32, i32* %25, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %151 = load i32, i32* %26, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %155 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %137, %struct.v4l2_subdev* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %142, i8* %146, i8* %150, i8* %154)
  %156 = load i32, i32* %23, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %78
  %159 = load i32, i32* %19, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %163 = call i32 @irqenable_tx(%struct.v4l2_subdev* %162, i32 0)
  %164 = load i32, i32* @V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ, align 4
  store i32 %164, i32* %17, align 4
  %165 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %166 = load i32, i32* @V4L2_SUBDEV_IR_TX_NOTIFY, align 4
  %167 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %165, i32 %166, i32* %17)
  %168 = load i32*, i32** %7, align 8
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %161, %158, %78
  store i32 0, i32* %27, align 4
  %170 = load i32, i32* %24, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %25, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %249

178:                                              ; preds = %175
  %179 = load i32, i32* %21, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %249

181:                                              ; preds = %178, %172
  store i32 0, i32* %14, align 4
  %182 = load i32, i32* @FIFO_RX_NDV, align 4
  store i32 %182, i32* %18, align 4
  br label %183

183:                                              ; preds = %246, %181
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* @FIFO_RX_NDV, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* %27, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  br label %192

192:                                              ; preds = %188, %183
  %193 = phi i1 [ false, %183 ], [ %191, %188 ]
  br i1 %193, label %194, label %247

194:                                              ; preds = %192
  store i32 0, i32* %15, align 4
  br label %195

195:                                              ; preds = %220, %194
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* @FIFO_RX_NDV, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %203 = icmp ult i32 %201, %202
  br label %204

204:                                              ; preds = %200, %195
  %205 = phi i1 [ false, %195 ], [ %203, %200 ]
  br i1 %205, label %206, label %223

206:                                              ; preds = %204
  %207 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %208 = load i32, i32* @CX25840_IR_FIFO_REG, align 4
  %209 = call i32 @cx25840_read4(%struct.i2c_client* %207, i32 %208)
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* @FIFO_RX_NDV, align 4
  %212 = xor i32 %211, -1
  %213 = and i32 %210, %212
  %214 = load i32, i32* %14, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %union.cx25840_ir_fifo_rec, %union.cx25840_ir_fifo_rec* %39, i64 %215
  %217 = bitcast %union.cx25840_ir_fifo_rec* %216 to i32*
  store i32 %213, i32* %217, align 4
  %218 = load i32, i32* %14, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %206
  %221 = load i32, i32* %15, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %195

223:                                              ; preds = %204
  %224 = load i32, i32* %14, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %247

227:                                              ; preds = %223
  %228 = load i32, i32* %14, align 4
  %229 = zext i32 %228 to i64
  %230 = mul i64 %229, 4
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %15, align 4
  %232 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %233 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %232, i32 0, i32 1
  %234 = bitcast %union.cx25840_ir_fifo_rec* %39 to i8*
  %235 = load i32, i32* %15, align 4
  %236 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %237 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %236, i32 0, i32 0
  %238 = call i32 @kfifo_in_locked(i32* %233, i8* %234, i32 %235, i32* %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %227
  %243 = load i32, i32* %27, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %27, align 4
  br label %245

245:                                              ; preds = %242, %227
  br label %246

246:                                              ; preds = %245
  store i32 0, i32* %14, align 4
  br label %183

247:                                              ; preds = %226, %192
  %248 = load i32*, i32** %7, align 8
  store i32 1, i32* %248, align 4
  br label %249

249:                                              ; preds = %247, %178, %175
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %250 = load i32, i32* %27, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i32, i32* @V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN, align 4
  %254 = load i32, i32* %17, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %17, align 4
  %256 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %257 = call i32 @v4l2_err(%struct.v4l2_subdev* %256, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %258

258:                                              ; preds = %252, %249
  %259 = load i32, i32* %26, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %258
  %262 = load i32, i32* %22, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = load i32, i32* @CNTRL_RFE, align 4
  %266 = load i32, i32* %18, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %18, align 4
  %268 = load i32, i32* @V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN, align 4
  %269 = load i32, i32* %17, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %17, align 4
  %271 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %272 = call i32 @v4l2_err(%struct.v4l2_subdev* %271, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %273

273:                                              ; preds = %264, %261, %258
  %274 = load i32, i32* %25, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %273
  %277 = load i32, i32* %21, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %276
  %280 = load i32, i32* @CNTRL_RXE, align 4
  %281 = load i32, i32* %18, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %18, align 4
  %283 = load i32, i32* @V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED, align 4
  %284 = load i32, i32* %17, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %17, align 4
  br label %286

286:                                              ; preds = %279, %276, %273
  %287 = load i32, i32* %18, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %286
  %290 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %291 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %292 = load i32, i32* %28, align 4
  %293 = load i32, i32* %18, align 4
  %294 = xor i32 %293, -1
  %295 = and i32 %292, %294
  %296 = call i32 @cx25840_write4(%struct.i2c_client* %290, i32 %291, i32 %295)
  %297 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %298 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %299 = load i32, i32* %28, align 4
  %300 = call i32 @cx25840_write4(%struct.i2c_client* %297, i32 %298, i32 %299)
  %301 = load i32*, i32** %7, align 8
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %289, %286
  %303 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %304 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %303, i32 0, i32 0
  %305 = load i64, i64* %11, align 8
  %306 = call i32 @spin_lock_irqsave(i32* %304, i64 %305)
  %307 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %308 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %307, i32 0, i32 1
  %309 = call i32 @kfifo_len(i32* %308)
  %310 = load i32, i32* @CX25840_IR_RX_KFIFO_SIZE, align 4
  %311 = sdiv i32 %310, 2
  %312 = icmp sge i32 %309, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %302
  %314 = load i32, i32* @V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ, align 4
  %315 = load i32, i32* %17, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %17, align 4
  br label %317

317:                                              ; preds = %313, %302
  %318 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %319 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %318, i32 0, i32 0
  %320 = load i64, i64* %11, align 8
  %321 = call i32 @spin_unlock_irqrestore(i32* %319, i64 %320)
  %322 = load i32, i32* %17, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %317
  %325 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %326 = load i32, i32* @V4L2_SUBDEV_IR_RX_NOTIFY, align 4
  %327 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %325, i32 %326, i32* %17)
  br label %328

328:                                              ; preds = %324, %317
  store i32 0, i32* %4, align 4
  store i32 1, i32* %31, align 4
  br label %329

329:                                              ; preds = %328, %57, %43
  %330 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %330)
  %331 = load i32, i32* %4, align 4
  ret i32 %331
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @is_cx23885(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx23887(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @irqenable_tx(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @kfifo_in_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfifo_len(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
