; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hns3_nic_priv = type { %struct.TYPE_10__*, i32, %struct.hnae3_handle* }
%struct.TYPE_10__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hnae3_handle = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.hnae3_handle*, %struct.TYPE_12__*)* }
%struct.TYPE_7__ = type { i32 }

@HNS3_NIC_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @hns3_nic_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.hns3_nic_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_handle*, align 8
  %8 = alloca %struct.hns3_enet_ring*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.hns3_nic_priv* %23, %struct.hns3_nic_priv** %5, align 8
  %24 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %25 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %24, i32 0, i32 2
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %25, align 8
  %27 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %31 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %30, i32 0, i32 2
  %32 = load %struct.hnae3_handle*, %struct.hnae3_handle** %31, align 8
  store %struct.hnae3_handle* %32, %struct.hnae3_handle** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %33 = load i32, i32* @HNS3_NIC_STATE_DOWN, align 4
  %34 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %35 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %34, i32 0, i32 1
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %325

39:                                               ; preds = %2
  %40 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %41 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (%struct.hnae3_handle*, %struct.TYPE_12__*)*, i32 (%struct.hnae3_handle*, %struct.TYPE_12__*)** %45, align 8
  %47 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = call i32 %46(%struct.hnae3_handle* %47, %struct.TYPE_12__* %49)
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %216, %39
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %219

55:                                               ; preds = %51
  %56 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %57 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %62, align 8
  store %struct.hns3_enet_ring* %63, %struct.hns3_enet_ring** %8, align 8
  br label %64

