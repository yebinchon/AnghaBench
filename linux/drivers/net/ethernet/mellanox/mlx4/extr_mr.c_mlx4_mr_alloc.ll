; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_mr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_mr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_mr_alloc(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.mlx4_mr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_mr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.mlx4_mr* %7, %struct.mlx4_mr** %17, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %21 = call i32 @mlx4_mpt_reserve(%struct.mlx4_dev* %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %46

27:                                               ; preds = %8
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.mlx4_mr*, %struct.mlx4_mr** %17, align 8
  %37 = call i32 @mlx4_mr_alloc_reserved(%struct.mlx4_dev* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, %struct.mlx4_mr* %36)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @mlx4_mpt_release(%struct.mlx4_dev* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %27
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @mlx4_mpt_reserve(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_mr_alloc_reserved(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_mr*) #1

declare dso_local i32 @mlx4_mpt_release(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
