; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_core_qp_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_core_qp_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_qp = type { i32, i32 }
%struct.mbox_info = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_qp_modify(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i8* %3, %struct.mlx5_core_qp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlx5_core_qp*, align 8
  %12 = alloca %struct.mbox_info, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.mlx5_core_qp* %4, %struct.mlx5_core_qp** %11, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %11, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %11, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @modify_qp_mbox_alloc(%struct.mlx5_core_dev* %14, i32 %15, i32 %18, i32 %19, i8* %20, %struct.mbox_info* %12, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %42

29:                                               ; preds = %5
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %31 = getelementptr inbounds %struct.mbox_info, %struct.mbox_info* %12, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.mbox_info, %struct.mbox_info* %12, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.mbox_info, %struct.mbox_info* %12, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.mbox_info, %struct.mbox_info* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %30, i32 %32, i32 %34, i32 %36, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = call i32 @mbox_free(%struct.mbox_info* %12)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %29, %27
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @modify_qp_mbox_alloc(%struct.mlx5_core_dev*, i32, i32, i32, i8*, %struct.mbox_info*, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mbox_free(%struct.mbox_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
