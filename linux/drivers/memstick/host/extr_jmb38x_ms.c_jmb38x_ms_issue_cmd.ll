; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, i32*, i64, i64, %struct.TYPE_9__*, i64, i32, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i32, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@STATUS_HAS_MEDIA = common dso_local global i32 0, align 4
@STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"no media status\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"control %08x\0A\00", align 1
@HOST_CONTROL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"status %08x\0A\00", align 1
@INT_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"hstatus %08x\0A\00", align 1
@TPC_DATA_SEL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@TPC_DIR = common dso_local global i32 0, align 4
@MEMSTICK_SERIAL = common dso_local global i64 0, align 8
@TPC_GET_INT = common dso_local global i32 0, align 4
@TPC_WAIT_INT = common dso_local global i32 0, align 4
@no_dma = common dso_local global i32 0, align 4
@DMA_DATA = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_ADDRESS = common dso_local global i64 0, align 8
@BLOCK_COUNT_MASK = common dso_local global i32 0, align 4
@BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@BLOCK = common dso_local global i64 0, align 8
@DMA_CONTROL_ENABLE = common dso_local global i32 0, align 4
@DMA_CONTROL = common dso_local global i64 0, align 8
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_FIFO_RRDY = common dso_local global i32 0, align 4
@INT_STATUS_FIFO_WRDY = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@TPC_P0 = common dso_local global i64 0, align 8
@TPC_P1 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HOST_CONTROL_LED = common dso_local global i32 0, align 4
@TPC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"executing TPC %08x, len %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_host*)* @jmb38x_ms_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_issue_cmd(%struct.memstick_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca %struct.jmb38x_ms_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %3, align 8
  %8 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %9 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %8)
  store %struct.jmb38x_ms_host* %9, %struct.jmb38x_ms_host** %4, align 8
  %10 = load i32, i32* @STATUS_HAS_MEDIA, align 4
  %11 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %12 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = and i32 %10, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %1
  %20 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %21 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ETIME, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %26 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %25, i32 0, i32 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %30 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %29, i32 0, i32 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %401

34:                                               ; preds = %1
  %35 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %36 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %35, i32 0, i32 0
  %37 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %38 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HOST_CONTROL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  %43 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %45 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %44, i32 0, i32 0
  %46 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %47 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INT_STATUS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %54 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %53, i32 0, i32 0
  %55 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %56 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STATUS, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %63 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %65 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %67 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %69 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 0, i32* %71, align 4
  %72 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %73 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %77 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %76, i32 0, i32 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 16
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @TPC_DATA_SEL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %86 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %85, i32 0, i32 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @READ, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %34
  %93 = load i32, i32* @TPC_DIR, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %34
  %97 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %98 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %97, i32 0, i32 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %96
  %104 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %105 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MEMSTICK_SERIAL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @TPC_GET_INT, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %117

113:                                              ; preds = %103
  %114 = load i32, i32* @TPC_WAIT_INT, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %96
  %119 = load i32, i32* @no_dma, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @DMA_DATA, align 4
  %123 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %124 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %118
  %128 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %129 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %128, i32 0, i32 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %136 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %135, i32 0, i32 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %5, align 4
  br label %153

141:                                              ; preds = %127
  %142 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %143 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %142, i32 0, i32 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* @DMA_DATA, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %150 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %141, %134
  %154 = load i32, i32* %5, align 4
  %155 = icmp ule i32 %154, 8
  br i1 %155, label %156, label %177

156:                                              ; preds = %153
  %157 = load i32, i32* @TPC_DATA_SEL, align 4
  %158 = or i32 %157, 15
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %6, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* @REG_DATA, align 4
  %163 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %164 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %167, 15
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @DMA_DATA, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %174 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %156, %153
  %178 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %179 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @DMA_DATA, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %258

184:                                              ; preds = %177
  %185 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %186 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %185, i32 0, i32 7
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %192 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %191, i32 0, i32 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 4
  %195 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %196 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %195, i32 0, i32 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @READ, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %184
  %203 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %206

204:                                              ; preds = %184
  %205 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = call i32 @dma_map_sg(i32* %190, %struct.TYPE_10__* %194, i32 1, i32 %207)
  %209 = icmp ne i32 1, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  %213 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %214 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %213, i32 0, i32 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store i32 %212, i32* %216, align 8
  %217 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %218 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %217, i32 0, i32 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %2, align 4
  br label %401

