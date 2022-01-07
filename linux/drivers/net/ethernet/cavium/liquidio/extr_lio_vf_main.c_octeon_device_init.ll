; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_octeon_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_octeon_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, i32, %struct.TYPE_7__**, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.1*, i32)*, i64 (%struct.octeon_device.2*)*, i64 (%struct.octeon_device.3*)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.octeon_device.2 = type opaque
%struct.octeon_device.3 = type opaque
%struct.TYPE_5__ = type { i32 }

@OCT_DEV_BEGIN_STATE = common dso_local global i32 0, align 4
@OCT_DEV_PCI_ENABLE_DONE = common dso_local global i32 0, align 4
@OCTEON_CN23XX_VF_VID = common dso_local global i32 0, align 4
@OCT_DEV_PCI_MAP_DONE = common dso_local global i32 0, align 4
@CVM_DRV_NIC_APP = common dso_local global i32 0, align 4
@OCT_DEV_DISPATCH_INIT_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"setting io queues off failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"device registers configuration failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"sc buffer pool allocation failed\0A\00", align 1
@OCT_DEV_SC_BUFF_POOL_INIT_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"instruction queue initialization failed\0A\00", align 1
@OCT_DEV_INSTR_QUEUE_INIT_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Response list allocation failed\0A\00", align 1
@OCT_DEV_RESP_LIST_INIT_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Output queue initialization failed\0A\00", align 1
@OCT_DEV_DROQ_INIT_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Mailbox setup failed\0A\00", align 1
@OCT_DEV_MBOX_SETUP_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"ioq vector allocation failed\0A\00", align 1
@OCT_DEV_MSIX_ALLOC_VECTOR_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"OCTEON_CN23XX VF Version: %s, %d ioqs\0A\00", align 1
@LIQUIDIO_VERSION = common dso_local global i32 0, align 4
@OCT_DEV_INTR_SET_DONE = common dso_local global i32 0, align 4
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"enabling io queues failed\0A\00", align 1
@OCT_DEV_IO_QUEUES_DONE = common dso_local global i32 0, align 4
@OCT_DEV_HOST_OK = common dso_local global i32 0, align 4
@OCT_DEV_CORE_OK = common dso_local global i32 0, align 4
@OCT_DEV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @octeon_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_device_init(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 2
  %8 = load i32, i32* @OCT_DEV_BEGIN_STATE, align 4
  %9 = call i32 @atomic_set(i32* %7, i32 %8)
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = call i64 @octeon_pci_os_setup(%struct.octeon_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %279

14:                                               ; preds = %1
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 2
  %17 = load i32, i32* @OCT_DEV_PCI_ENABLE_DONE, align 4
  %18 = call i32 @atomic_set(i32* %16, i32 %17)
  %19 = load i32, i32* @OCTEON_CN23XX_VF_VID, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @pci_read_config_dword(%struct.TYPE_8__* %24, i32 8, i32* %4)
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = call i64 @cn23xx_setup_octeon_vf_device(%struct.octeon_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %279

34:                                               ; preds = %14
  %35 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 2
  %37 = load i32, i32* @OCT_DEV_PCI_MAP_DONE, align 4
  %38 = call i32 @atomic_set(i32* %36, i32 %37)
  %39 = load i32, i32* @CVM_DRV_NIC_APP, align 4
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %43 = call i64 @octeon_init_dispatch_list(%struct.octeon_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %279

46:                                               ; preds = %34
  %47 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %47, i32 0, i32 2
  %49 = load i32, i32* @OCT_DEV_DISPATCH_INIT_DONE, align 4
  %50 = call i32 @atomic_set(i32* %48, i32 %49)
  %51 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %52 = call i64 @octeon_set_io_queues_off(%struct.octeon_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

60:                                               ; preds = %46
  %61 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i64 (%struct.octeon_device.3*)*, i64 (%struct.octeon_device.3*)** %63, align 8
  %65 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %66 = bitcast %struct.octeon_device* %65 to %struct.octeon_device.3*
  %67 = call i64 %64(%struct.octeon_device.3* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %70, i32 0, i32 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

75:                                               ; preds = %60
  %76 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %77 = call i64 @octeon_setup_sc_buffer_pool(%struct.octeon_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

85:                                               ; preds = %75
  %86 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %86, i32 0, i32 2
  %88 = load i32, i32* @OCT_DEV_SC_BUFF_POOL_INIT_DONE, align 4
  %89 = call i32 @atomic_set(i32* %87, i32 %88)
  %90 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %91 = call i64 @octeon_setup_instr_queues(%struct.octeon_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %94, i32 0, i32 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

99:                                               ; preds = %85
  %100 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %100, i32 0, i32 2
  %102 = load i32, i32* @OCT_DEV_INSTR_QUEUE_INIT_DONE, align 4
  %103 = call i32 @atomic_set(i32* %101, i32 %102)
  %104 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %105 = call i64 @octeon_setup_response_list(%struct.octeon_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %108, i32 0, i32 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

113:                                              ; preds = %99
  %114 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %114, i32 0, i32 2
  %116 = load i32, i32* @OCT_DEV_RESP_LIST_INIT_DONE, align 4
  %117 = call i32 @atomic_set(i32* %115, i32 %116)
  %118 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %119 = call i64 @octeon_setup_output_queues(%struct.octeon_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %123 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %122, i32 0, i32 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

127:                                              ; preds = %113
  %128 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %128, i32 0, i32 2
  %130 = load i32, i32* @OCT_DEV_DROQ_INIT_DONE, align 4
  %131 = call i32 @atomic_set(i32* %129, i32 %130)
  %132 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i64 (%struct.octeon_device.2*)*, i64 (%struct.octeon_device.2*)** %134, align 8
  %136 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %137 = bitcast %struct.octeon_device* %136 to %struct.octeon_device.2*
  %138 = call i64 %135(%struct.octeon_device.2* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %127
  %141 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %142 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %141, i32 0, i32 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

146:                                              ; preds = %127
  %147 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %148 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %147, i32 0, i32 2
  %149 = load i32, i32* @OCT_DEV_MBOX_SETUP_DONE, align 4
  %150 = call i32 @atomic_set(i32* %148, i32 %149)
  %151 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %152 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @octeon_allocate_ioq_vector(%struct.octeon_device* %151, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %146
  %159 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %159, i32 0, i32 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

164:                                              ; preds = %146
  %165 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %165, i32 0, i32 2
  %167 = load i32, i32* @OCT_DEV_MSIX_ALLOC_VECTOR_DONE, align 4
  %168 = call i32 @atomic_set(i32* %166, i32 %167)
  %169 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %170 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %169, i32 0, i32 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* @LIQUIDIO_VERSION, align 4
  %174 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %175 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dev_info(i32* %172, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %173, i32 %177)
  %179 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %180 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %181 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @octeon_setup_interrupt(%struct.octeon_device* %179, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %164
  store i32 1, i32* %2, align 4
  br label %279

187:                                              ; preds = %164
  %188 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 2
  %190 = load i32, i32* @OCT_DEV_INTR_SET_DONE, align 4
  %191 = call i32 @atomic_set(i32* %189, i32 %190)
  %192 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %193 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.1*, i32)** %194, align 8
  %196 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %197 = bitcast %struct.octeon_device* %196 to %struct.octeon_device.1*
  %198 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %199 = call i32 %195(%struct.octeon_device.1* %197, i32 %198)
  %200 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %201 = call i64 @cn23xx_octeon_pfvf_handshake(%struct.octeon_device* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %187
  store i32 1, i32* %2, align 4
  br label %279

204:                                              ; preds = %187
  %205 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %206 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32 (%struct.octeon_device.1*, i32)*, i32 (%struct.octeon_device.1*, i32)** %207, align 8
  %209 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %210 = bitcast %struct.octeon_device* %209 to %struct.octeon_device.1*
  %211 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %212 = call i32 %208(%struct.octeon_device.1* %210, i32 %211)
  %213 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %214 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64 (%struct.octeon_device.0*)*, i64 (%struct.octeon_device.0*)** %215, align 8
  %217 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %218 = bitcast %struct.octeon_device* %217 to %struct.octeon_device.0*
  %219 = call i64 %216(%struct.octeon_device.0* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %204
  %222 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %223 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %222, i32 0, i32 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = call i32 @dev_err(i32* %225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %279

227:                                              ; preds = %204
  %228 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %229 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %228, i32 0, i32 2
  %230 = load i32, i32* @OCT_DEV_IO_QUEUES_DONE, align 4
  %231 = call i32 @atomic_set(i32* %229, i32 %230)
  %232 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %233 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %232, i32 0, i32 2
  %234 = load i32, i32* @OCT_DEV_HOST_OK, align 4
  %235 = call i32 @atomic_set(i32* %233, i32 %234)
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %262, %227
  %237 = load i32, i32* %5, align 4
  %238 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %239 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %265

242:                                              ; preds = %236
  %243 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %244 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %243, i32 0, i32 3
  %245 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %245, i64 %247
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %253 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %252, i32 0, i32 3
  %254 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %254, i64 %256
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @writel(i32 %251, i32 %260)
  br label %262

262:                                              ; preds = %242
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %236

265:                                              ; preds = %236
  %266 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %267 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %266, i32 0, i32 2
  %268 = load i32, i32* @OCT_DEV_CORE_OK, align 4
  %269 = call i32 @atomic_set(i32* %267, i32 %268)
  %270 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %271 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %270, i32 0, i32 2
  %272 = load i32, i32* @OCT_DEV_RUNNING, align 4
  %273 = call i32 @atomic_set(i32* %271, i32 %272)
  %274 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %275 = call i64 @liquidio_init_nic_module(%struct.octeon_device* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %265
  store i32 1, i32* %2, align 4
  br label %279

278:                                              ; preds = %265
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %278, %277, %221, %203, %186, %158, %140, %121, %107, %93, %79, %69, %54, %45, %33, %13
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @octeon_pci_os_setup(%struct.octeon_device*) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @cn23xx_setup_octeon_vf_device(%struct.octeon_device*) #1

declare dso_local i64 @octeon_init_dispatch_list(%struct.octeon_device*) #1

declare dso_local i64 @octeon_set_io_queues_off(%struct.octeon_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @octeon_setup_sc_buffer_pool(%struct.octeon_device*) #1

declare dso_local i64 @octeon_setup_instr_queues(%struct.octeon_device*) #1

declare dso_local i64 @octeon_setup_response_list(%struct.octeon_device*) #1

declare dso_local i64 @octeon_setup_output_queues(%struct.octeon_device*) #1

declare dso_local i64 @octeon_allocate_ioq_vector(%struct.octeon_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i64 @octeon_setup_interrupt(%struct.octeon_device*, i32) #1

declare dso_local i64 @cn23xx_octeon_pfvf_handshake(%struct.octeon_device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @liquidio_init_nic_module(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
