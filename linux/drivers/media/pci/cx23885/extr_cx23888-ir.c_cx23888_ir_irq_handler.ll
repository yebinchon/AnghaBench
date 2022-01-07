; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx23888_ir_state = type { i32, i32, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }
%union.cx23888_ir_fifo_rec = type { i32 }

@CX23888_IR_CNTRL_REG = common dso_local global i32 0, align 4
@CX23888_IR_IRQEN_REG = common dso_local global i32 0, align 4
@CX23888_IR_STATS_REG = common dso_local global i32 0, align 4
@FIFO_RX_DEPTH = common dso_local global i32 0, align 4
@STATS_TSR = common dso_local global i32 0, align 4
@STATS_RSR = common dso_local global i32 0, align 4
@STATS_RTO = common dso_local global i32 0, align 4
@STATS_ROR = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@ir_888_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IRQ Status:  %s %s %s %s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tsr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rsr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rto\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@STATS_TBY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tby\00", align 1
@STATS_RBY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rby\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"IRQ Enables: %s %s %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tse\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rse\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rte\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"roe\00", align 1
@V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_TX_NOTIFY = common dso_local global i32 0, align 4
@FIFO_RX_NDV = common dso_local global i32 0, align 4
@CX23888_IR_FIFO_REG = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"IR receiver software FIFO overrun\0A\00", align 1
@CNTRL_RFE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"IR receiver hardware FIFO overrun\0A\00", align 1
@CNTRL_RXE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED = common dso_local global i32 0, align 4
@CX23888_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32*)* @cx23888_ir_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23888_ir_irq_handler(%struct.v4l2_subdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cx23888_ir_state*, align 8
  %8 = alloca %struct.cx23885_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
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
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = call %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev* %29)
  store %struct.cx23888_ir_state* %30, %struct.cx23888_ir_state** %7, align 8
  %31 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %32 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %31, i32 0, i32 2
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %32, align 8
  store %struct.cx23885_dev* %33, %struct.cx23885_dev** %8, align 8
  %34 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %35 = load i32, i32* @CX23888_IR_CNTRL_REG, align 4
  %36 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %38 = load i32, i32* @CX23888_IR_IRQEN_REG, align 4
  %39 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %41 = load i32, i32* @CX23888_IR_STATS_REG, align 4
  %42 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %13, align 8
  %46 = alloca %union.cx23888_ir_fifo_rec, i64 %44, align 16
  store i64 %44, i64* %14, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @STATS_TSR, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @STATS_RSR, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @STATS_RTO, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @STATS_ROR, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %23, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @IRQEN_TSE, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @IRQEN_RSE, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %25, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @IRQEN_RTE, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %26, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @IRQEN_ROE, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %27, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* @ir_888_debug, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %78 = load i32, i32* %21, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %82 = load i32, i32* %22, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %86 = load i32, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @STATS_TBY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @STATS_RBY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %102 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %72, %struct.v4l2_subdev* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %77, i8* %81, i8* %85, i8* %89, i8* %95, i8* %101)
  %103 = load i32, i32* @ir_888_debug, align 4
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %109 = load i32, i32* %25, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %113 = load i32, i32* %26, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %117 = load i32, i32* %27, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %121 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %103, %struct.v4l2_subdev* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %108, i8* %112, i8* %116, i8* %120)
  %122 = load i32, i32* %24, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %3
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %129 = call i32 @irqenable_tx(%struct.cx23885_dev* %128, i32 0)
  %130 = load i32, i32* @V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ, align 4
  store i32 %130, i32* %18, align 4
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %132 = load i32, i32* @V4L2_SUBDEV_IR_TX_NOTIFY, align 4
  %133 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %131, i32 %132, i32* %18)
  %134 = load i32*, i32** %6, align 8
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %127, %124, %3
  store i32 0, i32* %28, align 4
  %136 = load i32, i32* %25, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %21, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %26, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %215

144:                                              ; preds = %141
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %215

147:                                              ; preds = %144, %138
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* @FIFO_RX_NDV, align 4
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %212, %147
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* @FIFO_RX_NDV, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* %28, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %154, %149
  %159 = phi i1 [ false, %149 ], [ %157, %154 ]
  br i1 %159, label %160, label %213

160:                                              ; preds = %158
  store i32 0, i32* %16, align 4
  br label %161

161:                                              ; preds = %186, %160
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* @FIFO_RX_NDV, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %169 = icmp ult i32 %167, %168
  br label %170

170:                                              ; preds = %166, %161
  %171 = phi i1 [ false, %161 ], [ %169, %166 ]
  br i1 %171, label %172, label %189

