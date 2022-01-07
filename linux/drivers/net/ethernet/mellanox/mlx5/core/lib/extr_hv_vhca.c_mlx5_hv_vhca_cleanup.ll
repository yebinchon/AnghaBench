; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca = type { i32, i32, %struct.mlx5_hv_vhca_agent** }
%struct.mlx5_hv_vhca_agent = type { i32 }

@MLX5_HV_VHCA_AGENT_CONTROL = common dso_local global i64 0, align 8
@MLX5_HV_VHCA_AGENT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_hv_vhca_cleanup(%struct.mlx5_hv_vhca* %0) #0 {
  %2 = alloca %struct.mlx5_hv_vhca*, align 8
  %3 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_hv_vhca* %0, %struct.mlx5_hv_vhca** %2, align 8
  %5 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %2, align 8
  %6 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  %10 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %10, i32 0, i32 2
  %12 = load %struct.mlx5_hv_vhca_agent**, %struct.mlx5_hv_vhca_agent*** %11, align 8
  %13 = load i64, i64* @MLX5_HV_VHCA_AGENT_CONTROL, align 8
  %14 = getelementptr inbounds %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %12, i64 %13
  %15 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %14, align 8
  store %struct.mlx5_hv_vhca_agent* %15, %struct.mlx5_hv_vhca_agent** %3, align 8
  %16 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %3, align 8
  %17 = icmp ne %struct.mlx5_hv_vhca_agent* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %3, align 8
  %20 = call i32 @mlx5_hv_vhca_control_agent_destroy(%struct.mlx5_hv_vhca_agent* %19)
  br label %21

21:                                               ; preds = %18, %9
  %22 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %38, %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MLX5_HV_VHCA_AGENT_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %30, i32 0, i32 2
  %32 = load %struct.mlx5_hv_vhca_agent**, %struct.mlx5_hv_vhca_agent*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %32, i64 %34
  %36 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %35, align 8
  %37 = call i32 @WARN_ON(%struct.mlx5_hv_vhca_agent* %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %2, align 8
  %43 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mlx5_hv_unregister_invalidate(i32 %47)
  br label %49

49:                                               ; preds = %41, %8
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca*) #1

declare dso_local i32 @mlx5_hv_vhca_control_agent_destroy(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_hv_unregister_invalidate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
