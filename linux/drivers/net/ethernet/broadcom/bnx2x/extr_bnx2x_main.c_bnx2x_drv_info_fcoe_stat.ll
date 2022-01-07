; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_drv_info_fcoe_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_drv_info_fcoe_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_22__*, i32, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { %struct.fcoe_statistics_params, %struct.TYPE_21__* }
%struct.fcoe_statistics_params = type { %struct.TYPE_17__, %struct.TYPE_26__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.xstorm_per_queue_stats, %struct.tstorm_per_queue_stats }
%struct.xstorm_per_queue_stats = type { i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.tstorm_per_queue_stats = type { i32, i32, i32, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.fcoe_stats_info }
%struct.fcoe_stats_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_18__ = type { %struct.bnx2x_dcbx_app_params }
%struct.bnx2x_dcbx_app_params = type { i32* }

@MAC_PAD = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_FCOE = common dso_local global i64 0, align 8
@LE32_0 = common dso_local global i32 0, align 4
@CNIC_CTL_FCOE_STATS_GET_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_drv_info_fcoe_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_drv_info_fcoe_stat(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_dcbx_app_params*, align 8
  %4 = alloca %struct.fcoe_stats_info*, align 8
  %5 = alloca %struct.tstorm_per_queue_stats*, align 8
  %6 = alloca %struct.xstorm_per_queue_stats*, align 8
  %7 = alloca %struct.fcoe_statistics_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store %struct.bnx2x_dcbx_app_params* %10, %struct.bnx2x_dcbx_app_params** %3, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store %struct.fcoe_stats_info* %15, %struct.fcoe_stats_info** %4, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = call i32 @CNIC_LOADED(%struct.bnx2x* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %273

20:                                               ; preds = %1
  %21 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %22 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAC_PAD, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i64 %25, i32 %28, i32 %29)
  %31 = load %struct.bnx2x_dcbx_app_params*, %struct.bnx2x_dcbx_app_params** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x_dcbx_app_params, %struct.bnx2x_dcbx_app_params* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @LLFC_TRAFFIC_TYPE_FCOE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %38 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = call i32 @NO_FCOE(%struct.bnx2x* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %269, label %42

42:                                               ; preds = %20
  %43 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 0
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = call i64 @FCOE_IDX(%struct.bnx2x* %48)
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  store %struct.tstorm_per_queue_stats* %51, %struct.tstorm_per_queue_stats** %5, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 0
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %58 = call i64 @FCOE_IDX(%struct.bnx2x* %57)
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  store %struct.xstorm_per_queue_stats* %60, %struct.xstorm_per_queue_stats** %6, align 8
  %61 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %61, i32 0, i32 0
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  store %struct.fcoe_statistics_params* %64, %struct.fcoe_statistics_params** %7, align 8
  %65 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %66 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @LE32_0, align 4
  %69 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %70 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.fcoe_statistics_params*, %struct.fcoe_statistics_params** %7, align 8
  %73 = getelementptr inbounds %struct.fcoe_statistics_params, %struct.fcoe_statistics_params* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ADD_64_LE(i32 %67, i32 %68, i32 %71, i32 %75)
  %77 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %78 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %81 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %85 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %88 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ADD_64_LE(i32 %79, i32 %83, i32 %86, i32 %90)
  %92 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %93 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %96 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %100 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %103 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ADD_64_LE(i32 %94, i32 %98, i32 %101, i32 %105)
  %107 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %108 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %111 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %115 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %118 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ADD_64_LE(i32 %109, i32 %113, i32 %116, i32 %120)
  %122 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %123 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @LE32_0, align 4
  %126 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %127 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.fcoe_statistics_params*, %struct.fcoe_statistics_params** %7, align 8
  %130 = getelementptr inbounds %struct.fcoe_statistics_params, %struct.fcoe_statistics_params* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ADD_64_LE(i32 %124, i32 %125, i32 %128, i32 %132)
  %134 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %135 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @LE32_0, align 4
  %138 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %139 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %142 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ADD_64_LE(i32 %136, i32 %137, i32 %140, i32 %143)
  %145 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %146 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @LE32_0, align 4
  %149 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %150 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %153 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ADD_64_LE(i32 %147, i32 %148, i32 %151, i32 %154)
  %156 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %157 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @LE32_0, align 4
  %160 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %161 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.tstorm_per_queue_stats*, %struct.tstorm_per_queue_stats** %5, align 8
  %164 = getelementptr inbounds %struct.tstorm_per_queue_stats, %struct.tstorm_per_queue_stats* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ADD_64_LE(i32 %158, i32 %159, i32 %162, i32 %165)
  %167 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %168 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @LE32_0, align 4
  %171 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %172 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.fcoe_statistics_params*, %struct.fcoe_statistics_params** %7, align 8
  %175 = getelementptr inbounds %struct.fcoe_statistics_params, %struct.fcoe_statistics_params* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ADD_64_LE(i32 %169, i32 %170, i32 %173, i32 %177)
  %179 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %180 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %183 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %187 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %190 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ADD_64_LE(i32 %181, i32 %185, i32 %188, i32 %192)
  %194 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %195 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %198 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %202 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %205 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ADD_64_LE(i32 %196, i32 %200, i32 %203, i32 %207)
  %209 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %210 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %213 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %217 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %220 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ADD_64_LE(i32 %211, i32 %215, i32 %218, i32 %222)
  %224 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %225 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @LE32_0, align 4
  %228 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %229 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.fcoe_statistics_params*, %struct.fcoe_statistics_params** %7, align 8
  %232 = getelementptr inbounds %struct.fcoe_statistics_params, %struct.fcoe_statistics_params* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ADD_64_LE(i32 %226, i32 %227, i32 %230, i32 %234)
  %236 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %237 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @LE32_0, align 4
  %240 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %241 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %244 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @ADD_64_LE(i32 %238, i32 %239, i32 %242, i32 %245)
  %247 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %248 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @LE32_0, align 4
  %251 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %252 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %255 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ADD_64_LE(i32 %249, i32 %250, i32 %253, i32 %256)
  %258 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %259 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @LE32_0, align 4
  %262 = load %struct.fcoe_stats_info*, %struct.fcoe_stats_info** %4, align 8
  %263 = getelementptr inbounds %struct.fcoe_stats_info, %struct.fcoe_stats_info* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.xstorm_per_queue_stats*, %struct.xstorm_per_queue_stats** %6, align 8
  %266 = getelementptr inbounds %struct.xstorm_per_queue_stats, %struct.xstorm_per_queue_stats* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ADD_64_LE(i32 %260, i32 %261, i32 %264, i32 %267)
  br label %269

269:                                              ; preds = %42, %20
  %270 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %271 = load i32, i32* @CNIC_CTL_FCOE_STATS_GET_CMD, align 4
  %272 = call i32 @bnx2x_cnic_notify(%struct.bnx2x* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %19
  ret void
}

declare dso_local i32 @CNIC_LOADED(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i64 @FCOE_IDX(%struct.bnx2x*) #1

declare dso_local i32 @ADD_64_LE(i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cnic_notify(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
