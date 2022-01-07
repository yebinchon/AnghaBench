; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.net_device*, %struct.rtnl_link_stats64*)* }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_stats = type { i32 }
%struct.lio = type { i64, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_18__**, %struct.TYPE_16__, %struct.TYPE_15__**, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@LIO_IFSTATE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @lio_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.lio*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca %struct.rtnl_link_stats64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.lio* @GET_LIO(%struct.net_device* %12)
  store %struct.lio* %13, %struct.lio** %7, align 8
  %14 = load %struct.lio*, %struct.lio** %7, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 1
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.lio*, %struct.lio** %7, align 8
  %18 = load i32, i32* @LIO_IFSTATE_RESETTING, align 4
  %19 = call i64 @ifstate_check(%struct.lio* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %1216

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32 (%struct.net_device*, %struct.rtnl_link_stats64*)*, i32 (%struct.net_device*, %struct.rtnl_link_stats64*)** %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 %27(%struct.net_device* %28, %struct.rtnl_link_stats64* %9)
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64 %31, i64* %36, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64 %38, i64* %43, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %45, i64* %50, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %52, i64* %57, align 8
  %58 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %59, %64
  %66 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %67 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 25
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %65, %70
  %72 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %73 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 24
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %71, %76
  %78 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %79 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 23
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %77, %82
  %84 = load i64*, i64** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 %83, i64* %88, align 8
  %89 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  store i64 %90, i64* %95, align 8
  %96 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %99 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %105 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %103, %108
  %110 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %111 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 30
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %117 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 22
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %115, %120
  %122 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %123 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 21
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %121, %126
  %128 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %129 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 20
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %127, %132
  %134 = load i64*, i64** %6, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  store i64 %133, i64* %138, align 8
  %139 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %9, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %142 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %140, %145
  %147 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %148 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %146, %151
  %153 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %154 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %152, %157
  %159 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %160 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 21
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %158, %163
  %165 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %166 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 19
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %164, %169
  %171 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %172 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 18
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %170, %175
  %177 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %178 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 20
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %176, %181
  %183 = load i64*, i64** %6, align 8
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  store i64 %182, i64* %187, align 8
  %188 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 23
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @CVM_CAST64(i64 %192)
  %194 = load i64*, i64** %6, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i64, i64* %194, i64 %197
  store i64 %193, i64* %198, align 8
  %199 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %200 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 22
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @CVM_CAST64(i64 %203)
  %205 = load i64*, i64** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i64, i64* %205, i64 %208
  store i64 %204, i64* %209, align 8
  %210 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %211 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 21
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @CVM_CAST64(i64 %214)
  %216 = load i64*, i64** %6, align 8
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i64, i64* %216, i64 %219
  store i64 %215, i64* %220, align 8
  %221 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %222 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 20
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @CVM_CAST64(i64 %225)
  %227 = load i64*, i64** %6, align 8
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i64, i64* %227, i64 %230
  store i64 %226, i64* %231, align 8
  %232 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %233 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 19
  %236 = load i64, i64* %235, align 8
  %237 = call i64 @CVM_CAST64(i64 %236)
  %238 = load i64*, i64** %6, align 8
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i64, i64* %238, i64 %241
  store i64 %237, i64* %242, align 8
  %243 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %244 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 18
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @CVM_CAST64(i64 %247)
  %249 = load i64*, i64** %6, align 8
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i64, i64* %249, i64 %252
  store i64 %248, i64* %253, align 8
  %254 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %255 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 17
  %258 = load i64, i64* %257, align 8
  %259 = call i64 @CVM_CAST64(i64 %258)
  %260 = load i64*, i64** %6, align 8
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %10, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i64, i64* %260, i64 %263
  store i64 %259, i64* %264, align 8
  %265 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %266 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 16
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @CVM_CAST64(i64 %269)
  %271 = load i64*, i64** %6, align 8
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i64, i64* %271, i64 %274
  store i64 %270, i64* %275, align 8
  %276 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %277 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 15
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @CVM_CAST64(i64 %280)
  %282 = load i64*, i64** %6, align 8
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %10, align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i64, i64* %282, i64 %285
  store i64 %281, i64* %286, align 8
  %287 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %288 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 14
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @CVM_CAST64(i64 %291)
  %293 = load i64*, i64** %6, align 8
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i64, i64* %293, i64 %296
  store i64 %292, i64* %297, align 8
  %298 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %299 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 13
  %302 = load i64, i64* %301, align 8
  %303 = load i64*, i64** %6, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %10, align 4
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i64, i64* %303, i64 %306
  store i64 %302, i64* %307, align 8
  %308 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %309 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 12
  %312 = load i64, i64* %311, align 8
  %313 = load i64*, i64** %6, align 8
  %314 = load i32, i32* %10, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %10, align 4
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i64, i64* %313, i64 %316
  store i64 %312, i64* %317, align 8
  %318 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %319 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 11
  %322 = load i64, i64* %321, align 8
  %323 = call i64 @CVM_CAST64(i64 %322)
  %324 = load i64*, i64** %6, align 8
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %10, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i64, i64* %324, i64 %327
  store i64 %323, i64* %328, align 8
  %329 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %330 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 10
  %333 = load i64, i64* %332, align 8
  %334 = call i64 @CVM_CAST64(i64 %333)
  %335 = load i64*, i64** %6, align 8
  %336 = load i32, i32* %10, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %10, align 4
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds i64, i64* %335, i64 %338
  store i64 %334, i64* %339, align 8
  %340 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %341 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 9
  %344 = load i64, i64* %343, align 8
  %345 = call i64 @CVM_CAST64(i64 %344)
  %346 = load i64*, i64** %6, align 8
  %347 = load i32, i32* %10, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %10, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i64, i64* %346, i64 %349
  store i64 %345, i64* %350, align 8
  %351 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %352 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 8
  %355 = load i64, i64* %354, align 8
  %356 = call i64 @CVM_CAST64(i64 %355)
  %357 = load i64*, i64** %6, align 8
  %358 = load i32, i32* %10, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %10, align 4
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i64, i64* %357, i64 %360
  store i64 %356, i64* %361, align 8
  %362 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %363 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 7
  %366 = load i64, i64* %365, align 8
  %367 = call i64 @CVM_CAST64(i64 %366)
  %368 = load i64*, i64** %6, align 8
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %10, align 4
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i64, i64* %368, i64 %371
  store i64 %367, i64* %372, align 8
  %373 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %374 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 6
  %377 = load i64, i64* %376, align 8
  %378 = call i64 @CVM_CAST64(i64 %377)
  %379 = load i64*, i64** %6, align 8
  %380 = load i32, i32* %10, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %10, align 4
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i64, i64* %379, i64 %382
  store i64 %378, i64* %383, align 8
  %384 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %385 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 5
  %388 = load i64, i64* %387, align 8
  %389 = call i64 @CVM_CAST64(i64 %388)
  %390 = load i64*, i64** %6, align 8
  %391 = load i32, i32* %10, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %10, align 4
  %393 = sext i32 %391 to i64
  %394 = getelementptr inbounds i64, i64* %390, i64 %393
  store i64 %389, i64* %394, align 8
  %395 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %396 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 4
  %399 = load i64, i64* %398, align 8
  %400 = call i64 @CVM_CAST64(i64 %399)
  %401 = load i64*, i64** %6, align 8
  %402 = load i32, i32* %10, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %10, align 4
  %404 = sext i32 %402 to i64
  %405 = getelementptr inbounds i64, i64* %401, i64 %404
  store i64 %400, i64* %405, align 8
  %406 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %407 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = call i64 @CVM_CAST64(i64 %410)
  %412 = load i64*, i64** %6, align 8
  %413 = load i32, i32* %10, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %10, align 4
  %415 = sext i32 %413 to i64
  %416 = getelementptr inbounds i64, i64* %412, i64 %415
  store i64 %411, i64* %416, align 8
  %417 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %418 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %417, i32 0, i32 3
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = call i64 @CVM_CAST64(i64 %421)
  %423 = load i64*, i64** %6, align 8
  %424 = load i32, i32* %10, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %10, align 4
  %426 = sext i32 %424 to i64
  %427 = getelementptr inbounds i64, i64* %423, i64 %426
  store i64 %422, i64* %427, align 8
  %428 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %429 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %428, i32 0, i32 3
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = call i64 @CVM_CAST64(i64 %432)
  %434 = load i64*, i64** %6, align 8
  %435 = load i32, i32* %10, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %10, align 4
  %437 = sext i32 %435 to i64
  %438 = getelementptr inbounds i64, i64* %434, i64 %437
  store i64 %433, i64* %438, align 8
  %439 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %440 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %439, i32 0, i32 3
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = call i64 @CVM_CAST64(i64 %443)
  %445 = load i64*, i64** %6, align 8
  %446 = load i32, i32* %10, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %10, align 4
  %448 = sext i32 %446 to i64
  %449 = getelementptr inbounds i64, i64* %445, i64 %448
  store i64 %444, i64* %449, align 8
  %450 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %451 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %450, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %452, i32 0, i32 29
  %454 = load i64, i64* %453, align 8
  %455 = call i64 @CVM_CAST64(i64 %454)
  %456 = load i64*, i64** %6, align 8
  %457 = load i32, i32* %10, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %10, align 4
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i64, i64* %456, i64 %459
  store i64 %455, i64* %460, align 8
  %461 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %462 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 28
  %465 = load i64, i64* %464, align 8
  %466 = call i64 @CVM_CAST64(i64 %465)
  %467 = load i64*, i64** %6, align 8
  %468 = load i32, i32* %10, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %10, align 4
  %470 = sext i32 %468 to i64
  %471 = getelementptr inbounds i64, i64* %467, i64 %470
  store i64 %466, i64* %471, align 8
  %472 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %473 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %472, i32 0, i32 3
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 27
  %476 = load i64, i64* %475, align 8
  %477 = load i64*, i64** %6, align 8
  %478 = load i32, i32* %10, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %10, align 4
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds i64, i64* %477, i64 %480
  store i64 %476, i64* %481, align 8
  %482 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %483 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %482, i32 0, i32 3
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 26
  %486 = load i64, i64* %485, align 8
  %487 = load i64*, i64** %6, align 8
  %488 = load i32, i32* %10, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %10, align 4
  %490 = sext i32 %488 to i64
  %491 = getelementptr inbounds i64, i64* %487, i64 %490
  store i64 %486, i64* %491, align 8
  %492 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %493 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %492, i32 0, i32 3
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 25
  %496 = load i64, i64* %495, align 8
  %497 = call i64 @CVM_CAST64(i64 %496)
  %498 = load i64*, i64** %6, align 8
  %499 = load i32, i32* %10, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %10, align 4
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i64, i64* %498, i64 %501
  store i64 %497, i64* %502, align 8
  %503 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %504 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 24
  %507 = load i64, i64* %506, align 8
  %508 = call i64 @CVM_CAST64(i64 %507)
  %509 = load i64*, i64** %6, align 8
  %510 = load i32, i32* %10, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %10, align 4
  %512 = sext i32 %510 to i64
  %513 = getelementptr inbounds i64, i64* %509, i64 %512
  store i64 %508, i64* %513, align 8
  %514 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %515 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %514, i32 0, i32 3
  %516 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 23
  %518 = load i64, i64* %517, align 8
  %519 = call i64 @CVM_CAST64(i64 %518)
  %520 = load i64*, i64** %6, align 8
  %521 = load i32, i32* %10, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %10, align 4
  %523 = sext i32 %521 to i64
  %524 = getelementptr inbounds i64, i64* %520, i64 %523
  store i64 %519, i64* %524, align 8
  %525 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %526 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %525, i32 0, i32 3
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 22
  %529 = load i64, i64* %528, align 8
  %530 = call i64 @CVM_CAST64(i64 %529)
  %531 = load i64*, i64** %6, align 8
  %532 = load i32, i32* %10, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %10, align 4
  %534 = sext i32 %532 to i64
  %535 = getelementptr inbounds i64, i64* %531, i64 %534
  store i64 %530, i64* %535, align 8
  %536 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %537 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %536, i32 0, i32 3
  %538 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %538, i32 0, i32 21
  %540 = load i64, i64* %539, align 8
  %541 = call i64 @CVM_CAST64(i64 %540)
  %542 = load i64*, i64** %6, align 8
  %543 = load i32, i32* %10, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %10, align 4
  %545 = sext i32 %543 to i64
  %546 = getelementptr inbounds i64, i64* %542, i64 %545
  store i64 %541, i64* %546, align 8
  %547 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %548 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %547, i32 0, i32 3
  %549 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %549, i32 0, i32 20
  %551 = load i64, i64* %550, align 8
  %552 = call i64 @CVM_CAST64(i64 %551)
  %553 = load i64*, i64** %6, align 8
  %554 = load i32, i32* %10, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %10, align 4
  %556 = sext i32 %554 to i64
  %557 = getelementptr inbounds i64, i64* %553, i64 %556
  store i64 %552, i64* %557, align 8
  %558 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %559 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %558, i32 0, i32 3
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %560, i32 0, i32 19
  %562 = load i64, i64* %561, align 8
  %563 = call i64 @CVM_CAST64(i64 %562)
  %564 = load i64*, i64** %6, align 8
  %565 = load i32, i32* %10, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %10, align 4
  %567 = sext i32 %565 to i64
  %568 = getelementptr inbounds i64, i64* %564, i64 %567
  store i64 %563, i64* %568, align 8
  %569 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %570 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %569, i32 0, i32 3
  %571 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %571, i32 0, i32 18
  %573 = load i64, i64* %572, align 8
  %574 = call i64 @CVM_CAST64(i64 %573)
  %575 = load i64*, i64** %6, align 8
  %576 = load i32, i32* %10, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %10, align 4
  %578 = sext i32 %576 to i64
  %579 = getelementptr inbounds i64, i64* %575, i64 %578
  store i64 %574, i64* %579, align 8
  %580 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %581 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %580, i32 0, i32 3
  %582 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %582, i32 0, i32 17
  %584 = load i64, i64* %583, align 8
  %585 = call i64 @CVM_CAST64(i64 %584)
  %586 = load i64*, i64** %6, align 8
  %587 = load i32, i32* %10, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %10, align 4
  %589 = sext i32 %587 to i64
  %590 = getelementptr inbounds i64, i64* %586, i64 %589
  store i64 %585, i64* %590, align 8
  %591 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %592 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %591, i32 0, i32 3
  %593 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %593, i32 0, i32 16
  %595 = load i64, i64* %594, align 8
  %596 = call i64 @CVM_CAST64(i64 %595)
  %597 = load i64*, i64** %6, align 8
  %598 = load i32, i32* %10, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %10, align 4
  %600 = sext i32 %598 to i64
  %601 = getelementptr inbounds i64, i64* %597, i64 %600
  store i64 %596, i64* %601, align 8
  %602 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %603 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %602, i32 0, i32 3
  %604 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %604, i32 0, i32 15
  %606 = load i64, i64* %605, align 8
  %607 = call i64 @CVM_CAST64(i64 %606)
  %608 = load i64*, i64** %6, align 8
  %609 = load i32, i32* %10, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %10, align 4
  %611 = sext i32 %609 to i64
  %612 = getelementptr inbounds i64, i64* %608, i64 %611
  store i64 %607, i64* %612, align 8
  %613 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %614 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %613, i32 0, i32 3
  %615 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %615, i32 0, i32 14
  %617 = load i64, i64* %616, align 8
  %618 = call i64 @CVM_CAST64(i64 %617)
  %619 = load i64*, i64** %6, align 8
  %620 = load i32, i32* %10, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %10, align 4
  %622 = sext i32 %620 to i64
  %623 = getelementptr inbounds i64, i64* %619, i64 %622
  store i64 %618, i64* %623, align 8
  %624 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %625 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %624, i32 0, i32 3
  %626 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %626, i32 0, i32 13
  %628 = load i64, i64* %627, align 8
  %629 = call i64 @CVM_CAST64(i64 %628)
  %630 = load i64*, i64** %6, align 8
  %631 = load i32, i32* %10, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %10, align 4
  %633 = sext i32 %631 to i64
  %634 = getelementptr inbounds i64, i64* %630, i64 %633
  store i64 %629, i64* %634, align 8
  %635 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %636 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %635, i32 0, i32 3
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %637, i32 0, i32 12
  %639 = load i64, i64* %638, align 8
  %640 = call i64 @CVM_CAST64(i64 %639)
  %641 = load i64*, i64** %6, align 8
  %642 = load i32, i32* %10, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %10, align 4
  %644 = sext i32 %642 to i64
  %645 = getelementptr inbounds i64, i64* %641, i64 %644
  store i64 %640, i64* %645, align 8
  %646 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %647 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %648, i32 0, i32 11
  %650 = load i64, i64* %649, align 8
  %651 = call i64 @CVM_CAST64(i64 %650)
  %652 = load i64*, i64** %6, align 8
  %653 = load i32, i32* %10, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %10, align 4
  %655 = sext i32 %653 to i64
  %656 = getelementptr inbounds i64, i64* %652, i64 %655
  store i64 %651, i64* %656, align 8
  %657 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %658 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %657, i32 0, i32 3
  %659 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %659, i32 0, i32 10
  %661 = load i64, i64* %660, align 8
  %662 = call i64 @CVM_CAST64(i64 %661)
  %663 = load i64*, i64** %6, align 8
  %664 = load i32, i32* %10, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %10, align 4
  %666 = sext i32 %664 to i64
  %667 = getelementptr inbounds i64, i64* %663, i64 %666
  store i64 %662, i64* %667, align 8
  %668 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %669 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %668, i32 0, i32 3
  %670 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %669, i32 0, i32 0
  %671 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %670, i32 0, i32 9
  %672 = load i64, i64* %671, align 8
  %673 = call i64 @CVM_CAST64(i64 %672)
  %674 = load i64*, i64** %6, align 8
  %675 = load i32, i32* %10, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %10, align 4
  %677 = sext i32 %675 to i64
  %678 = getelementptr inbounds i64, i64* %674, i64 %677
  store i64 %673, i64* %678, align 8
  %679 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %680 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %679, i32 0, i32 3
  %681 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %680, i32 0, i32 0
  %682 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %681, i32 0, i32 8
  %683 = load i64, i64* %682, align 8
  %684 = call i64 @CVM_CAST64(i64 %683)
  %685 = load i64*, i64** %6, align 8
  %686 = load i32, i32* %10, align 4
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %10, align 4
  %688 = sext i32 %686 to i64
  %689 = getelementptr inbounds i64, i64* %685, i64 %688
  store i64 %684, i64* %689, align 8
  %690 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %691 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %690, i32 0, i32 3
  %692 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %692, i32 0, i32 7
  %694 = load i64, i64* %693, align 8
  %695 = call i64 @CVM_CAST64(i64 %694)
  %696 = load i64*, i64** %6, align 8
  %697 = load i32, i32* %10, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, i32* %10, align 4
  %699 = sext i32 %697 to i64
  %700 = getelementptr inbounds i64, i64* %696, i64 %699
  store i64 %695, i64* %700, align 8
  %701 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %702 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %701, i32 0, i32 3
  %703 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %702, i32 0, i32 0
  %704 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %703, i32 0, i32 6
  %705 = load i64, i64* %704, align 8
  %706 = call i64 @CVM_CAST64(i64 %705)
  %707 = load i64*, i64** %6, align 8
  %708 = load i32, i32* %10, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %10, align 4
  %710 = sext i32 %708 to i64
  %711 = getelementptr inbounds i64, i64* %707, i64 %710
  store i64 %706, i64* %711, align 8
  %712 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %713 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %712, i32 0, i32 3
  %714 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %714, i32 0, i32 5
  %716 = load i64, i64* %715, align 8
  %717 = call i64 @CVM_CAST64(i64 %716)
  %718 = load i64*, i64** %6, align 8
  %719 = load i32, i32* %10, align 4
  %720 = add nsw i32 %719, 1
  store i32 %720, i32* %10, align 4
  %721 = sext i32 %719 to i64
  %722 = getelementptr inbounds i64, i64* %718, i64 %721
  store i64 %717, i64* %722, align 8
  %723 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %724 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %723, i32 0, i32 3
  %725 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %724, i32 0, i32 0
  %726 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %725, i32 0, i32 4
  %727 = load i64, i64* %726, align 8
  %728 = call i64 @CVM_CAST64(i64 %727)
  %729 = load i64*, i64** %6, align 8
  %730 = load i32, i32* %10, align 4
  %731 = add nsw i32 %730, 1
  store i32 %731, i32* %10, align 4
  %732 = sext i32 %730 to i64
  %733 = getelementptr inbounds i64, i64* %729, i64 %732
  store i64 %728, i64* %733, align 8
  %734 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %735 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %734, i32 0, i32 3
  %736 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %736, i32 0, i32 3
  %738 = load i64, i64* %737, align 8
  %739 = call i64 @CVM_CAST64(i64 %738)
  %740 = load i64*, i64** %6, align 8
  %741 = load i32, i32* %10, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %10, align 4
  %743 = sext i32 %741 to i64
  %744 = getelementptr inbounds i64, i64* %740, i64 %743
  store i64 %739, i64* %744, align 8
  %745 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %746 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %745, i32 0, i32 3
  %747 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %746, i32 0, i32 0
  %748 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %747, i32 0, i32 2
  %749 = load i64, i64* %748, align 8
  %750 = call i64 @CVM_CAST64(i64 %749)
  %751 = load i64*, i64** %6, align 8
  %752 = load i32, i32* %10, align 4
  %753 = add nsw i32 %752, 1
  store i32 %753, i32* %10, align 4
  %754 = sext i32 %752 to i64
  %755 = getelementptr inbounds i64, i64* %751, i64 %754
  store i64 %750, i64* %755, align 8
  %756 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %757 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %756, i32 0, i32 3
  %758 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %757, i32 0, i32 0
  %759 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %758, i32 0, i32 1
  %760 = load i64, i64* %759, align 8
  %761 = call i64 @CVM_CAST64(i64 %760)
  %762 = load i64*, i64** %6, align 8
  %763 = load i32, i32* %10, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %10, align 4
  %765 = sext i32 %763 to i64
  %766 = getelementptr inbounds i64, i64* %762, i64 %765
  store i64 %761, i64* %766, align 8
  %767 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %768 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %767, i32 0, i32 3
  %769 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %768, i32 0, i32 0
  %770 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %769, i32 0, i32 0
  %771 = load i64, i64* %770, align 8
  %772 = call i64 @CVM_CAST64(i64 %771)
  %773 = load i64*, i64** %6, align 8
  %774 = load i32, i32* %10, align 4
  %775 = add nsw i32 %774, 1
  store i32 %775, i32* %10, align 4
  %776 = sext i32 %774 to i64
  %777 = getelementptr inbounds i64, i64* %773, i64 %776
  store i64 %772, i64* %777, align 8
  %778 = load %struct.lio*, %struct.lio** %7, align 8
  %779 = getelementptr inbounds %struct.lio, %struct.lio* %778, i32 0, i32 0
  %780 = load i64, i64* %779, align 8
  %781 = call i64 @CVM_CAST64(i64 %780)
  %782 = load i64*, i64** %6, align 8
  %783 = load i32, i32* %10, align 4
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %10, align 4
  %785 = sext i32 %783 to i64
  %786 = getelementptr inbounds i64, i64* %782, i64 %785
  store i64 %781, i64* %786, align 8
  store i32 0, i32* %11, align 4
  br label %787

787:                                              ; preds = %995, %22
  %788 = load i32, i32* %11, align 4
  %789 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %790 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %789)
  %791 = icmp slt i32 %788, %790
  br i1 %791, label %792, label %998

792:                                              ; preds = %787
  %793 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %794 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 8
  %797 = load i32, i32* %11, align 4
  %798 = call i32 @BIT_ULL(i32 %797)
  %799 = and i32 %796, %798
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %802, label %801

801:                                              ; preds = %792
  br label %995

802:                                              ; preds = %792
  %803 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %804 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %803, i32 0, i32 2
  %805 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %804, align 8
  %806 = load i32, i32* %11, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %805, i64 %807
  %809 = load %struct.TYPE_15__*, %struct.TYPE_15__** %808, align 8
  %810 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %809, i32 0, i32 0
  %811 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %810, i32 0, i32 11
  %812 = load i64, i64* %811, align 8
  %813 = call i64 @CVM_CAST64(i64 %812)
  %814 = load i64*, i64** %6, align 8
  %815 = load i32, i32* %10, align 4
  %816 = add nsw i32 %815, 1
  store i32 %816, i32* %10, align 4
  %817 = sext i32 %815 to i64
  %818 = getelementptr inbounds i64, i64* %814, i64 %817
  store i64 %813, i64* %818, align 8
  %819 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %820 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %819, i32 0, i32 2
  %821 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %820, align 8
  %822 = load i32, i32* %11, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %821, i64 %823
  %825 = load %struct.TYPE_15__*, %struct.TYPE_15__** %824, align 8
  %826 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %825, i32 0, i32 0
  %827 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %826, i32 0, i32 10
  %828 = load i64, i64* %827, align 8
  %829 = call i64 @CVM_CAST64(i64 %828)
  %830 = load i64*, i64** %6, align 8
  %831 = load i32, i32* %10, align 4
  %832 = add nsw i32 %831, 1
  store i32 %832, i32* %10, align 4
  %833 = sext i32 %831 to i64
  %834 = getelementptr inbounds i64, i64* %830, i64 %833
  store i64 %829, i64* %834, align 8
  %835 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %836 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %835, i32 0, i32 2
  %837 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %836, align 8
  %838 = load i32, i32* %11, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %837, i64 %839
  %841 = load %struct.TYPE_15__*, %struct.TYPE_15__** %840, align 8
  %842 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %841, i32 0, i32 0
  %843 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %842, i32 0, i32 9
  %844 = load i64, i64* %843, align 8
  %845 = call i64 @CVM_CAST64(i64 %844)
  %846 = load i64*, i64** %6, align 8
  %847 = load i32, i32* %10, align 4
  %848 = add nsw i32 %847, 1
  store i32 %848, i32* %10, align 4
  %849 = sext i32 %847 to i64
  %850 = getelementptr inbounds i64, i64* %846, i64 %849
  store i64 %845, i64* %850, align 8
  %851 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %852 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %851, i32 0, i32 2
  %853 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %852, align 8
  %854 = load i32, i32* %11, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %853, i64 %855
  %857 = load %struct.TYPE_15__*, %struct.TYPE_15__** %856, align 8
  %858 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %857, i32 0, i32 0
  %859 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %858, i32 0, i32 8
  %860 = load i64, i64* %859, align 8
  %861 = call i64 @CVM_CAST64(i64 %860)
  %862 = load i64*, i64** %6, align 8
  %863 = load i32, i32* %10, align 4
  %864 = add nsw i32 %863, 1
  store i32 %864, i32* %10, align 4
  %865 = sext i32 %863 to i64
  %866 = getelementptr inbounds i64, i64* %862, i64 %865
  store i64 %861, i64* %866, align 8
  %867 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %868 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %867, i32 0, i32 2
  %869 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %868, align 8
  %870 = load i32, i32* %11, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %869, i64 %871
  %873 = load %struct.TYPE_15__*, %struct.TYPE_15__** %872, align 8
  %874 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %873, i32 0, i32 0
  %875 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %874, i32 0, i32 7
  %876 = load i64, i64* %875, align 8
  %877 = call i64 @CVM_CAST64(i64 %876)
  %878 = load i64*, i64** %6, align 8
  %879 = load i32, i32* %10, align 4
  %880 = add nsw i32 %879, 1
  store i32 %880, i32* %10, align 4
  %881 = sext i32 %879 to i64
  %882 = getelementptr inbounds i64, i64* %878, i64 %881
  store i64 %877, i64* %882, align 8
  %883 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %884 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %883, i32 0, i32 2
  %885 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %884, align 8
  %886 = load i32, i32* %11, align 4
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %885, i64 %887
  %889 = load %struct.TYPE_15__*, %struct.TYPE_15__** %888, align 8
  %890 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %889, i32 0, i32 0
  %891 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %890, i32 0, i32 6
  %892 = load i64, i64* %891, align 8
  %893 = call i64 @CVM_CAST64(i64 %892)
  %894 = load i64*, i64** %6, align 8
  %895 = load i32, i32* %10, align 4
  %896 = add nsw i32 %895, 1
  store i32 %896, i32* %10, align 4
  %897 = sext i32 %895 to i64
  %898 = getelementptr inbounds i64, i64* %894, i64 %897
  store i64 %893, i64* %898, align 8
  %899 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %900 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %899, i32 0, i32 2
  %901 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %900, align 8
  %902 = load i32, i32* %11, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %901, i64 %903
  %905 = load %struct.TYPE_15__*, %struct.TYPE_15__** %904, align 8
  %906 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %905, i32 0, i32 0
  %907 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %906, i32 0, i32 5
  %908 = load i64, i64* %907, align 8
  %909 = call i64 @CVM_CAST64(i64 %908)
  %910 = load i64*, i64** %6, align 8
  %911 = load i32, i32* %10, align 4
  %912 = add nsw i32 %911, 1
  store i32 %912, i32* %10, align 4
  %913 = sext i32 %911 to i64
  %914 = getelementptr inbounds i64, i64* %910, i64 %913
  store i64 %909, i64* %914, align 8
  %915 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %916 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %915, i32 0, i32 2
  %917 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %916, align 8
  %918 = load i32, i32* %11, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %917, i64 %919
  %921 = load %struct.TYPE_15__*, %struct.TYPE_15__** %920, align 8
  %922 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %921, i32 0, i32 0
  %923 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %922, i32 0, i32 4
  %924 = load i64, i64* %923, align 8
  %925 = call i64 @CVM_CAST64(i64 %924)
  %926 = load i64*, i64** %6, align 8
  %927 = load i32, i32* %10, align 4
  %928 = add nsw i32 %927, 1
  store i32 %928, i32* %10, align 4
  %929 = sext i32 %927 to i64
  %930 = getelementptr inbounds i64, i64* %926, i64 %929
  store i64 %925, i64* %930, align 8
  %931 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %932 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %931, i32 0, i32 2
  %933 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %932, align 8
  %934 = load i32, i32* %11, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %933, i64 %935
  %937 = load %struct.TYPE_15__*, %struct.TYPE_15__** %936, align 8
  %938 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %937, i32 0, i32 0
  %939 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %938, i32 0, i32 3
  %940 = load i64, i64* %939, align 8
  %941 = call i64 @CVM_CAST64(i64 %940)
  %942 = load i64*, i64** %6, align 8
  %943 = load i32, i32* %10, align 4
  %944 = add nsw i32 %943, 1
  store i32 %944, i32* %10, align 4
  %945 = sext i32 %943 to i64
  %946 = getelementptr inbounds i64, i64* %942, i64 %945
  store i64 %941, i64* %946, align 8
  %947 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %948 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %947, i32 0, i32 2
  %949 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %948, align 8
  %950 = load i32, i32* %11, align 4
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %949, i64 %951
  %953 = load %struct.TYPE_15__*, %struct.TYPE_15__** %952, align 8
  %954 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %953, i32 0, i32 0
  %955 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %954, i32 0, i32 2
  %956 = load i64, i64* %955, align 8
  %957 = call i64 @CVM_CAST64(i64 %956)
  %958 = load i64*, i64** %6, align 8
  %959 = load i32, i32* %10, align 4
  %960 = add nsw i32 %959, 1
  store i32 %960, i32* %10, align 4
  %961 = sext i32 %959 to i64
  %962 = getelementptr inbounds i64, i64* %958, i64 %961
  store i64 %957, i64* %962, align 8
  %963 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %964 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %963, i32 0, i32 2
  %965 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %964, align 8
  %966 = load i32, i32* %11, align 4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %965, i64 %967
  %969 = load %struct.TYPE_15__*, %struct.TYPE_15__** %968, align 8
  %970 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %969, i32 0, i32 0
  %971 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %970, i32 0, i32 1
  %972 = load i64, i64* %971, align 8
  %973 = call i64 @CVM_CAST64(i64 %972)
  %974 = load i64*, i64** %6, align 8
  %975 = load i32, i32* %10, align 4
  %976 = add nsw i32 %975, 1
  store i32 %976, i32* %10, align 4
  %977 = sext i32 %975 to i64
  %978 = getelementptr inbounds i64, i64* %974, i64 %977
  store i64 %973, i64* %978, align 8
  %979 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %980 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %979, i32 0, i32 2
  %981 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %980, align 8
  %982 = load i32, i32* %11, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %981, i64 %983
  %985 = load %struct.TYPE_15__*, %struct.TYPE_15__** %984, align 8
  %986 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %985, i32 0, i32 0
  %987 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %986, i32 0, i32 0
  %988 = load i64, i64* %987, align 8
  %989 = call i64 @CVM_CAST64(i64 %988)
  %990 = load i64*, i64** %6, align 8
  %991 = load i32, i32* %10, align 4
  %992 = add nsw i32 %991, 1
  store i32 %992, i32* %10, align 4
  %993 = sext i32 %991 to i64
  %994 = getelementptr inbounds i64, i64* %990, i64 %993
  store i64 %989, i64* %994, align 8
  br label %995

995:                                              ; preds = %802, %801
  %996 = load i32, i32* %11, align 4
  %997 = add nsw i32 %996, 1
  store i32 %997, i32* %11, align 4
  br label %787

998:                                              ; preds = %787
  store i32 0, i32* %11, align 4
  br label %999

999:                                              ; preds = %1213, %998
  %1000 = load i32, i32* %11, align 4
  %1001 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1002 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %1001)
  %1003 = icmp slt i32 %1000, %1002
  br i1 %1003, label %1004, label %1216

