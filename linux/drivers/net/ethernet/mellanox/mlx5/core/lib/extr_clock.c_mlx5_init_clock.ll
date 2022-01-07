; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_init_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_init_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.mlx5_core_dev = type { %struct.TYPE_9__*, %struct.mlx5_ib_clock_info*, %struct.mlx5_clock }
%struct.TYPE_9__ = type { i32 }
%struct.mlx5_ib_clock_info = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_clock = type { i32, i32*, %struct.TYPE_12__, i32, i64, %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_11__, i32, %struct.mlx5_core_dev*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@device_frequency_khz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"invalid device_frequency_khz, aborting HW clock init\0A\00", align 1
@read_internal_timer = common dso_local global i32 0, align 4
@MLX5_CYCLES_SHIFT = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mlx5_pps_out = common dso_local global i32 0, align 4
@mlx5_timestamp_overflow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"invalid overflow period, overflow_work is not scheduled\0A\00", align 1
@mlx5_ptp_clock_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"ptp_clock_register failed %ld\0A\00", align 1
@mlx5_pps_event = common dso_local global i32 0, align 4
@PPS_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_init_clock(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_clock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 2
  store %struct.mlx5_clock* %9, %struct.mlx5_clock** %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %11 = load i32, i32* @device_frequency_khz, align 4
  %12 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %17 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %222

18:                                               ; preds = %1
  %19 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %19, i32 0, i32 10
  %21 = call i32 @seqlock_init(i32* %20)
  %22 = load i32, i32* @read_internal_timer, align 4
  %23 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @MLX5_CYCLES_SHIFT, align 4
  %27 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clocksource_khz2mult(i32 %30, i32 %34)
  %36 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = call i32 @CLOCKSOURCE_MASK(i32 41)
  %46 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %50 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %50, i32 0, i32 9
  store %struct.mlx5_core_dev* %49, %struct.mlx5_core_dev** %51, align 8
  %52 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %52, i32 0, i32 6
  %54 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %54, i32 0, i32 7
  %56 = call i32 (...) @ktime_get_real()
  %57 = call i32 @ktime_to_ns(i32 %56)
  %58 = call i32 @timecounter_init(%struct.TYPE_10__* %53, %struct.TYPE_11__* %55, i32 %57)
  %59 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @div64_u64(i64 9223372036854775807, i32 %62)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %66 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @div_u64(i32 %68, i32 3)
  %70 = call i64 @min(i64 %64, i32 %69)
  store i64 %70, i64* %4, align 8
  %71 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %72 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %71, i32 0, i32 7
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @cyclecounter_cyc2ns(%struct.TYPE_11__* %72, i64 %73, i64 %74, i64* %6)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* @NSEC_PER_SEC, align 4
  %78 = load i32, i32* @HZ, align 4
  %79 = sdiv i32 %77, %78
  %80 = call i32 @do_div(i64 %76, i32 %79)
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %83 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i64 @get_zeroed_page(i32 %84)
  %86 = inttoptr i64 %85 to %struct.mlx5_ib_clock_info*
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %87, i32 0, i32 1
  store %struct.mlx5_ib_clock_info* %86, %struct.mlx5_ib_clock_info** %88, align 8
  %89 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %90 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %89, i32 0, i32 1
  %91 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %90, align 8
  %92 = icmp ne %struct.mlx5_ib_clock_info* %91, null
  br i1 %92, label %93, label %148

93:                                               ; preds = %18
  %94 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %95 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %99 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %98, i32 0, i32 1
  %100 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %99, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %100, i32 0, i32 6
  store i32 %97, i32* %101, align 4
  %102 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %103 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %107 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %106, i32 0, i32 1
  %108 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %107, align 8
  %109 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %108, i32 0, i32 5
  store i32 %105, i32* %109, align 8
  %110 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %111 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %115 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %114, i32 0, i32 1
  %116 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %115, align 8
  %117 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %116, i32 0, i32 4
  store i32 %113, i32* %117, align 4
  %118 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %119 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %122 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %121, i32 0, i32 1
  %123 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %122, align 8
  %124 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %123, i32 0, i32 3
  store i32 %120, i32* %124, align 8
  %125 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %126 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %130 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %129, i32 0, i32 1
  %131 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %130, align 8
  %132 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 4
  %133 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %134 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %138 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %137, i32 0, i32 1
  %139 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %138, align 8
  %140 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %139, i32 0, i32 1
  store i32 %136, i32* %140, align 8
  %141 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %142 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %145 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %144, i32 0, i32 1
  %146 = load %struct.mlx5_ib_clock_info*, %struct.mlx5_ib_clock_info** %145, align 8
  %147 = getelementptr inbounds %struct.mlx5_ib_clock_info, %struct.mlx5_ib_clock_info* %146, i32 0, i32 0
  store i64 %143, i64* %147, align 8
  br label %148

148:                                              ; preds = %93, %18
  %149 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %150 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* @mlx5_pps_out, align 4
  %153 = call i32 @INIT_WORK(i32* %151, i32 %152)
  %154 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %155 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %154, i32 0, i32 3
  %156 = load i32, i32* @mlx5_timestamp_overflow, align 4
  %157 = call i32 @INIT_DELAYED_WORK(i32* %155, i32 %156)
  %158 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %159 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %148
  %163 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %164 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %163, i32 0, i32 3
  %165 = call i32 @schedule_delayed_work(i32* %164, i32 0)
  br label %169

166:                                              ; preds = %148
  %167 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %168 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %167, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %162
  %170 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %171 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %170, i32 0, i32 2
  %172 = bitcast %struct.TYPE_12__* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 bitcast (%struct.TYPE_12__* @mlx5_ptp_clock_info to i8*), i64 8, i1 false)
  %173 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %174 = call i64 @MLX5_PPS_CAP(%struct.mlx5_core_dev* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %178 = call i32 @mlx5_get_pps_caps(%struct.mlx5_core_dev* %177)
  br label %179

179:                                              ; preds = %176, %169
  %180 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %181 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %187 = call i32 @mlx5_init_pin_config(%struct.mlx5_clock* %186)
  br label %188

188:                                              ; preds = %185, %179
  %189 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %190 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %189, i32 0, i32 2
  %191 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %192 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %191, i32 0, i32 0
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = call i32* @ptp_clock_register(%struct.TYPE_12__* %190, i32* %194)
  %196 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %197 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %196, i32 0, i32 1
  store i32* %195, i32** %197, align 8
  %198 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %199 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = call i64 @IS_ERR(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %188
  %204 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %205 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %206 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @PTR_ERR(i32* %207)
  %209 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %211 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %210, i32 0, i32 1
  store i32* null, i32** %211, align 8
  br label %212

212:                                              ; preds = %203, %188
  %213 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %214 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %213, i32 0, i32 0
  %215 = load i32, i32* @mlx5_pps_event, align 4
  %216 = load i32, i32* @PPS_EVENT, align 4
  %217 = call i32 @MLX5_NB_INIT(i32* %214, i32 %215, i32 %216)
  %218 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %219 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %220 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %219, i32 0, i32 0
  %221 = call i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev* %218, i32* %220)
  br label %222

222:                                              ; preds = %212, %15
  ret void
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @clocksource_khz2mult(i32, i32) #1

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @timecounter_init(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i64 @div64_u64(i64, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i64 @cyclecounter_cyc2ns(%struct.TYPE_11__*, i64, i64, i64*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @MLX5_PPS_CAP(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_get_pps_caps(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_pin_config(%struct.mlx5_clock*) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MLX5_NB_INIT(i32*, i32, i32) #1

declare dso_local i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
