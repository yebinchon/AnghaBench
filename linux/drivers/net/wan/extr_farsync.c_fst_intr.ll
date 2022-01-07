; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.fst_card_info = type { i64, i64, i32, %struct.fst_port_info*, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.fst_port_info = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"intr: %d %p\0A\00", align 1
@FST_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Interrupt received for card %d in a non running state (%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@interruptHandshake = common dso_local global i32 0, align 4
@FST_CARD_INT = common dso_local global i64 0, align 8
@FST_FAMILY_TXU = common dso_local global i64 0, align 8
@INTCSR_9054 = common dso_local global i64 0, align 8
@DBG_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"DMA Rx xfer complete\0A\00", align 1
@DMACSR0 = common dso_local global i64 0, align 8
@FST_RX_DMA_INT = common dso_local global i64 0, align 8
@DBG_TX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"DMA Tx xfer complete\0A\00", align 1
@DMACSR1 = common dso_local global i64 0, align 8
@FST_TX_DMA_INT = common dso_local global i64 0, align 8
@interruptRetryCount = common dso_local global i32 0, align 4
@DBG_ASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Card %d int_retry_count is  %d\0A\00", align 1
@fst_work_intq = common dso_local global i32 0, align 4
@fst_int_task = common dso_local global i32 0, align 4
@interruptEvent = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Processing Interrupt event: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"TE1 Alarm intr\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Abort complete port %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Tx underflow port %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Tx underflow on card %d port %d\0A\00", align 1
@DBG_INIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Card init OK intr\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Card init FAILED intr\0A\00", align 1
@FST_IFAILED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"intr: unknown card event %d. ignored\0A\00", align 1
@MAX_CIRBUFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fst_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fst_card_info*, align 8
  %7 = alloca %struct.fst_port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.fst_card_info*
  store %struct.fst_card_info* %15, %struct.fst_card_info** %6, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @DBG_INTR, align 4
  %17 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %18 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %21 = call i32 (i32, i8*, ...) @dbg(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.fst_card_info* %20)
  %22 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %23 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FST_RUNNING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %29 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %32 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %36 = call i32 @fst_clear_intr(%struct.fst_card_info* %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %269

38:                                               ; preds = %2
  %39 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %40 = call i32 @fst_clear_intr(%struct.fst_card_info* %39)
  store i32 0, i32* %12, align 4
  %41 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %42 = load i32, i32* @interruptHandshake, align 4
  %43 = call i32 @FST_RDB(%struct.fst_card_info* %41, i32 %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i64, i64* @FST_CARD_INT, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %52 = load i32, i32* @interruptHandshake, align 4
  %53 = call i32 @FST_WRB(%struct.fst_card_info* %51, i32 %52, i32 238)
  br label %54

54:                                               ; preds = %45, %38
  %55 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %56 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FST_FAMILY_TXU, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %132

60:                                               ; preds = %54
  %61 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %62 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INTCSR_9054, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @inl(i64 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 2097152
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %60
  %71 = load i32, i32* @DBG_RX, align 4
  %72 = call i32 (i32, i8*, ...) @dbg(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %74 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DMACSR0, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 8, i64 %77)
  %79 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %80 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %81 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %84 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %87 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %90 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @fst_rx_dma_complete(%struct.fst_card_info* %79, i32 %82, i32 %85, i32 %88, i32 %91)
  %93 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %94 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %93, i32 0, i32 9
  store i64 0, i64* %94, align 8
  %95 = load i64, i64* @FST_RX_DMA_INT, align 8
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %70, %60
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, 4194304
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %100
  %105 = load i32, i32* @DBG_TX, align 4
  %106 = call i32 (i32, i8*, ...) @dbg(i32 %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %108 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %107, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DMACSR1, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outb(i32 8, i64 %111)
  %113 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %114 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %115 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %118 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %121 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @fst_tx_dma_complete(%struct.fst_card_info* %113, i32 %116, i32 %119, i32 %122)
  %124 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %125 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = load i64, i64* @FST_TX_DMA_INT, align 8
  %127 = load i32, i32* %12, align 4
  %128 = zext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %104, %100
  br label %132

132:                                              ; preds = %131, %54
  %133 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %134 = load i32, i32* @interruptRetryCount, align 4
  %135 = call i32 @FST_RDL(%struct.fst_card_info* %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load i32, i32* @DBG_ASS, align 4
  %140 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %141 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 (i32, i8*, ...) @dbg(i32 %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %146 = load i32, i32* @interruptRetryCount, align 4
  %147 = call i32 @FST_WRL(%struct.fst_card_info* %145, i32 %146, i32 0)
  br label %148

148:                                              ; preds = %138, %132
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %152, i32* %3, align 4
  br label %269

153:                                              ; preds = %148
  %154 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %155 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @fst_q_work_item(i32* @fst_work_intq, i32 %156)
  %158 = call i32 @tasklet_schedule(i32* @fst_int_task)
  %159 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @interruptEvent, i32 0, i32 0), align 8
  %161 = call i32 @FST_RDB(%struct.fst_card_info* %159, i32 %160)
  %162 = and i32 %161, 31
  store i32 %162, i32* %8, align 4
  %163 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @interruptEvent, i32 0, i32 2), align 8
  %165 = call i32 @FST_RDB(%struct.fst_card_info* %163, i32 %164)
  %166 = and i32 %165, 31
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %262, %153
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %263

171:                                              ; preds = %167
  %172 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %173 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @interruptEvent, i32 0, i32 1), align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @FST_RDB(%struct.fst_card_info* %172, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %180 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %179, i32 0, i32 3
  %181 = load %struct.fst_port_info*, %struct.fst_port_info** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = and i32 %182, 3
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %181, i64 %184
  store %struct.fst_port_info* %185, %struct.fst_port_info** %7, align 8
  %186 = load i32, i32* @DBG_INTR, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (i32, i8*, ...) @dbg(i32 %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %10, align 4
  switch i32 %189, label %253 [
    i32 132, label %190
    i32 138, label %202
    i32 137, label %202
    i32 136, label %202
    i32 135, label %202
    i32 142, label %212
    i32 141, label %212
    i32 140, label %212
    i32 139, label %212
    i32 131, label %218
    i32 130, label %218
    i32 129, label %218
    i32 128, label %218
    i32 134, label %244
    i32 133, label %247
  ]

190:                                              ; preds = %171
  %191 = load i32, i32* @DBG_INTR, align 4
  %192 = call i32 (i32, i8*, ...) @dbg(i32 %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %193 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %194 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %199 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %200 = call i32 @fst_intr_te1_alarm(%struct.fst_card_info* %198, %struct.fst_port_info* %199)
  br label %201

201:                                              ; preds = %197, %190
  br label %256

202:                                              ; preds = %171, %171, %171, %171
  %203 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %204 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %209 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %210 = call i32 @fst_intr_ctlchg(%struct.fst_card_info* %208, %struct.fst_port_info* %209)
  br label %211

211:                                              ; preds = %207, %202
  br label %256

212:                                              ; preds = %171, %171, %171, %171
  %213 = load i32, i32* @DBG_TX, align 4
  %214 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %215 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i32, i8*, ...) @dbg(i32 %213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %216)
  br label %256

218:                                              ; preds = %171, %171, %171, %171
  %219 = load i32, i32* @DBG_TX, align 4
  %220 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %221 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, ...) @dbg(i32 %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %222)
  %224 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %225 = call %struct.TYPE_5__* @port_to_dev(%struct.fst_port_info* %224)
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  %230 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %231 = call %struct.TYPE_5__* @port_to_dev(%struct.fst_port_info* %230)
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* @DBG_ASS, align 4
  %237 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %238 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %241 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, ...) @dbg(i32 %236, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %239, i32 %242)
  br label %256

244:                                              ; preds = %171
  %245 = load i32, i32* @DBG_INIT, align 4
  %246 = call i32 (i32, i8*, ...) @dbg(i32 %245, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %256

247:                                              ; preds = %171
  %248 = load i32, i32* @DBG_INIT, align 4
  %249 = call i32 (i32, i8*, ...) @dbg(i32 %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %250 = load i64, i64* @FST_IFAILED, align 8
  %251 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %252 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  br label %256

253:                                              ; preds = %171
  %254 = load i32, i32* %10, align 4
  %255 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %253, %247, %244, %218, %212, %211, %201
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* @MAX_CIRBUFF, align 4
  %260 = icmp sge i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  store i32 0, i32* %8, align 4
  br label %262

262:                                              ; preds = %261, %256
  br label %167

263:                                              ; preds = %167
  %264 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @interruptEvent, i32 0, i32 0), align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @FST_WRB(%struct.fst_card_info* %264, i32 %265, i32 %266)
  %268 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %263, %151, %27
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @dbg(i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @fst_clear_intr(%struct.fst_card_info*) #1

declare dso_local i32 @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @fst_rx_dma_complete(%struct.fst_card_info*, i32, i32, i32, i32) #1

declare dso_local i32 @fst_tx_dma_complete(%struct.fst_card_info*, i32, i32, i32) #1

declare dso_local i32 @FST_RDL(%struct.fst_card_info*, i32) #1

declare dso_local i32 @FST_WRL(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @fst_q_work_item(i32*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @fst_intr_te1_alarm(%struct.fst_card_info*, %struct.fst_port_info*) #1

declare dso_local i32 @fst_intr_ctlchg(%struct.fst_card_info*, %struct.fst_port_info*) #1

declare dso_local %struct.TYPE_5__* @port_to_dev(%struct.fst_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
