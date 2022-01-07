; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_destroy_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_destroy_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32 }
%struct.mlx4_en_rx_ring = type { i32*, i32, i32, i32 }
%struct.bpf_prog = type { i32 }

@TXBB_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_rx_ring**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca %struct.mlx4_en_rx_ring*, align 8
  %11 = alloca %struct.bpf_prog*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_rx_ring** %1, %struct.mlx4_en_rx_ring*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %13, align 8
  store %struct.mlx4_en_dev* %14, %struct.mlx4_en_dev** %9, align 8
  %15 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %6, align 8
  %16 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %15, align 8
  store %struct.mlx4_en_rx_ring* %16, %struct.mlx4_en_rx_ring** %10, align 8
  %17 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %20, i32 0, i32 1
  %22 = call i32 @lockdep_is_held(i32* %21)
  %23 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %19, i32 %22)
  store %struct.bpf_prog* %23, %struct.bpf_prog** %11, align 8
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %25 = icmp ne %struct.bpf_prog* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %28 = call i32 @bpf_prog_put(%struct.bpf_prog* %27)
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %30, i32 0, i32 2
  %32 = call i32 @xdp_rxq_info_unreg(i32* %31)
  %33 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @TXBB_SIZE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @mlx4_free_hwq_res(i32 %35, i32* %37, i64 %43)
  %45 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kvfree(i32* %47)
  %49 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, align 8
  %52 = call i32 @kfree(%struct.mlx4_en_rx_ring* %51)
  %53 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %6, align 8
  store %struct.mlx4_en_rx_ring* null, %struct.mlx4_en_rx_ring** %53, align 8
  ret void
}

declare dso_local %struct.bpf_prog* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, i32*, i64) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
