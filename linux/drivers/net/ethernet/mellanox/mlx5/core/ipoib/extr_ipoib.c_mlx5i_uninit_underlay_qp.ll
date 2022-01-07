; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_uninit_underlay_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_uninit_underlay_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev*, %struct.mlx5i_priv* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5i_priv = type { i32 }
%struct.mlx5_qp_context = type { i32 }

@MLX5_CMD_OP_2RST_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to modify qp 2RST, err: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5i_uninit_underlay_qp(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5i_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_qp_context, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 1
  %9 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %8, align 8
  store %struct.mlx5i_priv* %9, %struct.mlx5i_priv** %3, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %4, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = load i32, i32* @MLX5_CMD_OP_2RST_QP, align 4
  %15 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %15, i32 0, i32 0
  %17 = call i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev* %13, i32 %14, i32 0, %struct.mlx5_qp_context* %5, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev*, i32, i32, %struct.mlx5_qp_context*, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
