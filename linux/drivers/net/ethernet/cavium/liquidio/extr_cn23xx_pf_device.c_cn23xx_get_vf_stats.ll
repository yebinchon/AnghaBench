; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_get_vf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_get_vf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.oct_vf_stats = type { i32 }
%struct.octeon_mbox_cmd = type { i32, i32, i8*, i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.oct_vf_stats_ctx = type { i32, %struct.oct_vf_stats* }

@HZ = common dso_local global i64 0, align 8
@OCTEON_MBOX_REQUEST = common dso_local global i32 0, align 4
@OCTEON_GET_VF_STATS = common dso_local global i32 0, align 4
@cn23xx_get_vf_stats_callback = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unable to get stats from VF-%d, timedout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cn23xx_get_vf_stats(%struct.octeon_device* %0, i32 %1, %struct.oct_vf_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.oct_vf_stats*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.octeon_mbox_cmd, align 8
  %10 = alloca %struct.oct_vf_stats_ctx, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.oct_vf_stats* %2, %struct.oct_vf_stats** %7, align 8
  %13 = load i64, i64* @HZ, align 8
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %91

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @OCTEON_MBOX_REQUEST, align 4
  %28 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @OCTEON_GET_VF_STATS, align 4
  %35 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %41, %45
  %47 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* @cn23xx_get_vf_stats_callback, align 8
  %51 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 3
  store i64 %50, i64* %51, align 8
  %52 = load %struct.oct_vf_stats*, %struct.oct_vf_stats** %7, align 8
  %53 = getelementptr inbounds %struct.oct_vf_stats_ctx, %struct.oct_vf_stats_ctx* %10, i32 0, i32 1
  store %struct.oct_vf_stats* %52, %struct.oct_vf_stats** %53, align 8
  %54 = getelementptr inbounds %struct.oct_vf_stats_ctx, %struct.oct_vf_stats_ctx* %10, i32 0, i32 0
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  %56 = bitcast %struct.oct_vf_stats_ctx* %10 to i8*
  %57 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %9, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %62 = call i32 @octeon_mbox_write(%struct.octeon_device* %61, %struct.octeon_mbox_cmd* %9)
  br label %63

63:                                               ; preds = %74, %24
  %64 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.oct_vf_stats_ctx, %struct.oct_vf_stats_ctx* %10, i32 0, i32 0
  %67 = call i64 @atomic_read(i32* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %70, %72
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  br i1 %75, label %63, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.oct_vf_stats_ctx, %struct.oct_vf_stats_ctx* %10, i32 0, i32 0
  %78 = call i64 @atomic_read(i32* %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %83 = call i32 @octeon_mbox_cancel(%struct.octeon_device* %82, i32 0)
  %84 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %85 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 -1, i32* %4, align 4
  br label %91

90:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %81, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @octeon_mbox_write(%struct.octeon_device*, %struct.octeon_mbox_cmd*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @octeon_mbox_cancel(%struct.octeon_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
