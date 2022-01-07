; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_update_num_of_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_update_num_of_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlx5_eswitch = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@MLX5_ESWITCH_NONE = common dso_local global i64 0, align 8
@query_esw_functions_out = common dso_local global i32 0, align 4
@host_params_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_eswitch_update_num_of_vfs(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MLX5_ESWITCH_NONE, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlx5_core_is_ecpf_esw_manager(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @mlx5_esw_query_functions(i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %42

32:                                               ; preds = %23
  %33 = load i32, i32* @query_esw_functions_out, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @host_params_context, i32 0, i32 0), align 4
  %36 = call i32 @MLX5_GET(i32 %33, i32* %34, i32 %35)
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @kvfree(i32* %40)
  br label %42

42:                                               ; preds = %32, %31, %18
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mlx5_core_is_ecpf_esw_manager(i32) #1

declare dso_local i32* @mlx5_esw_query_functions(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
