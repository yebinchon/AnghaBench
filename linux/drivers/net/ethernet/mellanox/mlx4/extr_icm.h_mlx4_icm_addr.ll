; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.h_mlx4_icm_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.h_mlx4_icm_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_icm_iter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_icm_iter*)* @mlx4_icm_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_icm_addr(%struct.mlx4_icm_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_icm_iter*, align 8
  store %struct.mlx4_icm_iter* %0, %struct.mlx4_icm_iter** %3, align 8
  %4 = load %struct.mlx4_icm_iter*, %struct.mlx4_icm_iter** %3, align 8
  %5 = getelementptr inbounds %struct.mlx4_icm_iter, %struct.mlx4_icm_iter* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.mlx4_icm_iter*, %struct.mlx4_icm_iter** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_icm_iter, %struct.mlx4_icm_iter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.mlx4_icm_iter*, %struct.mlx4_icm_iter** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_icm_iter, %struct.mlx4_icm_iter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.mlx4_icm_iter*, %struct.mlx4_icm_iter** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_icm_iter, %struct.mlx4_icm_iter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.mlx4_icm_iter*, %struct.mlx4_icm_iter** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_icm_iter, %struct.mlx4_icm_iter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i32 @sg_dma_address(i32* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %22, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @sg_dma_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
