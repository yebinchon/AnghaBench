; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_enqueue_hcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_enqueue_hcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.TYPE_5__*, i32, i32, i32, %struct.il_tx_queue* }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (%struct.il_priv*, %struct.il_tx_queue*, i32, i64, i32, i32)*, i32 (%struct.il_priv*, %struct.il_tx_queue*, i32)* }
%struct.il_tx_queue = type { i32, %struct.il_cmd_meta*, %struct.il_device_cmd**, %struct.il_queue }
%struct.il_cmd_meta = type { i32, i32, %struct.il_host_cmd* }
%struct.il_device_cmd = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.il_queue = type { i32, i32 }
%struct.il_host_cmd = type { i32, i32, i64, i32, i32 }

@TFD_MAX_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@CMD_SIZE_HUGE = common dso_local global i64 0, align 8
@IL_MAX_CMD_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Not sending command - %s KILL\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@EIO = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Restarting adapter due to command queue full\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@CMD_MAPPED = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@SEQ_HUGE_FRAME = common dso_local global i32 0, align 4
@TFD_CMD_SLOTS = common dso_local global i64 0, align 8
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_enqueue_hcmd(%struct.il_priv* %0, %struct.il_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_host_cmd*, align 8
  %6 = alloca %struct.il_tx_queue*, align 8
  %7 = alloca %struct.il_queue*, align 8
  %8 = alloca %struct.il_device_cmd*, align 8
  %9 = alloca %struct.il_cmd_meta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_host_cmd* %1, %struct.il_host_cmd** %5, align 8
  %15 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 6
  %17 = load %struct.il_tx_queue*, %struct.il_tx_queue** %16, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %17, i64 %20
  store %struct.il_tx_queue* %21, %struct.il_tx_queue** %6, align 8
  %22 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %23 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %22, i32 0, i32 3
  store %struct.il_queue* %23, %struct.il_queue** %7, align 8
  %24 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %28(i32 %31, i32 %34)
  %36 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 12
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @TFD_MAX_PAYLOAD_SIZE, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %2
  %47 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CMD_SIZE_HUGE, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %2
  %55 = phi i1 [ false, %2 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @IL_MAX_CMD_SIZE, align 8
  %60 = icmp sgt i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %64 = call i64 @il_is_rfkill(%struct.il_priv* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %54
  %67 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %68 = call i64 @il_is_ctkill(%struct.il_priv* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66, %54
  %71 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %72 = call i64 @il_is_rfkill(%struct.il_priv* %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 @IL_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %315

79:                                               ; preds = %66
  %80 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %81 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %80, i32 0, i32 1
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %85 = call i32 @il_queue_space(%struct.il_queue* %84)
  %86 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %87 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @CMD_ASYNC, align 4
  %90 = sext i32 %89 to i64
  %91 = and i64 %88, %90
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 2, i32 1
  %95 = icmp slt i32 %85, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %79
  %97 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = call i32 @IL_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %103 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %106 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %105, i32 0, i32 4
  %107 = call i32 @queue_work(i32 %104, i32* %106)
  %108 = load i32, i32* @ENOSPC, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %315

110:                                              ; preds = %79
  %111 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %112 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %113 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %116 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CMD_SIZE_HUGE, align 8
  %119 = and i64 %117, %118
  %120 = call i64 @il_get_cmd_idx(%struct.il_queue* %111, i32 %114, i64 %119)
  store i64 %120, i64* %13, align 8
  %121 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %122 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %121, i32 0, i32 2
  %123 = load %struct.il_device_cmd**, %struct.il_device_cmd*** %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds %struct.il_device_cmd*, %struct.il_device_cmd** %123, i64 %124
  %126 = load %struct.il_device_cmd*, %struct.il_device_cmd** %125, align 8
  store %struct.il_device_cmd* %126, %struct.il_device_cmd** %8, align 8
  %127 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %128 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %127, i32 0, i32 1
  %129 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %128, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %129, i64 %130
  store %struct.il_cmd_meta* %131, %struct.il_cmd_meta** %9, align 8
  %132 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %9, align 8
  %133 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CMD_MAPPED, align 4
  %136 = and i32 %134, %135
  %137 = call i64 @WARN_ON(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %110
  %140 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %141 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %140, i32 0, i32 1
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load i32, i32* @ENOSPC, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %315

146:                                              ; preds = %110
  %147 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %9, align 8
  %148 = call i32 @memset(%struct.il_cmd_meta* %147, i32 0, i32 16)
  %149 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %150 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @CMD_MAPPED, align 4
  %153 = sext i32 %152 to i64
  %154 = or i64 %151, %153
  %155 = trunc i64 %154 to i32
  %156 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %9, align 8
  %157 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %159 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @CMD_WANT_SKB, align 4
  %162 = sext i32 %161 to i64
  %163 = and i64 %160, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %146
  %166 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %167 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %9, align 8
  %168 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %167, i32 0, i32 2
  store %struct.il_host_cmd* %166, %struct.il_host_cmd** %168, align 8
  br label %169

169:                                              ; preds = %165, %146
  %170 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %171 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @CMD_ASYNC, align 4
  %174 = sext i32 %173 to i64
  %175 = and i64 %172, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %179 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %9, align 8
  %182 = getelementptr inbounds %struct.il_cmd_meta, %struct.il_cmd_meta* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %169
  %184 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %185 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.il_device_cmd*, %struct.il_device_cmd** %8, align 8
  %188 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 4
  %190 = load %struct.il_device_cmd*, %struct.il_device_cmd** %8, align 8
  %191 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %194 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %197 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @memcpy(i32* %192, i32 %195, i32 %198)
  %200 = load %struct.il_device_cmd*, %struct.il_device_cmd** %8, align 8
  %201 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  store i32 0, i32* %202, align 4
  %203 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %204 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @QUEUE_TO_SEQ(i64 %205)
  %207 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %208 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @IDX_TO_SEQ(i32 %209)
  %211 = or i32 %206, %210
  %212 = call i32 @cpu_to_le16(i32 %211)
  %213 = load %struct.il_device_cmd*, %struct.il_device_cmd** %8, align 8
  %214 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i32 %212, i32* %215, align 4
  %216 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %217 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @CMD_SIZE_HUGE, align 8
  %220 = and i64 %218, %219
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %183
  %223 = load i32, i32* @SEQ_HUGE_FRAME, align 4
  %224 = load %struct.il_device_cmd*, %struct.il_device_cmd** %8, align 8
  %225 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %223
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %222, %183
  store i32 16, i32* %12, align 4
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* @TFD_CMD_SLOTS, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i64, i64* @IL_MAX_CMD_SIZE, align 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %233, %229
  %237 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %238 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.il_device_cmd*, %struct.il_device_cmd** %8, align 8
  %241 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %240, i32 0, i32 0
  %242 = load i64, i64* %14, align 8
  %243 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %244 = call i32 @pci_map_single(i32 %239, %struct.TYPE_6__* %241, i64 %242, i32 %243)
  store i32 %244, i32* %10, align 4
  %245 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %246 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @pci_dma_mapping_error(i32 %247, i32 %248)
  %250 = call i64 @unlikely(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %236
  %253 = load i64, i64* @ENOMEM, align 8
  %254 = sub i64 0, %253
  store i64 %254, i64* %13, align 8
  br label %308

255:                                              ; preds = %236
  %256 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %9, align 8
  %257 = load i32, i32* @mapping, align 4
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @dma_unmap_addr_set(%struct.il_cmd_meta* %256, i32 %257, i32 %258)
  %260 = load %struct.il_cmd_meta*, %struct.il_cmd_meta** %9, align 8
  %261 = load i32, i32* %12, align 4
  %262 = load i64, i64* %14, align 8
  %263 = call i32 @dma_unmap_len_set(%struct.il_cmd_meta* %260, i32 %261, i64 %262)
  %264 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %265 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  %266 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %267 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %266, i32 0, i32 2
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 2
  %270 = load i32 (%struct.il_priv*, %struct.il_tx_queue*, i32)*, i32 (%struct.il_priv*, %struct.il_tx_queue*, i32)** %269, align 8
  %271 = icmp ne i32 (%struct.il_priv*, %struct.il_tx_queue*, i32)* %270, null
  br i1 %271, label %272, label %281

272:                                              ; preds = %255
  %273 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %274 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %273, i32 0, i32 2
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 2
  %277 = load i32 (%struct.il_priv*, %struct.il_tx_queue*, i32)*, i32 (%struct.il_priv*, %struct.il_tx_queue*, i32)** %276, align 8
  %278 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %279 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %280 = call i32 %277(%struct.il_priv* %278, %struct.il_tx_queue* %279, i32 0)
  br label %281

281:                                              ; preds = %272, %255
  %282 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %283 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %282, i32 0, i32 2
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i32 (%struct.il_priv*, %struct.il_tx_queue*, i32, i64, i32, i32)*, i32 (%struct.il_priv*, %struct.il_tx_queue*, i32, i64, i32, i32)** %285, align 8
  %287 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %288 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %289 = load i32, i32* %10, align 4
  %290 = load i64, i64* %14, align 8
  %291 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %292 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @U32_PAD(i32 %293)
  %295 = call i32 %286(%struct.il_priv* %287, %struct.il_tx_queue* %288, i32 %289, i64 %290, i32 1, i32 %294)
  %296 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %297 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %300 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @il_queue_inc_wrap(i32 %298, i32 %301)
  %303 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %304 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 4
  %305 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %306 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %307 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %305, %struct.il_tx_queue* %306)
  br label %308

308:                                              ; preds = %281, %252
  %309 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %310 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %309, i32 0, i32 1
  %311 = load i64, i64* %11, align 8
  %312 = call i32 @spin_unlock_irqrestore(i32* %310, i64 %311)
  %313 = load i64, i64* %13, align 8
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %308, %139, %96, %70
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i64 @il_is_ctkill(%struct.il_priv*) #1

declare dso_local i32 @IL_WARN(i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_queue_space(%struct.il_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @il_get_cmd_idx(%struct.il_queue*, i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.il_cmd_meta*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @QUEUE_TO_SEQ(i64) #1

declare dso_local i32 @IDX_TO_SEQ(i32) #1

declare dso_local i32 @pci_map_single(i32, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.il_cmd_meta*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.il_cmd_meta*, i32, i64) #1

declare dso_local i32 @U32_PAD(i32) #1

declare dso_local i32 @il_queue_inc_wrap(i32, i32) #1

declare dso_local i32 @il_txq_update_write_ptr(%struct.il_priv*, %struct.il_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
