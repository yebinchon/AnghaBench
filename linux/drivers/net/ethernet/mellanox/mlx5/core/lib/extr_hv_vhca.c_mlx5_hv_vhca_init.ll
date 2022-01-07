; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca = type { %struct.mlx5_hv_vhca**, i32 }
%struct.mlx5_hv_vhca_agent = type { %struct.mlx5_hv_vhca_agent**, i32 }

@mlx5_hv_vhca_invalidate = common dso_local global i32 0, align 4
@MLX5_HV_VHCA_AGENT_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_hv_vhca_init(%struct.mlx5_hv_vhca* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_hv_vhca*, align 8
  %4 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_hv_vhca* %0, %struct.mlx5_hv_vhca** %3, align 8
  %6 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %7 = bitcast %struct.mlx5_hv_vhca* %6 to %struct.mlx5_hv_vhca_agent*
  %8 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %12 = bitcast %struct.mlx5_hv_vhca* %11 to %struct.mlx5_hv_vhca_agent*
  %13 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent* %12)
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %19 = bitcast %struct.mlx5_hv_vhca* %18 to %struct.mlx5_hv_vhca_agent*
  %20 = load i32, i32* @mlx5_hv_vhca_invalidate, align 4
  %21 = call i32 @mlx5_hv_register_invalidate(i32 %17, %struct.mlx5_hv_vhca_agent* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %14
  %27 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %28 = bitcast %struct.mlx5_hv_vhca* %27 to %struct.mlx5_hv_vhca_agent*
  %29 = call %struct.mlx5_hv_vhca_agent* @mlx5_hv_vhca_control_agent_create(%struct.mlx5_hv_vhca_agent* %28)
  store %struct.mlx5_hv_vhca_agent* %29, %struct.mlx5_hv_vhca_agent** %4, align 8
  %30 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %4, align 8
  %31 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mlx5_hv_unregister_invalidate(i32 %36)
  %38 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %4, align 8
  %39 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent* %38)
  store i32 %39, i32* %2, align 4
  br label %48

40:                                               ; preds = %26
  %41 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %4, align 8
  %42 = bitcast %struct.mlx5_hv_vhca_agent* %41 to %struct.mlx5_hv_vhca*
  %43 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %43, i32 0, i32 0
  %45 = load %struct.mlx5_hv_vhca**, %struct.mlx5_hv_vhca*** %44, align 8
  %46 = load i64, i64* @MLX5_HV_VHCA_AGENT_CONTROL, align 8
  %47 = getelementptr inbounds %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %45, i64 %46
  store %struct.mlx5_hv_vhca* %42, %struct.mlx5_hv_vhca** %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %40, %33, %24, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @mlx5_hv_register_invalidate(i32, %struct.mlx5_hv_vhca_agent*, i32) #1

declare dso_local %struct.mlx5_hv_vhca_agent* @mlx5_hv_vhca_control_agent_create(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @mlx5_hv_unregister_invalidate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