1004:                                             ; preds = %999
  %1005 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1006 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1006, i32 0, i32 1
  %1008 = load i32, i32* %1007, align 4
  %1009 = load i32, i32* %11, align 4
  %1010 = call i32 @BIT_ULL(i32 %1009)
  %1011 = and i32 %1008, %1010
  %1012 = icmp ne i32 %1011, 0
  br i1 %1012, label %1014, label %1013

1013:                                             ; preds = %1004
  br label %1213

1014:                                             ; preds = %1004
  %1015 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1016 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1015, i32 0, i32 0
  %1017 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1016, align 8
  %1018 = load i32, i32* %11, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1017, i64 %1019
  %1021 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1020, align 8
  %1022 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1021, i32 0, i32 0
  %1023 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1022, i32 0, i32 9
  %1024 = load i64, i64* %1023, align 8
  %1025 = call i64 @CVM_CAST64(i64 %1024)
  %1026 = load i64*, i64** %6, align 8
  %1027 = load i32, i32* %10, align 4
  %1028 = add nsw i32 %1027, 1
  store i32 %1028, i32* %10, align 4
  %1029 = sext i32 %1027 to i64
  %1030 = getelementptr inbounds i64, i64* %1026, i64 %1029
  store i64 %1025, i64* %1030, align 8
  %1031 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1032 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1031, i32 0, i32 0
  %1033 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1032, align 8
  %1034 = load i32, i32* %11, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1033, i64 %1035
  %1037 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1036, align 8
  %1038 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1037, i32 0, i32 0
  %1039 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1038, i32 0, i32 8
  %1040 = load i64, i64* %1039, align 8
  %1041 = call i64 @CVM_CAST64(i64 %1040)
  %1042 = load i64*, i64** %6, align 8
  %1043 = load i32, i32* %10, align 4
  %1044 = add nsw i32 %1043, 1
  store i32 %1044, i32* %10, align 4
  %1045 = sext i32 %1043 to i64
  %1046 = getelementptr inbounds i64, i64* %1042, i64 %1045
  store i64 %1041, i64* %1046, align 8
  %1047 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1048 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1047, i32 0, i32 0
  %1049 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1048, align 8
  %1050 = load i32, i32* %11, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1049, i64 %1051
  %1053 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1052, align 8
  %1054 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1053, i32 0, i32 0
  %1055 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1054, i32 0, i32 7
  %1056 = load i64, i64* %1055, align 8
  %1057 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1058 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1057, i32 0, i32 0
  %1059 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1058, align 8
  %1060 = load i32, i32* %11, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1059, i64 %1061
  %1063 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1062, align 8
  %1064 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1064, i32 0, i32 6
  %1066 = load i64, i64* %1065, align 8
  %1067 = add nsw i64 %1056, %1066
  %1068 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1069 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1068, i32 0, i32 0
  %1070 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1069, align 8
  %1071 = load i32, i32* %11, align 4
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1070, i64 %1072
  %1074 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1073, align 8
  %1075 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1074, i32 0, i32 0
  %1076 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1075, i32 0, i32 5
  %1077 = load i64, i64* %1076, align 8
  %1078 = add nsw i64 %1067, %1077
  %1079 = call i64 @CVM_CAST64(i64 %1078)
  %1080 = load i64*, i64** %6, align 8
  %1081 = load i32, i32* %10, align 4
  %1082 = add nsw i32 %1081, 1
  store i32 %1082, i32* %10, align 4
  %1083 = sext i32 %1081 to i64
  %1084 = getelementptr inbounds i64, i64* %1080, i64 %1083
  store i64 %1079, i64* %1084, align 8
  %1085 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1086 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1085, i32 0, i32 0
  %1087 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1086, align 8
  %1088 = load i32, i32* %11, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1087, i64 %1089
  %1091 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1090, align 8
  %1092 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1091, i32 0, i32 0
  %1093 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1092, i32 0, i32 7
  %1094 = load i64, i64* %1093, align 8
  %1095 = call i64 @CVM_CAST64(i64 %1094)
  %1096 = load i64*, i64** %6, align 8
  %1097 = load i32, i32* %10, align 4
  %1098 = add nsw i32 %1097, 1
  store i32 %1098, i32* %10, align 4
  %1099 = sext i32 %1097 to i64
  %1100 = getelementptr inbounds i64, i64* %1096, i64 %1099
  store i64 %1095, i64* %1100, align 8
  %1101 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1102 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1101, i32 0, i32 0
  %1103 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1102, align 8
  %1104 = load i32, i32* %11, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1103, i64 %1105
  %1107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1106, align 8
  %1108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1107, i32 0, i32 0
  %1109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1108, i32 0, i32 6
  %1110 = load i64, i64* %1109, align 8
  %1111 = call i64 @CVM_CAST64(i64 %1110)
  %1112 = load i64*, i64** %6, align 8
  %1113 = load i32, i32* %10, align 4
  %1114 = add nsw i32 %1113, 1
  store i32 %1114, i32* %10, align 4
  %1115 = sext i32 %1113 to i64
  %1116 = getelementptr inbounds i64, i64* %1112, i64 %1115
  store i64 %1111, i64* %1116, align 8
  %1117 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1118 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1117, i32 0, i32 0
  %1119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1118, align 8
  %1120 = load i32, i32* %11, align 4
  %1121 = sext i32 %1120 to i64
  %1122 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1119, i64 %1121
  %1123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1122, align 8
  %1124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1123, i32 0, i32 0
  %1125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1124, i32 0, i32 5
  %1126 = load i64, i64* %1125, align 8
  %1127 = call i64 @CVM_CAST64(i64 %1126)
  %1128 = load i64*, i64** %6, align 8
  %1129 = load i32, i32* %10, align 4
  %1130 = add nsw i32 %1129, 1
  store i32 %1130, i32* %10, align 4
  %1131 = sext i32 %1129 to i64
  %1132 = getelementptr inbounds i64, i64* %1128, i64 %1131
  store i64 %1127, i64* %1132, align 8
  %1133 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1134 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1133, i32 0, i32 0
  %1135 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1134, align 8
  %1136 = load i32, i32* %11, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1135, i64 %1137
  %1139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1138, align 8
  %1140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1139, i32 0, i32 0
  %1141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1140, i32 0, i32 4
  %1142 = load i64, i64* %1141, align 8
  %1143 = call i64 @CVM_CAST64(i64 %1142)
  %1144 = load i64*, i64** %6, align 8
  %1145 = load i32, i32* %10, align 4
  %1146 = add nsw i32 %1145, 1
  store i32 %1146, i32* %10, align 4
  %1147 = sext i32 %1145 to i64
  %1148 = getelementptr inbounds i64, i64* %1144, i64 %1147
  store i64 %1143, i64* %1148, align 8
  %1149 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1150 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1149, i32 0, i32 0
  %1151 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1150, align 8
  %1152 = load i32, i32* %11, align 4
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1151, i64 %1153
  %1155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1154, align 8
  %1156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1155, i32 0, i32 0
  %1157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1156, i32 0, i32 3
  %1158 = load i64, i64* %1157, align 8
  %1159 = call i64 @CVM_CAST64(i64 %1158)
  %1160 = load i64*, i64** %6, align 8
  %1161 = load i32, i32* %10, align 4
  %1162 = add nsw i32 %1161, 1
  store i32 %1162, i32* %10, align 4
  %1163 = sext i32 %1161 to i64
  %1164 = getelementptr inbounds i64, i64* %1160, i64 %1163
  store i64 %1159, i64* %1164, align 8
  %1165 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1166 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1165, i32 0, i32 0
  %1167 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1166, align 8
  %1168 = load i32, i32* %11, align 4
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1167, i64 %1169
  %1171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1170, align 8
  %1172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1171, i32 0, i32 0
  %1173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1172, i32 0, i32 2
  %1174 = load i64, i64* %1173, align 8
  %1175 = call i64 @CVM_CAST64(i64 %1174)
  %1176 = load i64*, i64** %6, align 8
  %1177 = load i32, i32* %10, align 4
  %1178 = add nsw i32 %1177, 1
  store i32 %1178, i32* %10, align 4
  %1179 = sext i32 %1177 to i64
  %1180 = getelementptr inbounds i64, i64* %1176, i64 %1179
  store i64 %1175, i64* %1180, align 8
  %1181 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1182 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1181, i32 0, i32 0
  %1183 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1182, align 8
  %1184 = load i32, i32* %11, align 4
  %1185 = sext i32 %1184 to i64
  %1186 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1183, i64 %1185
  %1187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1186, align 8
  %1188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1187, i32 0, i32 0
  %1189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1188, i32 0, i32 1
  %1190 = load i64, i64* %1189, align 8
  %1191 = call i64 @CVM_CAST64(i64 %1190)
  %1192 = load i64*, i64** %6, align 8
  %1193 = load i32, i32* %10, align 4
  %1194 = add nsw i32 %1193, 1
  store i32 %1194, i32* %10, align 4
  %1195 = sext i32 %1193 to i64
  %1196 = getelementptr inbounds i64, i64* %1192, i64 %1195
  store i64 %1191, i64* %1196, align 8
  %1197 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %1198 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %1197, i32 0, i32 0
  %1199 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %1198, align 8
  %1200 = load i32, i32* %11, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %1199, i64 %1201
  %1203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1202, align 8
  %1204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1203, i32 0, i32 0
  %1205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1204, i32 0, i32 0
  %1206 = load i64, i64* %1205, align 8
  %1207 = call i64 @CVM_CAST64(i64 %1206)
  %1208 = load i64*, i64** %6, align 8
  %1209 = load i32, i32* %10, align 4
  %1210 = add nsw i32 %1209, 1
  store i32 %1210, i32* %10, align 4
  %1211 = sext i32 %1209 to i64
  %1212 = getelementptr inbounds i64, i64* %1208, i64 %1211
  store i64 %1207, i64* %1212, align 8
  br label %1213

1213:                                             ; preds = %1014, %1013
  %1214 = load i32, i32* %11, align 4
  %1215 = add nsw i32 %1214, 1
  store i32 %1215, i32* %11, align 4
  br label %999

1216:                                             ; preds = %21, %999
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @ifstate_check(%struct.lio*, i32) #1

declare dso_local i64 @CVM_CAST64(i64) #1

declare dso_local i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
