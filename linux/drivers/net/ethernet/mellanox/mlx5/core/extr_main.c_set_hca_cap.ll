; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_set_hca_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_set_hca_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"handle_hca_cap failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"handle_hca_cap_atomic failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"handle_hca_cap_odp failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @set_hca_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hca_cap(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = call i32 @handle_hca_cap(%struct.mlx5_core_dev* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %13 = call i32 @handle_hca_cap_atomic(%struct.mlx5_core_dev* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %18 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %21 = call i32 @handle_hca_cap_odp(%struct.mlx5_core_dev* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %26 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %24, %16, %8
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @handle_hca_cap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @handle_hca_cap_atomic(%struct.mlx5_core_dev*) #1

declare dso_local i32 @handle_hca_cap_odp(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
