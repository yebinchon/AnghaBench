; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vfs_changed_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vfs_changed_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_eswitch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@query_esw_functions_out = common dso_local global i32 0, align 4
@host_params_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, i32*)* @esw_vfs_changed_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_vfs_changed_event_handler(%struct.mlx5_eswitch* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @query_esw_functions_out, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @host_params_context, i32 0, i32 1), align 4
  %11 = call i8* @MLX5_GET(i32 %8, i32* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @query_esw_functions_out, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @host_params_context, i32 0, i32 0), align 4
  %16 = call i8* @MLX5_GET(i32 %13, i32* %14, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %2
  br label %54

28:                                               ; preds = %24
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @esw_offloads_unload_vf_reps(%struct.mlx5_eswitch* %35, i64 %39)
  br label %49

41:                                               ; preds = %28
  %42 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @esw_offloads_load_vf_reps(%struct.mlx5_eswitch* %42, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %54

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %47, %27
  ret void
}

declare dso_local i8* @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @esw_offloads_unload_vf_reps(%struct.mlx5_eswitch*, i64) #1

declare dso_local i32 @esw_offloads_load_vf_reps(%struct.mlx5_eswitch*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
