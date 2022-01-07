; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_srq_get_mtt_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_srq_get_mtt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_srq_context = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_srq_context*)* @srq_get_mtt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srq_get_mtt_size(%struct.mlx4_srq_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_srq_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_srq_context* %0, %struct.mlx4_srq_context** %3, align 8
  %7 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @be32_to_cpu(i32 %9)
  %11 = ashr i32 %10, 24
  %12 = and i32 %11, 15
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 7
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 63
  %21 = add nsw i32 %20, 12
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %24, 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = shl i32 1, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
