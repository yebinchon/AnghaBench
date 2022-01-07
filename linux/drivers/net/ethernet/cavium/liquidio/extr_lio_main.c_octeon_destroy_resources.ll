; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octeon_destroy_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octeon_destroy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handshake = type { i32, i32, i32, i32, i32 }
%struct.octeon_device = type { i32, i64, %struct.TYPE_16__*, %struct.TYPE_14__, i32*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_15__, i32*, i32*, i32, %struct.octeon_device*, i32, i32, %struct.octeon_instr_queue**, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.1*)*, i32 (%struct.octeon_device.2*, i32)*, i32 (%struct.octeon_device.3*)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque
%struct.octeon_device.3 = type opaque
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.octeon_instr_queue = type { i32, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.msix_entry = type { i32 }
%struct.octeon_device_priv = type { i32 }

@CVM_DRV_INVALID_APP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Device state is now %s\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"IQ had pending instructions\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"There were pending requests\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"OQ had pending packets\0A\00", align 1
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@LIO_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@MAX_OCTEON_DEVICES = common dso_local global i32 0, align 4
@handshake = common dso_local global %struct.handshake* null, align 8
@FW_IS_PRELOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @octeon_destroy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_destroy_resources(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msix_entry*, align 8
  %6 = alloca %struct.octeon_device_priv*, align 8
  %7 = alloca %struct.handshake*, align 8
  %8 = alloca %struct.octeon_instr_queue*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 17
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.octeon_device_priv*
  store %struct.octeon_device_priv* %12, %struct.octeon_device_priv** %6, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 15
  %15 = call i32 @atomic_read(i32* %14)
  switch i32 %15, label %422 [
    i32 129, label %16
    i32 142, label %16
    i32 139, label %34
    i32 143, label %34
    i32 135, label %37
    i32 137, label %138
    i32 133, label %251
    i32 134, label %259
    i32 136, label %272
    i32 140, label %272
    i32 130, label %342
    i32 138, label %345
    i32 128, label %369
    i32 141, label %372
    i32 131, label %379
    i32 132, label %412
    i32 144, label %421
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 15
  %19 = call i32 @atomic_set(i32* %18, i32 136)
  %20 = load i32, i32* @CVM_DRV_INVALID_APP, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 16
  store i32 %20, i32* %22, align 4
  %23 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 15
  %29 = call i32 @lio_get_state_string(i32* %28)
  %30 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @HZ, align 4
  %32 = sdiv i32 %31, 10
  %33 = call i32 @schedule_timeout_uninterruptible(i32 %32)
  br label %34

34:                                               ; preds = %1, %1, %16
  %35 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %36 = call i32 @octeon_remove_consoles(%struct.octeon_device* %35)
  br label %37

37:                                               ; preds = %1, %34
  %38 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %39 = call i32 @lio_wait_for_instr_fetch(%struct.octeon_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %49 = call i32 @wait_for_pending_requests(%struct.octeon_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 2
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32 (%struct.octeon_device.3*)*, i32 (%struct.octeon_device.3*)** %60, align 8
  %62 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %63 = bitcast %struct.octeon_device* %62 to %struct.octeon_device.3*
  %64 = call i32 %61(%struct.octeon_device.3* %63)
  %65 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %66 = call i32 @lio_wait_for_oq_pkts(%struct.octeon_device* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %68, %57
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %128, %74
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %78 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %75
  %81 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @BIT_ULL(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %128

90:                                               ; preds = %80
  %91 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %91, i32 0, i32 14
  %93 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %93, i64 %95
  %97 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %96, align 8
  store %struct.octeon_instr_queue* %97, %struct.octeon_instr_queue** %8, align 8
  %98 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %99 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %98, i32 0, i32 1
  %100 = call i32 @atomic_read(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %90
  %103 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %104 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %103, i32 0, i32 0
  %105 = call i32 @spin_lock_bh(i32* %104)
  %106 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %107 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %106, i32 0, i32 5
  store i32 0, i32* %107, align 4
  %108 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %109 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %112 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %114 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %113, i32 0, i32 1
  %115 = call i32 @atomic_read(i32* %114)
  %116 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %117 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %122 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %123 = call i32 @lio_process_iq_request_list(%struct.octeon_device* %121, %struct.octeon_instr_queue* %122, i32 0)
  %124 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %125 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %124, i32 0, i32 0
  %126 = call i32 @spin_unlock_bh(i32* %125)
  br label %127

127:                                              ; preds = %102, %90
  br label %128

128:                                              ; preds = %127, %89
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %75

131:                                              ; preds = %75
  %132 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %133 = call i32 @lio_process_ordered_list(%struct.octeon_device* %132, i32 1)
  %134 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %135 = call i32 @octeon_free_sc_done_list(%struct.octeon_device* %134)
  %136 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %137 = call i32 @octeon_free_sc_zombie_list(%struct.octeon_device* %136)
  br label %138

138:                                              ; preds = %1, %131
  %139 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %140 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load i32 (%struct.octeon_device.2*, i32)*, i32 (%struct.octeon_device.2*, i32)** %141, align 8
  %143 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %144 = bitcast %struct.octeon_device* %143 to %struct.octeon_device.2*
  %145 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %146 = call i32 %142(%struct.octeon_device.2* %144, i32 %145)
  %147 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %148 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %147, i32 0, i32 13
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %224

151:                                              ; preds = %138
  %152 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %153 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %152, i32 0, i32 9
  %154 = load i32*, i32** %153, align 8
  %155 = bitcast i32* %154 to %struct.msix_entry*
  store %struct.msix_entry* %155, %struct.msix_entry** %5, align 8
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %202, %151
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %159 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %205

163:                                              ; preds = %156
  %164 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %164, i32 0, i32 11
  %166 = load %struct.octeon_device*, %struct.octeon_device** %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %166, i64 %168
  %170 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %163
  %174 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %174, i64 %176
  %178 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @irq_set_affinity_hint(i32 %179, i32* null)
  %181 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %181, i64 %183
  %185 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %188 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %187, i32 0, i32 11
  %189 = load %struct.octeon_device*, %struct.octeon_device** %188, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %189, i64 %191
  %193 = call i32 @free_irq(i32 %186, %struct.octeon_device* %192)
  %194 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %195 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %194, i32 0, i32 11
  %196 = load %struct.octeon_device*, %struct.octeon_device** %195, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %196, i64 %198
  %200 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %199, i32 0, i32 10
  store i32 0, i32* %200, align 8
  br label %201

201:                                              ; preds = %173, %163
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %3, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %3, align 4
  br label %156

205:                                              ; preds = %156
  %206 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %206, i64 %208
  %210 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %213 = call i32 @free_irq(i32 %211, %struct.octeon_device* %212)
  %214 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %215 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %214, i32 0, i32 2
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = call i32 @pci_disable_msix(%struct.TYPE_16__* %216)
  %218 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %219 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %218, i32 0, i32 9
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @kfree(i32* %220)
  %222 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %223 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %222, i32 0, i32 9
  store i32* null, i32** %223, align 8
  br label %244

224:                                              ; preds = %138
  %225 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %226 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %225, i32 0, i32 2
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %231 = call i32 @free_irq(i32 %229, %struct.octeon_device* %230)
  %232 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %233 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @LIO_FLAG_MSI_ENABLED, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %224
  %239 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %240 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %239, i32 0, i32 2
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = call i32 @pci_disable_msi(%struct.TYPE_16__* %241)
  br label %243

243:                                              ; preds = %238, %224
  br label %244

244:                                              ; preds = %243, %205
  %245 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %246 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %245, i32 0, i32 8
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @kfree(i32* %247)
  %249 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %250 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %249, i32 0, i32 8
  store i32* null, i32** %250, align 8
  br label %251

251:                                              ; preds = %1, %244
  %252 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %253 = call i32 @OCTEON_CN23XX_PF(%struct.octeon_device* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %257 = call i32 @octeon_free_ioq_vector(%struct.octeon_device* %256)
  br label %258

258:                                              ; preds = %255, %251
  br label %259

259:                                              ; preds = %1, %258
  %260 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %261 = call i32 @OCTEON_CN23XX_PF(%struct.octeon_device* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %259
  %264 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %265 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = load i32 (%struct.octeon_device.1*)*, i32 (%struct.octeon_device.1*)** %266, align 8
  %268 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %269 = bitcast %struct.octeon_device* %268 to %struct.octeon_device.1*
  %270 = call i32 %267(%struct.octeon_device.1* %269)
  br label %271

271:                                              ; preds = %263, %259
  br label %272

272:                                              ; preds = %1, %1, %271
  %273 = call i32 @mdelay(i32 100)
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %293, %272
  %275 = load i32, i32* %3, align 4
  %276 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %277 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %276)
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %296

279:                                              ; preds = %274
  %280 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %281 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %280, i32 0, i32 7
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %3, align 4
  %285 = call i32 @BIT_ULL(i32 %284)
  %286 = and i32 %283, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %279
  br label %293

289:                                              ; preds = %279
  %290 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %291 = load i32, i32* %3, align 4
  %292 = call i32 @octeon_delete_droq(%struct.octeon_device* %290, i32 %291)
  br label %293

293:                                              ; preds = %289, %288
  %294 = load i32, i32* %3, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %3, align 4
  br label %274

296:                                              ; preds = %274
  store i32 0, i32* %3, align 4
  br label %297

297:                                              ; preds = %338, %296
  %298 = load i32, i32* %3, align 4
  %299 = load i32, i32* @MAX_OCTEON_DEVICES, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %341

301:                                              ; preds = %297
  %302 = load %struct.handshake*, %struct.handshake** @handshake, align 8
  %303 = load i32, i32* %3, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.handshake, %struct.handshake* %302, i64 %304
  store %struct.handshake* %305, %struct.handshake** %7, align 8
  %306 = load %struct.handshake*, %struct.handshake** %7, align 8
  %307 = getelementptr inbounds %struct.handshake, %struct.handshake* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %337

310:                                              ; preds = %301
  %311 = load %struct.handshake*, %struct.handshake** @handshake, align 8
  %312 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %313 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds %struct.handshake, %struct.handshake* %311, i64 %314
  %316 = getelementptr inbounds %struct.handshake, %struct.handshake* %315, i32 0, i32 3
  store i32 0, i32* %316, align 4
  %317 = load %struct.handshake*, %struct.handshake** @handshake, align 8
  %318 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %319 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.handshake, %struct.handshake* %317, i64 %320
  %322 = getelementptr inbounds %struct.handshake, %struct.handshake* %321, i32 0, i32 2
  %323 = call i32 @complete(i32* %322)
  %324 = load %struct.handshake*, %struct.handshake** @handshake, align 8
  %325 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %326 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.handshake, %struct.handshake* %324, i64 %327
  %329 = getelementptr inbounds %struct.handshake, %struct.handshake* %328, i32 0, i32 1
  store i32 0, i32* %329, align 4
  %330 = load %struct.handshake*, %struct.handshake** @handshake, align 8
  %331 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %332 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds %struct.handshake, %struct.handshake* %330, i64 %333
  %335 = getelementptr inbounds %struct.handshake, %struct.handshake* %334, i32 0, i32 0
  %336 = call i32 @complete(i32* %335)
  br label %337

337:                                              ; preds = %310, %301
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %3, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %3, align 4
  br label %297

341:                                              ; preds = %297
  br label %342

342:                                              ; preds = %1, %341
  %343 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %344 = call i32 @octeon_delete_response_list(%struct.octeon_device* %343)
  br label %345

345:                                              ; preds = %1, %342
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %365, %345
  %347 = load i32, i32* %3, align 4
  %348 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %349 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %348)
  %350 = icmp slt i32 %347, %349
  br i1 %350, label %351, label %368

351:                                              ; preds = %346
  %352 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %353 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %352, i32 0, i32 7
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %3, align 4
  %357 = call i32 @BIT_ULL(i32 %356)
  %358 = and i32 %355, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %351
  br label %365

361:                                              ; preds = %351
  %362 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %363 = load i32, i32* %3, align 4
  %364 = call i32 @octeon_delete_instr_queue(%struct.octeon_device* %362, i32 %363)
  br label %365

365:                                              ; preds = %361, %360
  %366 = load i32, i32* %3, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %3, align 4
  br label %346

368:                                              ; preds = %346
  br label %369

369:                                              ; preds = %1, %368
  %370 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %371 = call i32 @octeon_free_sc_buffer_pool(%struct.octeon_device* %370)
  br label %372

372:                                              ; preds = %1, %369
  %373 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %374 = call i32 @octeon_delete_dispatch_list(%struct.octeon_device* %373)
  %375 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %376 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = call i32 @cancel_delayed_work_sync(i32* %377)
  br label %379

379:                                              ; preds = %1, %372
  %380 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %381 = call i32 @octeon_deregister_device(%struct.octeon_device* %380)
  store i32 %381, i32* %4, align 4
  %382 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %383 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %382, i32 0, i32 4
  %384 = load i32*, i32** %383, align 8
  %385 = call i32 @atomic_read(i32* %384)
  %386 = load i32, i32* @FW_IS_PRELOADED, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %379
  %389 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %390 = call i32 @octeon_pci_flr(%struct.octeon_device* %389)
  br label %407

391:                                              ; preds = %379
  %392 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %393 = call i32 @OCTEON_CN6XXX(%struct.octeon_device* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %391
  %396 = load i32, i32* %4, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %406, label %398

398:                                              ; preds = %395, %391
  %399 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %400 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 0
  %402 = load i32 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.0*)** %401, align 8
  %403 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %404 = bitcast %struct.octeon_device* %403 to %struct.octeon_device.0*
  %405 = call i32 %402(%struct.octeon_device.0* %404)
  br label %406

406:                                              ; preds = %398, %395
  br label %407

407:                                              ; preds = %406, %388
  %408 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %409 = call i32 @octeon_unmap_pci_barx(%struct.octeon_device* %408, i32 0)
  %410 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %411 = call i32 @octeon_unmap_pci_barx(%struct.octeon_device* %410, i32 1)
  br label %412

412:                                              ; preds = %1, %407
  %413 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %414 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %413, i32 0, i32 2
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %414, align 8
  %416 = call i32 @pci_clear_master(%struct.TYPE_16__* %415)
  %417 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %418 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %417, i32 0, i32 2
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %418, align 8
  %420 = call i32 @pci_disable_device(%struct.TYPE_16__* %419)
  br label %421

421:                                              ; preds = %1, %412
  br label %422

422:                                              ; preds = %1, %421
  %423 = load %struct.octeon_device_priv*, %struct.octeon_device_priv** %6, align 8
  %424 = getelementptr inbounds %struct.octeon_device_priv, %struct.octeon_device_priv* %423, i32 0, i32 0
  %425 = call i32 @tasklet_kill(i32* %424)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @lio_get_state_string(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @octeon_remove_consoles(%struct.octeon_device*) #1

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

declare dso_local i32 @free_irq(i32, %struct.octeon_device*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_16__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_16__*) #1

declare dso_local i32 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @octeon_free_ioq_vector(%struct.octeon_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @octeon_delete_droq(%struct.octeon_device*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @octeon_delete_response_list(%struct.octeon_device*) #1

declare dso_local i32 @octeon_delete_instr_queue(%struct.octeon_device*, i32) #1

declare dso_local i32 @octeon_free_sc_buffer_pool(%struct.octeon_device*) #1

declare dso_local i32 @octeon_delete_dispatch_list(%struct.octeon_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @octeon_deregister_device(%struct.octeon_device*) #1

declare dso_local i32 @octeon_pci_flr(%struct.octeon_device*) #1

declare dso_local i32 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i32 @octeon_unmap_pci_barx(%struct.octeon_device*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.TYPE_16__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_16__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
