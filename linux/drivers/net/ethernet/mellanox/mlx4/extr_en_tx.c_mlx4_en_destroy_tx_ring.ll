; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_destroy_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_destroy_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_tx_ring = type { i32*, %struct.mlx4_en_tx_ring*, i32, i32, i32, i32, i32, i64 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Destroying tx ring, qpn: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring** %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_tx_ring**, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.mlx4_en_tx_ring*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_tx_ring** %1, %struct.mlx4_en_tx_ring*** %4, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 0
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %5, align 8
  %10 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %4, align 8
  %11 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %10, align 8
  store %struct.mlx4_en_tx_ring* %11, %struct.mlx4_en_tx_ring** %6, align 8
  %12 = load i32, i32* @DRV, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %14 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @en_dbg(i32 %12, %struct.mlx4_en_priv* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %26, i32 0, i32 6
  %28 = call i32 @mlx4_bf_free(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %33, i32 0, i32 5
  %35 = call i32 @mlx4_qp_remove(i32 %32, i32* %34)
  %36 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %39, i32 0, i32 5
  %41 = call i32 @mlx4_qp_free(i32 %38, i32* %40)
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 0
  %44 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %43, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mlx4_qp_release_range(i32 %46, i32 %49, i32 1)
  %51 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %54, i32 0, i32 3
  %56 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mlx4_free_hwq_res(i32 %53, i32* %55, i32 %58)
  %60 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %60, i32 0, i32 1
  %62 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %61, align 8
  %63 = call i32 @kfree(%struct.mlx4_en_tx_ring* %62)
  %64 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %64, i32 0, i32 1
  store %struct.mlx4_en_tx_ring* null, %struct.mlx4_en_tx_ring** %65, align 8
  %66 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kvfree(i32* %68)
  %70 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %73 = call i32 @kfree(%struct.mlx4_en_tx_ring* %72)
  %74 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %4, align 8
  store %struct.mlx4_en_tx_ring* null, %struct.mlx4_en_tx_ring** %74, align 8
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mlx4_bf_free(i32, i32*) #1

declare dso_local i32 @mlx4_qp_remove(i32, i32*) #1

declare dso_local i32 @mlx4_qp_free(i32, i32*) #1

declare dso_local i32 @mlx4_qp_release_range(i32, i32, i32) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_tx_ring*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
