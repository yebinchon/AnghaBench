; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, %struct.hnae_queue**, i32 }
%struct.hnae_queue = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.net_device_stats = type { i32, i32, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8* }
%struct.dsaf_device = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64 }
%struct.hns_mac_cb = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.hns_ppe_cb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i8* }
%struct.hnae_vf_cb = type { i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@DSAF_PPE_INODE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*, %struct.net_device_stats*)* @hns_ae_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_update_stats(%struct.hnae_handle* %0, %struct.net_device_stats* %1) #0 {
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsaf_device*, align 8
  %8 = alloca %struct.hns_mac_cb*, align 8
  %9 = alloca %struct.hns_ppe_cb*, align 8
  %10 = alloca %struct.hnae_queue*, align 8
  %11 = alloca %struct.hnae_vf_cb*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  store %struct.net_device_stats* %1, %struct.net_device_stats** %4, align 8
  %20 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %21 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %20)
  store %struct.hnae_vf_cb* %21, %struct.hnae_vf_cb** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %22 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %23 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32 %24)
  store %struct.dsaf_device* %25, %struct.dsaf_device** %7, align 8
  %26 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %27 = icmp ne %struct.dsaf_device* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %317

29:                                               ; preds = %2
  %30 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %11, align 8
  %31 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %34 = call %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle* %33)
  store %struct.hns_ppe_cb* %34, %struct.hns_ppe_cb** %9, align 8
  %35 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %36 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %35)
  store %struct.hns_mac_cb* %36, %struct.hns_mac_cb** %8, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %100, %29
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %40 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %103

43:                                               ; preds = %37
  %44 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %45 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %44, i32 0, i32 1
  %46 = load %struct.hnae_queue**, %struct.hnae_queue*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %46, i64 %48
  %50 = load %struct.hnae_queue*, %struct.hnae_queue** %49, align 8
  store %struct.hnae_queue* %50, %struct.hnae_queue** %10, align 8
  %51 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %52 = call i32 @hns_rcb_update_stats(%struct.hnae_queue* %51)
  %53 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %54 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr i8, i8* %58, i64 %57
  store i8* %59, i8** %12, align 8
  %60 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %61 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr i8, i8* %65, i64 %64
  store i8* %66, i8** %14, align 8
  %67 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %68 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr i8, i8* %72, i64 %71
  store i8* %73, i8** %13, align 8
  %74 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %75 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr i8, i8* %79, i64 %78
  store i8* %80, i8** %15, align 8
  %81 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %82 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %87 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %85, %90
  %92 = load %struct.hnae_queue*, %struct.hnae_queue** %10, align 8
  %93 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr i8, i8* %98, i64 %97
  store i8* %99, i8** %16, align 8
  br label %100

100:                                              ; preds = %43
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %37

103:                                              ; preds = %37
  %104 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %9, align 8
  %105 = call i32 @hns_ppe_update_stats(%struct.hns_ppe_cb* %104)
  %106 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %9, align 8
  %107 = getelementptr inbounds %struct.hns_ppe_cb, %struct.hns_ppe_cb* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %19, align 8
  %110 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %9, align 8
  %111 = getelementptr inbounds %struct.hns_ppe_cb, %struct.hns_ppe_cb* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %9, align 8
  %115 = getelementptr inbounds %struct.hns_ppe_cb, %struct.hns_ppe_cb* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %113, %117
  %119 = load i8*, i8** %17, align 8
  %120 = getelementptr i8, i8* %119, i64 %118
  store i8* %120, i8** %17, align 8
  %121 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %122 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %226