172:                                              ; preds = %170
  %173 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %174 = load i32, i32* @CX23888_IR_FIFO_REG, align 4
  %175 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %173, i32 %174)
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* @FIFO_RX_NDV, align 4
  %178 = xor i32 %177, -1
  %179 = and i32 %176, %178
  %180 = load i32, i32* %15, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %union.cx23888_ir_fifo_rec, %union.cx23888_ir_fifo_rec* %46, i64 %181
  %183 = bitcast %union.cx23888_ir_fifo_rec* %182 to i32*
  store i32 %179, i32* %183, align 4
  %184 = load i32, i32* %15, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %172
  %187 = load i32, i32* %16, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %16, align 4
  br label %161

189:                                              ; preds = %170
  %190 = load i32, i32* %15, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %213

193:                                              ; preds = %189
  %194 = load i32, i32* %15, align 4
  %195 = zext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %16, align 4
  %198 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %199 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %198, i32 0, i32 1
  %200 = bitcast %union.cx23888_ir_fifo_rec* %46 to i8*
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %203 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %202, i32 0, i32 0
  %204 = call i32 @kfifo_in_locked(i32* %199, i8* %200, i32 %201, i32* %203)
  store i32 %204, i32* %17, align 4
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %193
  %209 = load i32, i32* %28, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %28, align 4
  br label %211

211:                                              ; preds = %208, %193
  br label %212

212:                                              ; preds = %211
  store i32 0, i32* %15, align 4
  br label %149

213:                                              ; preds = %192, %158
  %214 = load i32*, i32** %6, align 8
  store i32 1, i32* %214, align 4
  br label %215

215:                                              ; preds = %213, %144, %141
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %216 = load i32, i32* %28, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i32, i32* @V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN, align 4
  %220 = load i32, i32* %18, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %18, align 4
  %222 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %223 = call i32 @v4l2_err(%struct.v4l2_subdev* %222, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %224

224:                                              ; preds = %218, %215
  %225 = load i32, i32* %27, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %224
  %228 = load i32, i32* %23, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load i32, i32* @CNTRL_RFE, align 4
  %232 = load i32, i32* %19, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %19, align 4
  %234 = load i32, i32* @V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN, align 4
  %235 = load i32, i32* %18, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %18, align 4
  %237 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %238 = call i32 @v4l2_err(%struct.v4l2_subdev* %237, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %239

239:                                              ; preds = %230, %227, %224
  %240 = load i32, i32* %26, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %239
  %243 = load i32, i32* %22, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load i32, i32* @CNTRL_RXE, align 4
  %247 = load i32, i32* %19, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %19, align 4
  %249 = load i32, i32* @V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED, align 4
  %250 = load i32, i32* %18, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %18, align 4
  br label %252

252:                                              ; preds = %245, %242, %239
  %253 = load i32, i32* %19, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %252
  %256 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %257 = load i32, i32* @CX23888_IR_CNTRL_REG, align 4
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %19, align 4
  %260 = xor i32 %259, -1
  %261 = and i32 %258, %260
  %262 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %256, i32 %257, i32 %261)
  %263 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %264 = load i32, i32* @CX23888_IR_CNTRL_REG, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %263, i32 %264, i32 %265)
  %267 = load i32*, i32** %6, align 8
  store i32 1, i32* %267, align 4
  br label %268

268:                                              ; preds = %255, %252
  %269 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %270 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %269, i32 0, i32 0
  %271 = load i64, i64* %9, align 8
  %272 = call i32 @spin_lock_irqsave(i32* %270, i64 %271)
  %273 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %274 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %273, i32 0, i32 1
  %275 = call i32 @kfifo_len(i32* %274)
  %276 = load i32, i32* @CX23888_IR_RX_KFIFO_SIZE, align 4
  %277 = sdiv i32 %276, 2
  %278 = icmp sge i32 %275, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %268
  %280 = load i32, i32* @V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ, align 4
  %281 = load i32, i32* %18, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %18, align 4
  br label %283

283:                                              ; preds = %279, %268
  %284 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %285 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %284, i32 0, i32 0
  %286 = load i64, i64* %9, align 8
  %287 = call i32 @spin_unlock_irqrestore(i32* %285, i64 %286)
  %288 = load i32, i32* %18, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %283
  %291 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %292 = load i32, i32* @V4L2_SUBDEV_IR_RX_NOTIFY, align 4
  %293 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %291, i32 %292, i32* %18)
  br label %294

294:                                              ; preds = %290, %283
  %295 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %295)
  ret i32 0
}

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_read4(%struct.cx23885_dev*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @irqenable_tx(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @kfifo_in_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @cx23888_ir_write4(%struct.cx23885_dev*, i32, i32) #1

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
