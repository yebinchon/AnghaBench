; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32, i32, i32, i32 }
%struct.sdio_device_id = type { i32, i32 }
%struct.ath10k_sdio = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.ath10k*, %struct.sdio_func*, i8* }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.ath10k = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath10k_bus_params = type { i32, i64, i32 }

@ATH10K_HW_QCA6174 = common dso_local global i32 0, align 4
@ATH10K_BUS_SDIO = common dso_local global i32 0, align 4
@ath10k_sdio_hif_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to allocate core\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@BMI_MAX_CMDBUF_SIZE = common dso_local global i32 0, align 4
@ath10k_sdio_write_async_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ath10k_sdio_wq\00", align 1
@ATH10K_SDIO_BUS_REQUEST_MAX_NUM = common dso_local global i32 0, align 4
@QCA_MANUFACTURER_ID_BASE = common dso_local global i32 0, align 4
@QCA9377_1_0_DEVICE_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unsupported device id %u (0x%x)\0A\00", align 1
@ATH10K_DEV_TYPE_HL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to register driver core: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"WARNING: ath10k SDIO support is work-in-progress, problems may arise!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @ath10k_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.ath10k_sdio*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k_bus_params, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %13 = bitcast %struct.ath10k_bus_params* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load i32, i32* @ATH10K_HW_QCA6174, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 5
  %17 = load i32, i32* @ATH10K_BUS_SDIO, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.ath10k* @ath10k_core_create(i32 88, i32* %16, i32 %17, i32 %18, i32* @ath10k_sdio_hif_ops)
  store %struct.ath10k* %19, %struct.ath10k** %7, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %21 = icmp ne %struct.ath10k* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 5
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %216

28:                                               ; preds = %2
  %29 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %30 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %31 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %32 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %38 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %44 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ath10k_dbg(%struct.ath10k* %29, i32 %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %48 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %47)
  store %struct.ath10k_sdio* %48, %struct.ath10k_sdio** %6, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kzalloc(i32 %51, i32 4, i32 %52)
  %54 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %55 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  %57 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %58 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %28
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %212

65:                                               ; preds = %28
  %66 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %67 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @devm_kzalloc(i32 %68, i32 4, i32 %69)
  %71 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %72 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %75 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %212

82:                                               ; preds = %65
  %83 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %84 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BMI_MAX_CMDBUF_SIZE, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @devm_kzalloc(i32 %85, i32 %86, i32 %87)
  %89 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %90 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %89, i32 0, i32 11
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %92 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %91, i32 0, i32 11
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %212

98:                                               ; preds = %82
  %99 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %100 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %101 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %100, i32 0, i32 10
  store %struct.sdio_func* %99, %struct.sdio_func** %101, align 8
  %102 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %103 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %104 = call i32 @sdio_set_drvdata(%struct.sdio_func* %102, %struct.ath10k_sdio* %103)
  %105 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %106 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %108 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %109 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %108, i32 0, i32 9
  store %struct.ath10k* %107, %struct.ath10k** %109, align 8
  %110 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %111 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %110, i32 0, i32 8
  %112 = call i32 @spin_lock_init(i32* %111)
  %113 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %114 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %113, i32 0, i32 7
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %117 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = call i32 @mutex_init(i32* %118)
  %120 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %121 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %120, i32 0, i32 5
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %124 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %123, i32 0, i32 4
  %125 = call i32 @INIT_LIST_HEAD(i32* %124)
  %126 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %127 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %126, i32 0, i32 3
  %128 = load i32, i32* @ath10k_sdio_write_async_work, align 4
  %129 = call i32 @INIT_WORK(i32* %127, i32 %128)
  %130 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %132 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %134 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %98
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %11, align 4
  br label %212

140:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %154, %140
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @ATH10K_SDIO_BUS_REQUEST_MAX_NUM, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %147 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %148 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @ath10k_sdio_free_bus_req(%struct.ath10k* %146, i32* %152)
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %141

157:                                              ; preds = %141
  %158 = load i32, i32* @QCA_MANUFACTURER_ID_BASE, align 4
  %159 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %160 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @FIELD_GET(i32 %158, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  switch i32 %163, label %168 [
    i32 129, label %164
    i32 128, label %164
  ]

164:                                              ; preds = %157, %157
  %165 = load i32, i32* @QCA9377_1_0_DEVICE_ID, align 4
  %166 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %167 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %177

168:                                              ; preds = %157
  %169 = load i32, i32* @ENODEV, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %11, align 4
  %171 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %174 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %175)
  br label %207

177:                                              ; preds = %164
  %178 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %179 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %182 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %185 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %188 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 4
  %190 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %191 = call i32 @ath10k_sdio_set_mbox_info(%struct.ath10k* %190)
  %192 = load i32, i32* @ATH10K_DEV_TYPE_HL, align 4
  %193 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %10, i32 0, i32 2
  store i32 %192, i32* %193, align 8
  %194 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %10, i32 0, i32 1
  store i64 0, i64* %194, align 8
  %195 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %10, i32 0, i32 0
  store i32 1, i32* %195, align 8
  %196 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %197 = call i32 @ath10k_core_register(%struct.ath10k* %196, %struct.ath10k_bus_params* %10)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %177
  %201 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %202 = load i32, i32* %11, align 4
  %203 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %201, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  br label %207

204:                                              ; preds = %177
  %205 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %206 = call i32 @ath10k_warn(%struct.ath10k* %205, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %216

207:                                              ; preds = %200, %168
  %208 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %209 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @destroy_workqueue(i32 %210)
  br label %212

212:                                              ; preds = %207, %137, %95, %79, %62
  %213 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %214 = call i32 @ath10k_core_destroy(%struct.ath10k* %213)
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %212, %204, %22
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ath10k* @ath10k_core_create(i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #2

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #2

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.ath10k_sdio*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @create_singlethread_workqueue(i8*) #2

declare dso_local i32 @ath10k_sdio_free_bus_req(%struct.ath10k*, i32*) #2

declare dso_local i32 @FIELD_GET(i32, i32) #2

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, ...) #2

declare dso_local i32 @ath10k_sdio_set_mbox_info(%struct.ath10k*) #2

declare dso_local i32 @ath10k_core_register(%struct.ath10k*, %struct.ath10k_bus_params*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #2

declare dso_local i32 @destroy_workqueue(i32) #2

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
