; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_mr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_mr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mr = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_mr_free(%struct.mlx4_dev* %0, %struct.mlx4_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_mr*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_mr* %1, %struct.mlx4_mr** %5, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %8 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %9 = call i32 @mlx4_mr_free_reserved(%struct.mlx4_dev* %7, %struct.mlx4_mr* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %16 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %21 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @key_to_hw_index(i32 %23)
  %25 = call i32 @mlx4_mpt_free_icm(%struct.mlx4_dev* %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %28 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @key_to_hw_index(i32 %30)
  %32 = call i32 @mlx4_mpt_release(%struct.mlx4_dev* %27, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @mlx4_mr_free_reserved(%struct.mlx4_dev*, %struct.mlx4_mr*) #1

declare dso_local i32 @mlx4_mpt_free_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @mlx4_mpt_release(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
