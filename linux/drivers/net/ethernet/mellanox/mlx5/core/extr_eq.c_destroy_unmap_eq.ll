; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_destroy_unmap_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_destroy_unmap_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eq = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"failed to destroy a previously created eq: eqn %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eq*)* @destroy_unmap_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_unmap_eq(%struct.mlx5_core_dev* %0, %struct.mlx5_eq* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eq*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_eq* %1, %struct.mlx5_eq** %4, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %8 = call i32 @mlx5_debug_eq_remove(%struct.mlx5_core_dev* %6, %struct.mlx5_eq* %7)
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlx5_cmd_destroy_eq(%struct.mlx5_core_dev* %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @synchronize_irq(i32 %25)
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %28, i32 0, i32 0
  %30 = call i32 @mlx5_buf_free(%struct.mlx5_core_dev* %27, i32* %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @mlx5_debug_eq_remove(%struct.mlx5_core_dev*, %struct.mlx5_eq*) #1

declare dso_local i32 @mlx5_cmd_destroy_eq(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @mlx5_buf_free(%struct.mlx5_core_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