64:                                               ; preds = %140, %55
  %65 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %66 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %65, i32 0, i32 1
  %67 = call i32 @u64_stats_fetch_begin_irq(i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %69 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 12
  %71 = load i64, i64* %70, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr i8, i8* %72, i64 %71
  store i8* %73, i8** %16, align 8
  %74 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %75 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr i8, i8* %78, i64 %77
  store i8* %79, i8** %18, align 8
  %80 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %81 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = getelementptr i8, i8* %84, i64 %83
  store i8* %85, i8** %20, align 8
  %86 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %87 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %20, align 8
  %91 = getelementptr i8, i8* %90, i64 %89
  store i8* %91, i8** %20, align 8
  %92 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %93 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = getelementptr i8, i8* %96, i64 %95
  store i8* %97, i8** %20, align 8
  %98 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %99 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = load i8*, i8** %20, align 8
  %103 = getelementptr i8, i8* %102, i64 %101
  store i8* %103, i8** %20, align 8
  %104 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %105 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %20, align 8
  %109 = getelementptr i8, i8* %108, i64 %107
  store i8* %109, i8** %20, align 8
  %110 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %111 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr i8, i8* %114, i64 %113
  store i8* %115, i8** %13, align 8
  %116 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %117 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr i8, i8* %120, i64 %119
  store i8* %121, i8** %13, align 8
  %122 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %123 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr i8, i8* %126, i64 %125
  store i8* %127, i8** %13, align 8
  %128 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %129 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr i8, i8* %132, i64 %131
  store i8* %133, i8** %13, align 8
  %134 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %135 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr i8, i8* %138, i64 %137
  store i8* %139, i8** %13, align 8
  br label %140

140:                                              ; preds = %64
  %141 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %142 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %141, i32 0, i32 1
  %143 = load i32, i32* %12, align 4
  %144 = call i64 @u64_stats_fetch_retry_irq(i32* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %64, label %146

146:                                              ; preds = %140
  %147 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %148 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %147, i32 0, i32 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %150, %151
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %155, align 8
  store %struct.hns3_enet_ring* %156, %struct.hns3_enet_ring** %8, align 8
  br label %157

157:                                              ; preds = %209, %146
  %158 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %159 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %158, i32 0, i32 1
  %160 = call i32 @u64_stats_fetch_begin_irq(i32* %159)
  store i32 %160, i32* %12, align 4
  %161 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %162 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = load i8*, i8** %17, align 8
  %166 = getelementptr i8, i8* %165, i64 %164
  store i8* %166, i8** %17, align 8
  %167 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %168 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load i8*, i8** %19, align 8
  %172 = getelementptr i8, i8* %171, i64 %170
  store i8* %172, i8** %19, align 8
  %173 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %174 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i8*, i8** %21, align 8
  %178 = getelementptr i8, i8* %177, i64 %176
  store i8* %178, i8** %21, align 8
  %179 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %180 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = getelementptr i8, i8* %183, i64 %182
  store i8* %184, i8** %14, align 8
  %185 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %186 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = getelementptr i8, i8* %189, i64 %188
  store i8* %190, i8** %14, align 8
  %191 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %192 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = getelementptr i8, i8* %195, i64 %194
  store i8* %196, i8** %10, align 8
  %197 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %198 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = getelementptr i8, i8* %201, i64 %200
  store i8* %202, i8** %11, align 8
  %203 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %204 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr i8, i8* %207, i64 %206
  store i8* %208, i8** %9, align 8
  br label %209

209:                                              ; preds = %157
  %210 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %211 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %210, i32 0, i32 1
  %212 = load i32, i32* %12, align 4
  %213 = call i64 @u64_stats_fetch_retry_irq(i32* %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %157, label %215

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %15, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %51

219:                                              ; preds = %51
  %220 = load i8*, i8** %16, align 8
  %221 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %222 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %221, i32 0, i32 22
  store i8* %220, i8** %222, align 8
  %223 = load i8*, i8** %18, align 8
  %224 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %225 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %224, i32 0, i32 21
  store i8* %223, i8** %225, align 8
  %226 = load i8*, i8** %17, align 8
  %227 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %228 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %227, i32 0, i32 20
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** %19, align 8
  %230 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %231 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %230, i32 0, i32 19
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %234 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %233, i32 0, i32 18
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** %11, align 8
  %236 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %237 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %236, i32 0, i32 17
  store i8* %235, i8** %237, align 8
  %238 = load i8*, i8** %9, align 8
  %239 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %240 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %239, i32 0, i32 16
  store i8* %238, i8** %240, align 8
  %241 = load i8*, i8** %10, align 8
  %242 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %243 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %242, i32 0, i32 15
  store i8* %241, i8** %243, align 8
  %244 = load %struct.net_device*, %struct.net_device** %3, align 8
  %245 = getelementptr inbounds %struct.net_device, %struct.net_device* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 11
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %249 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %248, i32 0, i32 14
  store i32 %247, i32* %249, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %252 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %251, i32 0, i32 13
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** %21, align 8
  %254 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %255 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %254, i32 0, i32 12
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** %20, align 8
  %257 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %258 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %257, i32 0, i32 11
  store i8* %256, i8** %258, align 8
  %259 = load %struct.net_device*, %struct.net_device** %3, align 8
  %260 = getelementptr inbounds %struct.net_device, %struct.net_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %264 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %263, i32 0, i32 10
  store i32 %262, i32* %264, align 8
  %265 = load %struct.net_device*, %struct.net_device** %3, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %270 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %269, i32 0, i32 9
  store i32 %268, i32* %270, align 4
  %271 = load %struct.net_device*, %struct.net_device** %3, align 8
  %272 = getelementptr inbounds %struct.net_device, %struct.net_device* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %276 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %275, i32 0, i32 8
  store i32 %274, i32* %276, align 8
  %277 = load %struct.net_device*, %struct.net_device** %3, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %282 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %281, i32 0, i32 7
  store i32 %280, i32* %282, align 4
  %283 = load %struct.net_device*, %struct.net_device** %3, align 8
  %284 = getelementptr inbounds %struct.net_device, %struct.net_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %288 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %287, i32 0, i32 6
  store i32 %286, i32* %288, align 8
  %289 = load %struct.net_device*, %struct.net_device** %3, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %294 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %293, i32 0, i32 5
  store i32 %292, i32* %294, align 4
  %295 = load %struct.net_device*, %struct.net_device** %3, align 8
  %296 = getelementptr inbounds %struct.net_device, %struct.net_device* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %300 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %299, i32 0, i32 4
  store i32 %298, i32* %300, align 8
  %301 = load %struct.net_device*, %struct.net_device** %3, align 8
  %302 = getelementptr inbounds %struct.net_device, %struct.net_device* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %306 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 4
  %307 = load %struct.net_device*, %struct.net_device** %3, align 8
  %308 = getelementptr inbounds %struct.net_device, %struct.net_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %312 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 8
  %313 = load %struct.net_device*, %struct.net_device** %3, align 8
  %314 = getelementptr inbounds %struct.net_device, %struct.net_device* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %318 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %317, i32 0, i32 1
  store i32 %316, i32* %318, align 4
  %319 = load %struct.net_device*, %struct.net_device** %3, align 8
  %320 = getelementptr inbounds %struct.net_device, %struct.net_device* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %324 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 8
  br label %325

325:                                              ; preds = %219, %38
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