222:                                              ; preds = %206
  %223 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %224 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %223, i32 0, i32 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 4
  %227 = call i32 @sg_dma_len(%struct.TYPE_10__* %226)
  store i32 %227, i32* %5, align 4
  %228 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %229 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %228, i32 0, i32 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 4
  %232 = call i32 @sg_dma_address(%struct.TYPE_10__* %231)
  %233 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %234 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @DMA_ADDRESS, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @writel(i32 %232, i64 %237)
  %239 = load i32, i32* @BLOCK_COUNT_MASK, align 4
  %240 = and i32 65536, %239
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @BLOCK_SIZE_MASK, align 4
  %243 = and i32 %241, %242
  %244 = or i32 %240, %243
  %245 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %246 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @BLOCK, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @writel(i32 %244, i64 %249)
  %251 = load i32, i32* @DMA_CONTROL_ENABLE, align 4
  %252 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %253 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @DMA_CONTROL, align 8
  %256 = add nsw i64 %254, %255
  %257 = call i32 @writel(i32 %251, i64 %256)
  br label %362

258:                                              ; preds = %177
  %259 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %260 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @REG_DATA, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %313, label %265

265:                                              ; preds = %258
  %266 = load i32, i32* @BLOCK_COUNT_MASK, align 4
  %267 = and i32 65536, %266
  %268 = load i32, i32* %5, align 4
  %269 = load i32, i32* @BLOCK_SIZE_MASK, align 4
  %270 = and i32 %268, %269
  %271 = or i32 %267, %270
  %272 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %273 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @BLOCK, align 8
  %276 = add nsw i64 %274, %275
  %277 = call i32 @writel(i32 %271, i64 %276)
  %278 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %279 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %282 = add nsw i64 %280, %281
  %283 = call i32 @readl(i64 %282)
  store i32 %283, i32* %7, align 4
  %284 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %285 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %284, i32 0, i32 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @READ, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %265
  %292 = load i32, i32* @INT_STATUS_FIFO_RRDY, align 4
  br label %295

293:                                              ; preds = %265
  %294 = load i32, i32* @INT_STATUS_FIFO_WRDY, align 4
  br label %295

295:                                              ; preds = %293, %291
  %296 = phi i32 [ %292, %291 ], [ %294, %293 ]
  %297 = load i32, i32* %7, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %7, align 4
  %300 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %301 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %304 = add nsw i64 %302, %303
  %305 = call i32 @writel(i32 %299, i64 %304)
  %306 = load i32, i32* %7, align 4
  %307 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %308 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %311 = add nsw i64 %309, %310
  %312 = call i32 @writel(i32 %306, i64 %311)
  br label %361

313:                                              ; preds = %258
  %314 = load i32, i32* @TPC_DATA_SEL, align 4
  %315 = or i32 %314, 15
  %316 = xor i32 %315, -1
  %317 = load i32, i32* %6, align 4
  %318 = and i32 %317, %316
  store i32 %318, i32* %6, align 4
  %319 = load i32, i32* @REG_DATA, align 4
  %320 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %321 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 8
  %324 = load i32, i32* %5, align 4
  %325 = and i32 %324, 15
  %326 = load i32, i32* %6, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %6, align 4
  %328 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %329 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %328, i32 0, i32 4
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @WRITE, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %360

335:                                              ; preds = %313
  %336 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %337 = call i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host* %336)
  %338 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %339 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %344 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @TPC_P0, align 8
  %347 = add nsw i64 %345, %346
  %348 = call i32 @writel(i32 %342, i64 %347)
  %349 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %350 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %355 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @TPC_P1, align 8
  %358 = add nsw i64 %356, %357
  %359 = call i32 @writel(i32 %353, i64 %358)
  br label %360

360:                                              ; preds = %335, %313
  br label %361

361:                                              ; preds = %360, %295
  br label %362

362:                                              ; preds = %361, %222
  %363 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %364 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %363, i32 0, i32 6
  %365 = load i64, i64* @jiffies, align 8
  %366 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %367 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %365, %368
  %370 = call i32 @mod_timer(i32* %364, i64 %369)
  %371 = load i32, i32* @HOST_CONTROL_LED, align 4
  %372 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %373 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @HOST_CONTROL, align 8
  %376 = add nsw i64 %374, %375
  %377 = call i32 @readl(i64 %376)
  %378 = or i32 %371, %377
  %379 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %380 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @HOST_CONTROL, align 8
  %383 = add nsw i64 %381, %382
  %384 = call i32 @writel(i32 %378, i64 %383)
  %385 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %386 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %385, i32 0, i32 4
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  store i32 0, i32* %388, align 8
  %389 = load i32, i32* %6, align 4
  %390 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %391 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %390, i32 0, i32 3
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @TPC, align 8
  %394 = add nsw i64 %392, %393
  %395 = call i32 @writel(i32 %389, i64 %394)
  %396 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %397 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %396, i32 0, i32 0
  %398 = load i32, i32* %6, align 4
  %399 = load i32, i32* %5, align 4
  %400 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %397, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %398, i32 %399)
  store i32 0, i32* %2, align 4
  br label %401

401:                                              ; preds = %362, %210, %19
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dma_map_sg(i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.TYPE_10__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sg_dma_address(%struct.TYPE_10__*) #1

declare dso_local i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
