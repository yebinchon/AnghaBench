; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_alloc_rx_wqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_alloc_rx_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.mlx5_wq_cyc }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wq_cyc = type { i32 }
%struct.mlx5e_rx_wqe_cyc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, i64, i32)* @mlx5e_alloc_rx_wqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_rx_wqes(%struct.mlx5e_rq* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_rq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_wq_cyc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_rx_wqe_cyc*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.mlx5_wq_cyc* %15, %struct.mlx5_wq_cyc** %8, align 8
  %16 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %21, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @mlx5e_xsk_pages_enough_umem(%struct.mlx5e_rq* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %82

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %3
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call %struct.mlx5e_rx_wqe_cyc* @mlx5_wq_cyc_get_wqe(%struct.mlx5_wq_cyc* %46, i64 %50)
  store %struct.mlx5e_rx_wqe_cyc* %51, %struct.mlx5e_rx_wqe_cyc** %12, align 8
  %52 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %53 = load %struct.mlx5e_rx_wqe_cyc*, %struct.mlx5e_rx_wqe_cyc** %12, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = call i32 @mlx5e_alloc_rx_wqe(%struct.mlx5e_rq* %52, %struct.mlx5e_rx_wqe_cyc* %53, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %68

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %41

67:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %82

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %73, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 @mlx5e_dealloc_rx_wqe(%struct.mlx5e_rq* %74, i64 %78)
  br label %69

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %67, %36
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xsk_pages_enough_umem(%struct.mlx5e_rq*, i32) #1

declare dso_local %struct.mlx5e_rx_wqe_cyc* @mlx5_wq_cyc_get_wqe(%struct.mlx5_wq_cyc*, i64) #1

declare dso_local i32 @mlx5e_alloc_rx_wqe(%struct.mlx5e_rq*, %struct.mlx5e_rx_wqe_cyc*, i64) #1

declare dso_local i32 @mlx5e_dealloc_rx_wqe(%struct.mlx5e_rq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
