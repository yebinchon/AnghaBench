; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_stats_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_stats_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.mlx5_hv_vhca_agent*, i32 }
%struct.mlx5_hv_vhca_agent = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_HV_VHCA_AGENT_STATS = common dso_local global i32 0, align 4
@mlx5e_hv_vhca_stats_control = common dso_local global i32 0, align 4
@mlx5e_hv_vhca_stats_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to create hv vhca stats agent, err = %ld\0A\00", align 1
@mlx5e_hv_vhca_stats_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_hv_vhca_stats_create(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = call i32 @mlx5e_hv_vhca_stats_buf_size(%struct.mlx5e_priv* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @kvzalloc(i32 %8, i32 %9)
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX5_HV_VHCA_AGENT_STATS, align 4
  %29 = load i32, i32* @mlx5e_hv_vhca_stats_control, align 4
  %30 = load i32, i32* @mlx5e_hv_vhca_stats_cleanup, align 4
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %32 = call %struct.mlx5_hv_vhca_agent* @mlx5_hv_vhca_agent_create(i32 %27, i32 %28, i32 %29, i32* null, i32 %30, %struct.mlx5e_priv* %31)
  store %struct.mlx5_hv_vhca_agent* %32, %struct.mlx5_hv_vhca_agent** %5, align 8
  %33 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %34 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %22
  %37 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %38 = call i64 @IS_ERR(%struct.mlx5_hv_vhca_agent* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %45 = call i32 @PTR_ERR(%struct.mlx5_hv_vhca_agent* %44)
  %46 = call i32 @netdev_warn(i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %36
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @kvfree(i32 %51)
  %53 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %54 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent* %53)
  store i32 %54, i32* %2, align 4
  br label %65

55:                                               ; preds = %22
  %56 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store %struct.mlx5_hv_vhca_agent* %56, %struct.mlx5_hv_vhca_agent** %59, align 8
  %60 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %61 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* @mlx5e_hv_vhca_stats_work, align 4
  %64 = call i32 @INIT_DELAYED_WORK(i32* %62, i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %55, %47, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mlx5e_hv_vhca_stats_buf_size(%struct.mlx5e_priv*) #1

declare dso_local i32 @kvzalloc(i32, i32) #1

declare dso_local %struct.mlx5_hv_vhca_agent* @mlx5_hv_vhca_agent_create(i32, i32, i32, i32*, i32, %struct.mlx5e_priv*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
