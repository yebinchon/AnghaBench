; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_check_required_hca_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_check_required_hca_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_IB = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ipoib_enhanced_offloads = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"IPoIB enhanced offloads are not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5i_check_required_hca_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_check_required_hca_cap(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %5 = load i32, i32* @port_type, align 4
  %6 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %4, i32 %5)
  %7 = load i64, i64* @MLX5_CAP_PORT_TYPE_IB, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load i32, i32* @ipoib_enhanced_offloads, align 4
  %15 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %17, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
