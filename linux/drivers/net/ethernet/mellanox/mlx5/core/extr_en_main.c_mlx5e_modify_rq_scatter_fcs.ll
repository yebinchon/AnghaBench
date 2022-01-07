; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_rq_scatter_fcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_rq_scatter_fcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.mlx5e_channel* }
%struct.mlx5e_channel = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@modify_rq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@rq_state = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@modify_bitmask = common dso_local global i32 0, align 4
@MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_SCATTER_FCS = common dso_local global i32 0, align 4
@scatter_fcs = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, i32)* @mlx5e_modify_rq_scatter_fcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_modify_rq_scatter_fcs(%struct.mlx5e_rq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_channel*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %13, i32 0, i32 1
  %15 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %14, align 8
  store %struct.mlx5e_channel* %15, %struct.mlx5e_channel** %6, align 8
  %16 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %16, i32 0, i32 0
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %17, align 8
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %7, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 0
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %8, align 8
  %22 = load i8*, i8** @modify_rq_in, align 8
  %23 = call i32 @MLX5_ST_SZ_BYTES(i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kvzalloc(i32 %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %2
  %33 = load i8*, i8** @modify_rq_in, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* @ctx, align 4
  %36 = call i8* @MLX5_ADDR_OF(i8* %33, i8* %34, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** @modify_rq_in, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @rq_state, align 4
  %40 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %41 = call i32 @MLX5_SET(i8* %37, i8* %38, i32 %39, i32 %40)
  %42 = load i8*, i8** @modify_rq_in, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @modify_bitmask, align 4
  %45 = load i32, i32* @MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_SCATTER_FCS, align 4
  %46 = call i32 @MLX5_SET64(i8* %42, i8* %43, i32 %44, i32 %45)
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @scatter_fcs, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @state, align 4
  %55 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %56 = call i32 @MLX5_SET(i8* %52, i8* %53, i32 %54, i32 %55)
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %58 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @mlx5_core_modify_rq(%struct.mlx5_core_dev* %57, i32 %60, i8* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @kvfree(i8* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %32, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_rq(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
