; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag_mp.c_mlx5_lag_fib_route_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag_mp.c_mlx5_lag_fib_route_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { %struct.lag_tracker, %struct.TYPE_2__*, %struct.lag_mp }
%struct.lag_tracker = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.lag_mp = type { %struct.fib_info* }
%struct.fib_info = type { i32 }
%struct.fib_nh = type { i64 }
%struct.net_device = type { i32 }

@FIB_EVENT_ENTRY_DEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Multipath offload require two ports of the same HCA\0A\00", align 1
@MLX5_LAG_FLAG_MULTIPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_lag*, i64, %struct.fib_info*)* @mlx5_lag_fib_route_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_lag_fib_route_event(%struct.mlx5_lag* %0, i64 %1, %struct.fib_info* %2) #0 {
  %4 = alloca %struct.mlx5_lag*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fib_info*, align 8
  %7 = alloca %struct.lag_mp*, align 8
  %8 = alloca %struct.fib_nh*, align 8
  %9 = alloca %struct.fib_nh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib_nh*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.lag_tracker, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.fib_info* %2, %struct.fib_info** %6, align 8
  %15 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %15, i32 0, i32 2
  store %struct.lag_mp* %16, %struct.lag_mp** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @FIB_EVENT_ENTRY_DEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.lag_mp*, %struct.lag_mp** %7, align 8
  %22 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %21, i32 0, i32 0
  %23 = load %struct.fib_info*, %struct.fib_info** %22, align 8
  %24 = load %struct.fib_info*, %struct.fib_info** %6, align 8
  %25 = icmp eq %struct.fib_info* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.lag_mp*, %struct.lag_mp** %7, align 8
  %28 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %27, i32 0, i32 0
  store %struct.fib_info* null, %struct.fib_info** %28, align 8
  br label %29

29:                                               ; preds = %26, %20
  br label %137

30:                                               ; preds = %3
  %31 = load %struct.fib_info*, %struct.fib_info** %6, align 8
  %32 = call i32 @fib_info_num_path(%struct.fib_info* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %37 = call i64 @__mlx5_lag_is_active(%struct.mlx5_lag* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.fib_info*, %struct.fib_info** %6, align 8
  %41 = call %struct.fib_nh* @fib_info_nh(%struct.fib_info* %40, i32 0)
  store %struct.fib_nh* %41, %struct.fib_nh** %11, align 8
  %42 = load %struct.fib_nh*, %struct.fib_nh** %11, align 8
  %43 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.net_device*
  store %struct.net_device* %45, %struct.net_device** %12, align 8
  %46 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %47 = load %struct.net_device*, %struct.net_device** %12, align 8
  %48 = call i32 @mlx5_lag_dev_get_netdev_idx(%struct.mlx5_lag* %46, %struct.net_device* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = call i32 @mlx5_lag_set_port_affinity(%struct.mlx5_lag* %49, i32 %51)
  br label %53

53:                                               ; preds = %39, %35
  br label %137

54:                                               ; preds = %30
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %137

58:                                               ; preds = %54
  %59 = load %struct.fib_info*, %struct.fib_info** %6, align 8
  %60 = call %struct.fib_nh* @fib_info_nh(%struct.fib_info* %59, i32 0)
  store %struct.fib_nh* %60, %struct.fib_nh** %8, align 8
  %61 = load %struct.fib_info*, %struct.fib_info** %6, align 8
  %62 = call %struct.fib_nh* @fib_info_nh(%struct.fib_info* %61, i32 1)
  store %struct.fib_nh* %62, %struct.fib_nh** %9, align 8
  %63 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %64 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %65, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %58
  %74 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %75 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %76, %82
  br i1 %83, label %114, label %84

84:                                               ; preds = %73, %58
  %85 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %86 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %87, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %84
  %96 = load %struct.fib_nh*, %struct.fib_nh** %9, align 8
  %97 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %100 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %98, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %95, %84
  %107 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %108 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @mlx5_core_warn(i32 %112, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %137

114:                                              ; preds = %95, %73
  %115 = load %struct.lag_mp*, %struct.lag_mp** %7, align 8
  %116 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %115, i32 0, i32 0
  %117 = load %struct.fib_info*, %struct.fib_info** %116, align 8
  %118 = icmp ne %struct.fib_info* %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %114
  %120 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %121 = call i64 @__mlx5_lag_is_active(%struct.mlx5_lag* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %125 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %124, i32 0, i32 0
  %126 = bitcast %struct.lag_tracker* %14 to i8*
  %127 = bitcast %struct.lag_tracker* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 8 %127, i64 4, i1 false)
  %128 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %129 = load i32, i32* @MLX5_LAG_FLAG_MULTIPATH, align 4
  %130 = call i32 @mlx5_activate_lag(%struct.mlx5_lag* %128, %struct.lag_tracker* %14, i32 %129)
  br label %131

131:                                              ; preds = %123, %119, %114
  %132 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %133 = call i32 @mlx5_lag_set_port_affinity(%struct.mlx5_lag* %132, i32 0)
  %134 = load %struct.fib_info*, %struct.fib_info** %6, align 8
  %135 = load %struct.lag_mp*, %struct.lag_mp** %7, align 8
  %136 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %135, i32 0, i32 0
  store %struct.fib_info* %134, %struct.fib_info** %136, align 8
  br label %137

137:                                              ; preds = %131, %106, %57, %53, %29
  ret void
}

declare dso_local i32 @fib_info_num_path(%struct.fib_info*) #1

declare dso_local i64 @__mlx5_lag_is_active(%struct.mlx5_lag*) #1

declare dso_local %struct.fib_nh* @fib_info_nh(%struct.fib_info*, i32) #1

declare dso_local i32 @mlx5_lag_dev_get_netdev_idx(%struct.mlx5_lag*, %struct.net_device*) #1

declare dso_local i32 @mlx5_lag_set_port_affinity(%struct.mlx5_lag*, i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5_activate_lag(%struct.mlx5_lag*, %struct.lag_tracker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
