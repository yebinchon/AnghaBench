; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @hns_nic_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hns_nic_priv*, align 8
  %11 = alloca %struct.hnae_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.hns_nic_priv* %13, %struct.hns_nic_priv** %10, align 8
  %14 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %10, align 8
  %15 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %14, i32 0, i32 0
  %16 = load %struct.hnae_handle*, %struct.hnae_handle** %15, align 8
  store %struct.hnae_handle* %16, %struct.hnae_handle** %11, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %76, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %20 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %25 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %26, i64 %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr i8, i8* %35, i64 %34
  store i8* %36, i8** %6, align 8
  %37 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %38 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr i8, i8* %48, i64 %47
  store i8* %49, i8** %8, align 8
  %50 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %51 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %52, i64 %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr i8, i8* %61, i64 %60
  store i8* %62, i8** %7, align 8
  %63 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %64 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %65, i64 %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr i8, i8* %74, i64 %73
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %23
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %17

79:                                               ; preds = %17
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %82 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %81, i32 0, i32 22
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %84, i32 0, i32 21
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %88 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %87, i32 0, i32 20
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %91 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %90, i32 0, i32 19
  store i8* %89, i8** %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 18
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %97 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %96, i32 0, i32 18
  store i32 %95, i32* %97, align 8
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 17
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %103 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %102, i32 0, i32 17
  store i32 %101, i32* %103, align 4
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %109 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %108, i32 0, i32 16
  store i32 %107, i32* %109, align 8
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %115 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %114, i32 0, i32 15
  store i32 %113, i32* %115, align 4
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 14
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %121 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %120, i32 0, i32 14
  store i32 %119, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %127 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %126, i32 0, i32 13
  store i32 %125, i32* %127, align 4
  %128 = load %struct.net_device*, %struct.net_device** %3, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %133 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %132, i32 0, i32 12
  store i32 %131, i32* %133, align 8
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %139 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 4
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %145 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %144, i32 0, i32 10
  store i32 %143, i32* %145, align 8
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %151 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load %struct.net_device*, %struct.net_device** %3, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %157 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 8
  %158 = load %struct.net_device*, %struct.net_device** %3, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %163 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %169 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load %struct.net_device*, %struct.net_device** %3, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %175 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load %struct.net_device*, %struct.net_device** %3, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %181 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.net_device*, %struct.net_device** %3, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %187 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.net_device*, %struct.net_device** %3, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %193 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load %struct.net_device*, %struct.net_device** %3, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %199 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.net_device*, %struct.net_device** %3, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %205 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
