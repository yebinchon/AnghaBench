; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.hnae_queue**, i32, %struct.hnae_ae_dev*, i32 }
%struct.hnae_queue = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.hnae_queue* }
%struct.TYPE_4__ = type { %struct.hnae_queue* }
%struct.hnae_ae_dev = type { i32 }
%struct.dsaf_device = type { %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.ring_pair_cb = type { i32, %struct.hnae_queue }
%struct.hnae_vf_cb = type { i64, %struct.TYPE_6__*, %struct.dsaf_device*, %struct.hnae_handle }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc vf_cb fail!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HNAE_LOWEST_LATENCY_COAL_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"malloc queue fail!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hnae_handle* (%struct.hnae_ae_dev*, i64)* @hns_ae_get_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hnae_handle* @hns_ae_get_handle(%struct.hnae_ae_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca %struct.hnae_ae_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dsaf_device*, align 8
  %10 = alloca %struct.hnae_handle*, align 8
  %11 = alloca %struct.ring_pair_cb*, align 8
  %12 = alloca %struct.hnae_vf_cb*, align 8
  store %struct.hnae_ae_dev* %0, %struct.hnae_ae_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %4, align 8
  %14 = call %struct.dsaf_device* @hns_ae_get_dsaf_dev(%struct.hnae_ae_dev* %13)
  store %struct.dsaf_device* %14, %struct.dsaf_device** %9, align 8
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.ring_pair_cb* @hns_ae_get_base_ring_pair(%struct.dsaf_device* %15, i64 %16)
  store %struct.ring_pair_cb* %17, %struct.ring_pair_cb** %11, align 8
  %18 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @hns_ae_get_vf_num_per_port(%struct.dsaf_device* %18, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @hns_ae_get_q_num_per_vf(%struct.dsaf_device* %21, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = add i64 96, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.hnae_vf_cb* @kzalloc(i32 %28, i32 %29)
  store %struct.hnae_vf_cb* %30, %struct.hnae_vf_cb** %12, align 8
  %31 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %32 = icmp ne %struct.hnae_vf_cb* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %39 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.hnae_handle* @ERR_PTR(i32 %43)
  store %struct.hnae_handle* %44, %struct.hnae_handle** %10, align 8
  br label %216

45:                                               ; preds = %2
  %46 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %47 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %46, i32 0, i32 3
  store %struct.hnae_handle* %47, %struct.hnae_handle** %10, align 8
  %48 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %49 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %52 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %4, align 8
  %54 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %55 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %54, i32 0, i32 10
  store %struct.hnae_ae_dev* %53, %struct.hnae_ae_dev** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %58 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @HNAE_LOWEST_LATENCY_COAL_PARAM, align 4
  %60 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %61 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %63 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %81, %45
  %65 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %66 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %11, align 8
  %72 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %86

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %11, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %78, i64 %79
  store %struct.ring_pair_cb* %80, %struct.ring_pair_cb** %11, align 8
  br label %81

81:                                               ; preds = %76
  %82 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %83 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %64

86:                                               ; preds = %75, %64
  %87 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %88 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %94 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  %99 = call %struct.hnae_handle* @ERR_PTR(i32 %98)
  store %struct.hnae_handle* %99, %struct.hnae_handle** %10, align 8
  br label %213

100:                                              ; preds = %86
  %101 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %102 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.hnae_queue**, %struct.hnae_queue*** %102, i64 1
  %104 = bitcast %struct.hnae_queue*** %103 to %struct.hnae_queue**
  %105 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %106 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %105, i32 0, i32 8
  store %struct.hnae_queue** %104, %struct.hnae_queue*** %106, align 8
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %156, %100
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %159

111:                                              ; preds = %107
  %112 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %11, align 8
  %113 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %112, i32 0, i32 1
  %114 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %115 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %114, i32 0, i32 8
  %116 = load %struct.hnae_queue**, %struct.hnae_queue*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %116, i64 %118
  store %struct.hnae_queue* %113, %struct.hnae_queue** %119, align 8
  %120 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %121 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %120, i32 0, i32 8
  %122 = load %struct.hnae_queue**, %struct.hnae_queue*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %122, i64 %124
  %126 = load %struct.hnae_queue*, %struct.hnae_queue** %125, align 8
  %127 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %128 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %127, i32 0, i32 8
  %129 = load %struct.hnae_queue**, %struct.hnae_queue*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %129, i64 %131
  %133 = load %struct.hnae_queue*, %struct.hnae_queue** %132, align 8
  %134 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store %struct.hnae_queue* %126, %struct.hnae_queue** %135, align 8
  %136 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %137 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %136, i32 0, i32 8
  %138 = load %struct.hnae_queue**, %struct.hnae_queue*** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %138, i64 %140
  %142 = load %struct.hnae_queue*, %struct.hnae_queue** %141, align 8
  %143 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %144 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %143, i32 0, i32 8
  %145 = load %struct.hnae_queue**, %struct.hnae_queue*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %145, i64 %147
  %149 = load %struct.hnae_queue*, %struct.hnae_queue** %148, align 8
  %150 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store %struct.hnae_queue* %142, %struct.hnae_queue** %151, align 8
  %152 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %11, align 8
  %153 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load %struct.ring_pair_cb*, %struct.ring_pair_cb** %11, align 8
  %155 = getelementptr inbounds %struct.ring_pair_cb, %struct.ring_pair_cb* %154, i32 1
  store %struct.ring_pair_cb* %155, %struct.ring_pair_cb** %11, align 8
  br label %156

156:                                              ; preds = %111
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %107

159:                                              ; preds = %107
  %160 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %161 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %162 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %161, i32 0, i32 2
  store %struct.dsaf_device* %160, %struct.dsaf_device** %162, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %165 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load %struct.dsaf_device*, %struct.dsaf_device** %9, align 8
  %167 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %167, align 8
  %169 = load i64, i64* %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %168, i64 %169
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %173 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %172, i32 0, i32 1
  store %struct.TYPE_6__* %171, %struct.TYPE_6__** %173, align 8
  %174 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %175 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %180 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 8
  %181 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %182 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %187 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  %188 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %189 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %188, i32 0, i32 1
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %194 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  %195 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %196 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %195, i32 0, i32 1
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %201 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  %202 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %203 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %202, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %208 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  %209 = load i64, i64* %5, align 8
  %210 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %211 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  store %struct.hnae_handle* %212, %struct.hnae_handle** %3, align 8
  br label %218

213:                                              ; preds = %92
  %214 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %12, align 8
  %215 = call i32 @kfree(%struct.hnae_vf_cb* %214)
  br label %216

216:                                              ; preds = %213, %37
  %217 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  store %struct.hnae_handle* %217, %struct.hnae_handle** %3, align 8
  br label %218

218:                                              ; preds = %216, %159
  %219 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  ret %struct.hnae_handle* %219
}

declare dso_local %struct.dsaf_device* @hns_ae_get_dsaf_dev(%struct.hnae_ae_dev*) #1

declare dso_local %struct.ring_pair_cb* @hns_ae_get_base_ring_pair(%struct.dsaf_device*, i64) #1

declare dso_local i32 @hns_ae_get_vf_num_per_port(%struct.dsaf_device*, i64) #1

declare dso_local i32 @hns_ae_get_q_num_per_vf(%struct.dsaf_device*, i64) #1

declare dso_local %struct.hnae_vf_cb* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.hnae_handle* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.hnae_vf_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
