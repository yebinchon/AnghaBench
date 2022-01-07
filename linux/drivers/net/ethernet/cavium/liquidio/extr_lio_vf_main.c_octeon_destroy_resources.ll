; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_octeon_destroy_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_octeon_destroy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32*, i32*, %struct.TYPE_14__*, i32, %struct.octeon_instr_queue**, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.2*)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque
%struct.TYPE_14__ = type { i32 }
%struct.octeon_instr_queue = type { i32, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.octeon_device_priv = type { i32 }
%struct.msix_entry = type { i32 }

@CVM_DRV_INVALID_APP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Device state is now %s\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"IQ had pending instructions\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"There were pending requests\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"OQ had pending packets\0A\00", align 1
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @octeon_destroy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_destroy_resources(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.octeon_device_priv*, align 8
  %4 = alloca %struct.msix_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_instr_queue*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 12
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.octeon_device_priv*
  store %struct.octeon_device_priv* %10, %struct.octeon_device_priv** %3, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 10
  %13 = call i32 @atomic_read(i32* %12)
  switch i32 %13, label %318 [
    i32 129, label %14
    i32 142, label %14
    i32 139, label %32
    i32 135, label %32
    i32 137, label %133
    i32 133, label %230
    i32 134, label %233
    i32 136, label %241
    i32 140, label %241
    i32 130, label %266
    i32 138, label %269
    i32 128, label %293
    i32 141, label %296
    i32 131, label %303
    i32 132, label %308
    i32 143, label %317
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 10
  %17 = call i32 @atomic_set(i32* %16, i32 136)
  %18 = load i32, i32* @CVM_DRV_INVALID_APP, align 4
  %19 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 10
  %27 = call i32 @lio_get_state_string(i32* %26)
  %28 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 10
  %31 = call i32 @schedule_timeout_uninterruptible(i32 %30)
  br label %32

32:                                               ; preds = %1, %1, %14
  %33 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %34 = call i32 @lio_wait_for_instr_fetch(%struct.octeon_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %44 = call i32 @wait_for_pending_requests(%struct.octeon_device* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32 (%struct.octeon_device.2*)*, i32 (%struct.octeon_device.2*)** %55, align 8
  %57 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %58 = bitcast %struct.octeon_device* %57 to %struct.octeon_device.2*
  %59 = call i32 %56(%struct.octeon_device.2* %58)
  %60 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %61 = call i32 @lio_wait_for_oq_pkts(%struct.octeon_device* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %63, %52
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %123, %69
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %73 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %70
  %76 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @BIT_ULL(i32 %80)
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %123

85:                                               ; preds = %75
  %86 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %86, i32 0, i32 9
  %88 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %88, i64 %90
  %92 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %91, align 8
  store %struct.octeon_instr_queue* %92, %struct.octeon_instr_queue** %6, align 8
  %93 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %94 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %93, i32 0, i32 1
  %95 = call i32 @atomic_read(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %85
  %98 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %99 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %98, i32 0, i32 0
  %100 = call i32 @spin_lock_bh(i32* %99)
  %101 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %102 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %101, i32 0, i32 5
  store i32 0, i32* %102, align 4
  %103 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %104 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %107 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %109 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %108, i32 0, i32 1
  %110 = call i32 @atomic_read(i32* %109)
  %111 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %112 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %117 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %118 = call i32 @lio_process_iq_request_list(%struct.octeon_device* %116, %struct.octeon_instr_queue* %117, i32 0)
  %119 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %120 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock_bh(i32* %120)
  br label %122

122:                                              ; preds = %97, %85
  br label %123

123:                                              ; preds = %122, %84
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %70

126:                                              ; preds = %70
  %127 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %128 = call i32 @lio_process_ordered_list(%struct.octeon_device* %127, i32 1)
  %129 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %130 = call i32 @octeon_free_sc_done_list(%struct.octeon_device* %129)
  %131 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %132 = call i32 @octeon_free_sc_zombie_list(%struct.octeon_device* %131)
  br label %133

133:                                              ; preds = %1, %126
  %134 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %135 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.1*, i32)** %136, align 8
  %138 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %139 = bitcast %struct.octeon_device* %138 to %struct.octeon_device.1*
  %140 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %141 = call i32 %137(%struct.octeon_device.1* %139, i32 %140)
  %142 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %143 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %216

146:                                              ; preds = %133
  %147 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %148 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = bitcast i32* %149 to %struct.msix_entry*
  store %struct.msix_entry* %150, %struct.msix_entry** %4, align 8
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %196, %146
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %154 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %199

157:                                              ; preds = %151
  %158 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %159 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %158, i32 0, i32 7
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %157
  %168 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %168, i64 %170
  %172 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @irq_set_affinity_hint(i32 %173, i32* null)
  %175 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %175, i64 %177
  %179 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %182 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %181, i32 0, i32 7
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %185
  %187 = call i32 @free_irq(i32 %180, %struct.TYPE_14__* %186)
  %188 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 7
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %167, %157
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %151

199:                                              ; preds = %151
  %200 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %201 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %200, i32 0, i32 1
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = call i32 @pci_disable_msix(%struct.TYPE_13__* %202)
  %204 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %205 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @kfree(i32* %206)
  %208 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %209 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %208, i32 0, i32 6
  store i32* null, i32** %209, align 8
  %210 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %211 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @kfree(i32* %212)
  %214 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %215 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %214, i32 0, i32 5
  store i32* null, i32** %215, align 8
  br label %216

216:                                              ; preds = %199, %133
  %217 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %218 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %225 = call i32 @octeon_pci_flr(%struct.octeon_device* %224)
  br label %229

226:                                              ; preds = %216
  %227 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %228 = call i32 @cn23xx_vf_ask_pf_to_do_flr(%struct.octeon_device* %227)
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %1, %229
  %231 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %232 = call i32 @octeon_free_ioq_vector(%struct.octeon_device* %231)
  br label %233

233:                                              ; preds = %1, %230
  %234 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %235 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.0*)** %236, align 8
  %238 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %239 = bitcast %struct.octeon_device* %238 to %struct.octeon_device.0*
  %240 = call i32 %237(%struct.octeon_device.0* %239)
  br label %241

241:                                              ; preds = %1, %1, %233
  %242 = call i32 @mdelay(i32 100)
  store i32 0, i32* %5, align 4
  br label %243

243:                                              ; preds = %262, %241
  %244 = load i32, i32* %5, align 4
  %245 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %246 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %245)
  %247 = icmp slt i32 %244, %246
  br i1 %247, label %248, label %265

248:                                              ; preds = %243
  %249 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %250 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %5, align 4
  %254 = call i32 @BIT_ULL(i32 %253)
  %255 = and i32 %252, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %248
  br label %262

258:                                              ; preds = %248
  %259 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %260 = load i32, i32* %5, align 4
  %261 = call i32 @octeon_delete_droq(%struct.octeon_device* %259, i32 %260)
  br label %262

262:                                              ; preds = %258, %257
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %243

265:                                              ; preds = %243
  br label %266

266:                                              ; preds = %1, %265
  %267 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %268 = call i32 @octeon_delete_response_list(%struct.octeon_device* %267)
  br label %269

269:                                              ; preds = %1, %266
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %289, %269
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %273 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %272)
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %292

275:                                              ; preds = %270
  %276 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %277 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @BIT_ULL(i32 %280)
  %282 = and i32 %279, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %275
  br label %289

285:                                              ; preds = %275
  %286 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @octeon_delete_instr_queue(%struct.octeon_device* %286, i32 %287)
  br label %289

289:                                              ; preds = %285, %284
  %290 = load i32, i32* %5, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %5, align 4
  br label %270

292:                                              ; preds = %270
  br label %293

293:                                              ; preds = %1, %292
  %294 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %295 = call i32 @octeon_free_sc_buffer_pool(%struct.octeon_device* %294)
  br label %296

296:                                              ; preds = %1, %293
  %297 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %298 = call i32 @octeon_delete_dispatch_list(%struct.octeon_device* %297)
  %299 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %300 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = call i32 @cancel_delayed_work_sync(i32* %301)
  br label %303

303:                                              ; preds = %1, %296
  %304 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %305 = call i32 @octeon_unmap_pci_barx(%struct.octeon_device* %304, i32 0)
  %306 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %307 = call i32 @octeon_unmap_pci_barx(%struct.octeon_device* %306, i32 1)
  br label %308

308:                                              ; preds = %1, %303
  %309 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %310 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %309, i32 0, i32 1
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %310, align 8
  %312 = call i32 @pci_clear_master(%struct.TYPE_13__* %311)
  %313 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %314 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %313, i32 0, i32 1
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %314, align 8
  %316 = call i32 @pci_disable_device(%struct.TYPE_13__* %315)
  br label %317

317:                                              ; preds = %1, %308
  br label %318

318:                                              ; preds = %1, %317
  %319 = load %struct.octeon_device_priv*, %struct.octeon_device_priv** %3, align 8
  %320 = getelementptr inbounds %struct.octeon_device_priv, %struct.octeon_device_priv* %319, i32 0, i32 0
  %321 = call i32 @tasklet_kill(i32* %320)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @lio_get_state_string(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @lio_wait_for_instr_fetch(%struct.octeon_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @wait_for_pending_requests(%struct.octeon_device*) #1

declare dso_local i32 @lio_wait_for_oq_pkts(%struct.octeon_device*) #1

declare dso_local i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @lio_process_iq_request_list(%struct.octeon_device*, %struct.octeon_instr_queue*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @lio_process_ordered_list(%struct.octeon_device*, i32) #1

declare dso_local i32 @octeon_free_sc_done_list(%struct.octeon_device*) #1

declare dso_local i32 @octeon_free_sc_zombie_list(%struct.octeon_device*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_13__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @octeon_pci_flr(%struct.octeon_device*) #1

declare dso_local i32 @cn23xx_vf_ask_pf_to_do_flr(%struct.octeon_device*) #1

declare dso_local i32 @octeon_free_ioq_vector(%struct.octeon_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @octeon_delete_droq(%struct.octeon_device*, i32) #1

declare dso_local i32 @octeon_delete_response_list(%struct.octeon_device*) #1

declare dso_local i32 @octeon_delete_instr_queue(%struct.octeon_device*, i32) #1

declare dso_local i32 @octeon_free_sc_buffer_pool(%struct.octeon_device*) #1

declare dso_local i32 @octeon_delete_dispatch_list(%struct.octeon_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @octeon_unmap_pci_barx(%struct.octeon_device*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.TYPE_13__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_13__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