126:                                              ; preds = %103
  %127 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @hns_dsaf_update_stats(%struct.dsaf_device* %127, i32 %128)
  %130 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %131 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %130, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = getelementptr i8, i8* %138, i64 %137
  store i8* %139, i8** %19, align 8
  %140 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %141 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %140, i32 0, i32 0
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = getelementptr i8, i8* %148, i64 %147
  store i8* %149, i8** %19, align 8
  %150 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %151 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %150, i32 0, i32 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i8*, i8** %19, align 8
  %159 = getelementptr i8, i8* %158, i64 %157
  store i8* %159, i8** %19, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @DSAF_PPE_INODE_BASE, align 4
  %162 = add nsw i32 %160, %161
  store i32 %162, i32* %5, align 4
  %163 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @hns_dsaf_update_stats(%struct.dsaf_device* %163, i32 %164)
  %166 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %167 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %166, i32 0, i32 0
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load i8*, i8** %18, align 8
  %175 = getelementptr i8, i8* %174, i64 %173
  store i8* %175, i8** %18, align 8
  %176 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %177 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load i8*, i8** %18, align 8
  %185 = getelementptr i8, i8* %184, i64 %183
  store i8* %185, i8** %18, align 8
  %186 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %187 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %186, i32 0, i32 0
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i8*, i8** %18, align 8
  %195 = getelementptr i8, i8* %194, i64 %193
  store i8* %195, i8** %18, align 8
  %196 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %197 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %196, i32 0, i32 0
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = getelementptr i8, i8* %204, i64 %203
  store i8* %205, i8** %18, align 8
  %206 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %207 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %206, i32 0, i32 0
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i8*, i8** %18, align 8
  %215 = getelementptr i8, i8* %214, i64 %213
  store i8* %215, i8** %18, align 8
  %216 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  %217 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %216, i32 0, i32 0
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i8*, i8** %18, align 8
  %225 = getelementptr i8, i8* %224, i64 %223
  store i8* %225, i8** %18, align 8
  br label %226

226:                                              ; preds = %126, %103
  %227 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %228 = call i32 @hns_mac_update_stats(%struct.hns_mac_cb* %227)
  %229 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %230 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i8*, i8** %16, align 8
  %234 = getelementptr i8, i8* %233, i64 %232
  store i8* %234, i8** %16, align 8
  %235 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %236 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 9
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %240 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %238, %242
  %244 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %245 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %243, %247
  %249 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %250 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %248, %252
  %254 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %255 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %253, %257
  %259 = load i8*, i8** %17, align 8
  %260 = getelementptr i8, i8* %259, i64 %258
  store i8* %260, i8** %17, align 8
  %261 = load i8*, i8** %12, align 8
  %262 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %263 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %262, i32 0, i32 13
  store i8* %261, i8** %263, align 8
  %264 = load i8*, i8** %14, align 8
  %265 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %266 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %265, i32 0, i32 12
  store i8* %264, i8** %266, align 8
  %267 = load i8*, i8** %13, align 8
  %268 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %269 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %268, i32 0, i32 11
  store i8* %267, i8** %269, align 8
  %270 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %271 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %270, i32 0, i32 10
  store i64 0, i64* %271, align 8
  %272 = load i8*, i8** %15, align 8
  %273 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %274 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %273, i32 0, i32 9
  store i8* %272, i8** %274, align 8
  %275 = load i8*, i8** %16, align 8
  %276 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %277 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %276, i32 0, i32 8
  store i8* %275, i8** %277, align 8
  %278 = load i8*, i8** %17, align 8
  %279 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %280 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %279, i32 0, i32 7
  store i8* %278, i8** %280, align 8
  %281 = load i8*, i8** %18, align 8
  %282 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %283 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %282, i32 0, i32 6
  store i8* %281, i8** %283, align 8
  %284 = load i8*, i8** %19, align 8
  %285 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %286 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %285, i32 0, i32 5
  store i8* %284, i8** %286, align 8
  %287 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %288 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %292 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 4
  %293 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %294 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %298 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %297, i32 0, i32 3
  store i32 %296, i32* %298, align 8
  %299 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %300 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %304 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %303, i32 0, i32 2
  store i64 %302, i64* %304, align 8
  %305 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %306 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %310 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %312 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %316 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  br label %317

317:                                              ; preds = %226, %28
  ret void
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32) #1

declare dso_local %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle*) #1

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_rcb_update_stats(%struct.hnae_queue*) #1

declare dso_local i32 @hns_ppe_update_stats(%struct.hns_ppe_cb*) #1

declare dso_local i32 @hns_dsaf_update_stats(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_mac_update_stats(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
