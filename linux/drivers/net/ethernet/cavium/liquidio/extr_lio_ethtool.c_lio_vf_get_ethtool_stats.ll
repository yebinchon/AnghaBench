; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_vf_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_vf_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.net_device*, %struct.rtnl_link_stats64*)* }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_stats = type { i32 }
%struct.lio = type { %struct.TYPE_15__, i64, %struct.octeon_device* }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.octeon_device = type { i32, i32, %struct.TYPE_21__**, %struct.TYPE_16__**, %struct.TYPE_25__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64, i64, i64 }
%struct.TYPE_23__ = type { i64, i64 }

@LIO_IFSTATE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @lio_vf_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_vf_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.rtnl_link_stats64, align 8
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.lio* @GET_LIO(%struct.net_device* %13)
  store %struct.lio* %14, %struct.lio** %8, align 8
  %15 = load %struct.lio*, %struct.lio** %8, align 8
  %16 = getelementptr inbounds %struct.lio, %struct.lio* %15, i32 0, i32 2
  %17 = load %struct.octeon_device*, %struct.octeon_device** %16, align 8
  store %struct.octeon_device* %17, %struct.octeon_device** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.lio*, %struct.lio** %8, align 8
  %19 = load i32, i32* @LIO_IFSTATE_RESETTING, align 4
  %20 = call i64 @ifstate_check(%struct.lio* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %573

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*, %struct.rtnl_link_stats64*)*, i32 (%struct.net_device*, %struct.rtnl_link_stats64*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 %28(%struct.net_device* %29, %struct.rtnl_link_stats64* %7)
  %31 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  store i64 %32, i64* %37, align 8
  %38 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64 %39, i64* %44, align 8
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 %46, i64* %51, align 8
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 %53, i64* %58, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64 %60, i64* %65, align 8
  %66 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %67, i64* %72, align 8
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %74, i64* %79, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %7, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %81, %86
  %88 = load i64*, i64** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 %87, i64* %92, align 8
  %93 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %94 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  store i64 %97, i64* %102, align 8
  %103 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %104 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  store i64 %107, i64* %112, align 8
  %113 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %114 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  store i64 %117, i64* %122, align 8
  %123 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %124 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  store i64 %127, i64* %132, align 8
  %133 = load %struct.lio*, %struct.lio** %8, align 8
  %134 = getelementptr inbounds %struct.lio, %struct.lio* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @CVM_CAST64(i64 %135)
  %137 = load i64*, i64** %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  store i64 %136, i64* %141, align 8
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %351, %23
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %145 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %354

148:                                              ; preds = %142
  %149 = load %struct.lio*, %struct.lio** %8, align 8
  %150 = getelementptr inbounds %struct.lio, %struct.lio* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %11, align 4
  %159 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %160 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %159, i32 0, i32 3
  %161 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %161, i64 %163
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 11
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @CVM_CAST64(i64 %168)
  %170 = load i64*, i64** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  store i64 %169, i64* %174, align 8
  %175 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %176 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %175, i32 0, i32 3
  %177 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %177, i64 %179
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 10
  %184 = load i64, i64* %183, align 8
  %185 = call i64 @CVM_CAST64(i64 %184)
  %186 = load i64*, i64** %6, align 8
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i64, i64* %186, i64 %189
  store i64 %185, i64* %190, align 8
  %191 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %192 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %191, i32 0, i32 3
  %193 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %193, i64 %195
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 9
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @CVM_CAST64(i64 %200)
  %202 = load i64*, i64** %6, align 8
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i64, i64* %202, i64 %205
  store i64 %201, i64* %206, align 8
  %207 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %208 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %207, i32 0, i32 3
  %209 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %209, i64 %211
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 8
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @CVM_CAST64(i64 %216)
  %218 = load i64*, i64** %6, align 8
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i64, i64* %218, i64 %221
  store i64 %217, i64* %222, align 8
  %223 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %224 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %223, i32 0, i32 3
  %225 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %225, i64 %227
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = call i64 @CVM_CAST64(i64 %232)
  %234 = load i64*, i64** %6, align 8
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i64, i64* %234, i64 %237
  store i64 %233, i64* %238, align 8
  %239 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %240 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %239, i32 0, i32 3
  %241 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %240, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %241, i64 %243
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @CVM_CAST64(i64 %248)
  %250 = load i64*, i64** %6, align 8
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i64, i64* %250, i64 %253
  store i64 %249, i64* %254, align 8
  %255 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %256 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %255, i32 0, i32 3
  %257 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %257, i64 %259
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = call i64 @CVM_CAST64(i64 %264)
  %266 = load i64*, i64** %6, align 8
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %10, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i64, i64* %266, i64 %269
  store i64 %265, i64* %270, align 8
  %271 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %272 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %271, i32 0, i32 3
  %273 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %273, i64 %275
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @CVM_CAST64(i64 %280)
  %282 = load i64*, i64** %6, align 8
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %10, align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i64, i64* %282, i64 %285
  store i64 %281, i64* %286, align 8
  %287 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %288 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %287, i32 0, i32 3
  %289 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %289, i64 %291
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @CVM_CAST64(i64 %296)
  %298 = load i64*, i64** %6, align 8
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i64, i64* %298, i64 %301
  store i64 %297, i64* %302, align 8
  %303 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %304 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %303, i32 0, i32 3
  %305 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %304, align 8
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %305, i64 %307
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = call i64 @CVM_CAST64(i64 %312)
  %314 = load i64*, i64** %6, align 8
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i64, i64* %314, i64 %317
  store i64 %313, i64* %318, align 8
  %319 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %320 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %319, i32 0, i32 3
  %321 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %320, align 8
  %322 = load i32, i32* %11, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %321, i64 %323
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = call i64 @CVM_CAST64(i64 %328)
  %330 = load i64*, i64** %6, align 8
  %331 = load i32, i32* %10, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %10, align 4
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i64, i64* %330, i64 %333
  store i64 %329, i64* %334, align 8
  %335 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %336 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %335, i32 0, i32 3
  %337 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %337, i64 %339
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = call i64 @CVM_CAST64(i64 %344)
  %346 = load i64*, i64** %6, align 8
  %347 = load i32, i32* %10, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %10, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i64, i64* %346, i64 %349
  store i64 %345, i64* %350, align 8
  br label %351

351:                                              ; preds = %148
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %12, align 4
  br label %142

354:                                              ; preds = %142
  store i32 0, i32* %12, align 4
  br label %355

355:                                              ; preds = %570, %354
  %356 = load i32, i32* %12, align 4
  %357 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %358 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %573

361:                                              ; preds = %355
  %362 = load %struct.lio*, %struct.lio** %8, align 8
  %363 = getelementptr inbounds %struct.lio, %struct.lio* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_19__*, %struct.TYPE_19__** %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %11, align 4
  %372 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %373 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %372, i32 0, i32 2
  %374 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %373, align 8
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %374, i64 %376
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 9
  %381 = load i64, i64* %380, align 8
  %382 = call i64 @CVM_CAST64(i64 %381)
  %383 = load i64*, i64** %6, align 8
  %384 = load i32, i32* %10, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %10, align 4
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i64, i64* %383, i64 %386
  store i64 %382, i64* %387, align 8
  %388 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %389 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %388, i32 0, i32 2
  %390 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %389, align 8
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %390, i64 %392
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 8
  %397 = load i64, i64* %396, align 8
  %398 = call i64 @CVM_CAST64(i64 %397)
  %399 = load i64*, i64** %6, align 8
  %400 = load i32, i32* %10, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %10, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i64, i64* %399, i64 %402
  store i64 %398, i64* %403, align 8
  %404 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %405 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %404, i32 0, i32 2
  %406 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %405, align 8
  %407 = load i32, i32* %11, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %406, i64 %408
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 7
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %415 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %414, i32 0, i32 2
  %416 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %416, i64 %418
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %421, i32 0, i32 6
  %423 = load i64, i64* %422, align 8
  %424 = add nsw i64 %413, %423
  %425 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %426 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %425, i32 0, i32 2
  %427 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %426, align 8
  %428 = load i32, i32* %11, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %427, i64 %429
  %431 = load %struct.TYPE_21__*, %struct.TYPE_21__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %432, i32 0, i32 5
  %434 = load i64, i64* %433, align 8
  %435 = add nsw i64 %424, %434
  %436 = call i64 @CVM_CAST64(i64 %435)
  %437 = load i64*, i64** %6, align 8
  %438 = load i32, i32* %10, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %10, align 4
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i64, i64* %437, i64 %440
  store i64 %436, i64* %441, align 8
  %442 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %443 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %442, i32 0, i32 2
  %444 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %443, align 8
  %445 = load i32, i32* %11, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %444, i64 %446
  %448 = load %struct.TYPE_21__*, %struct.TYPE_21__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 7
  %451 = load i64, i64* %450, align 8
  %452 = call i64 @CVM_CAST64(i64 %451)
  %453 = load i64*, i64** %6, align 8
  %454 = load i32, i32* %10, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %10, align 4
  %456 = sext i32 %454 to i64
  %457 = getelementptr inbounds i64, i64* %453, i64 %456
  store i64 %452, i64* %457, align 8
  %458 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %459 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %458, i32 0, i32 2
  %460 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %459, align 8
  %461 = load i32, i32* %11, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %460, i64 %462
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %465, i32 0, i32 6
  %467 = load i64, i64* %466, align 8
  %468 = call i64 @CVM_CAST64(i64 %467)
  %469 = load i64*, i64** %6, align 8
  %470 = load i32, i32* %10, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %10, align 4
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds i64, i64* %469, i64 %472
  store i64 %468, i64* %473, align 8
  %474 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %475 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %474, i32 0, i32 2
  %476 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %475, align 8
  %477 = load i32, i32* %11, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %476, i64 %478
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 5
  %483 = load i64, i64* %482, align 8
  %484 = call i64 @CVM_CAST64(i64 %483)
  %485 = load i64*, i64** %6, align 8
  %486 = load i32, i32* %10, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %10, align 4
  %488 = sext i32 %486 to i64
  %489 = getelementptr inbounds i64, i64* %485, i64 %488
  store i64 %484, i64* %489, align 8
  %490 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %491 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %490, i32 0, i32 2
  %492 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %491, align 8
  %493 = load i32, i32* %11, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %492, i64 %494
  %496 = load %struct.TYPE_21__*, %struct.TYPE_21__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %497, i32 0, i32 4
  %499 = load i64, i64* %498, align 8
  %500 = call i64 @CVM_CAST64(i64 %499)
  %501 = load i64*, i64** %6, align 8
  %502 = load i32, i32* %10, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %10, align 4
  %504 = sext i32 %502 to i64
  %505 = getelementptr inbounds i64, i64* %501, i64 %504
  store i64 %500, i64* %505, align 8
  %506 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %507 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %506, i32 0, i32 2
  %508 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %507, align 8
  %509 = load i32, i32* %11, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %508, i64 %510
  %512 = load %struct.TYPE_21__*, %struct.TYPE_21__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i32 0, i32 3
  %515 = load i64, i64* %514, align 8
  %516 = call i64 @CVM_CAST64(i64 %515)
  %517 = load i64*, i64** %6, align 8
  %518 = load i32, i32* %10, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %10, align 4
  %520 = sext i32 %518 to i64
  %521 = getelementptr inbounds i64, i64* %517, i64 %520
  store i64 %516, i64* %521, align 8
  %522 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %523 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %522, i32 0, i32 2
  %524 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %523, align 8
  %525 = load i32, i32* %11, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %524, i64 %526
  %528 = load %struct.TYPE_21__*, %struct.TYPE_21__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 2
  %531 = load i64, i64* %530, align 8
  %532 = call i64 @CVM_CAST64(i64 %531)
  %533 = load i64*, i64** %6, align 8
  %534 = load i32, i32* %10, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %10, align 4
  %536 = sext i32 %534 to i64
  %537 = getelementptr inbounds i64, i64* %533, i64 %536
  store i64 %532, i64* %537, align 8
  %538 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %539 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %538, i32 0, i32 2
  %540 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %539, align 8
  %541 = load i32, i32* %11, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %540, i64 %542
  %544 = load %struct.TYPE_21__*, %struct.TYPE_21__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = call i64 @CVM_CAST64(i64 %547)
  %549 = load i64*, i64** %6, align 8
  %550 = load i32, i32* %10, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %10, align 4
  %552 = sext i32 %550 to i64
  %553 = getelementptr inbounds i64, i64* %549, i64 %552
  store i64 %548, i64* %553, align 8
  %554 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %555 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %554, i32 0, i32 2
  %556 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %555, align 8
  %557 = load i32, i32* %11, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %556, i64 %558
  %560 = load %struct.TYPE_21__*, %struct.TYPE_21__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = call i64 @CVM_CAST64(i64 %563)
  %565 = load i64*, i64** %6, align 8
  %566 = load i32, i32* %10, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %10, align 4
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i64, i64* %565, i64 %568
  store i64 %564, i64* %569, align 8
  br label %570

570:                                              ; preds = %361
  %571 = load i32, i32* %12, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %12, align 4
  br label %355

573:                                              ; preds = %22, %355
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @ifstate_check(%struct.lio*, i32) #1

declare dso_local i64 @CVM_CAST64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
