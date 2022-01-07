; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_release_rss_steer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_release_rss_steer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_rss_map, %struct.mlx4_en_dev* }
%struct.mlx4_en_rss_map = type { i32, i32*, i32*, i32*, i32 }
%struct.mlx4_en_dev = type { i32 }

@MLX4_QP_STATE_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_release_rss_steer(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca %struct.mlx4_en_dev*, align 8
  %4 = alloca %struct.mlx4_en_rss_map*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 2
  %8 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  store %struct.mlx4_en_dev* %8, %struct.mlx4_en_dev** %3, align 8
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 1
  store %struct.mlx4_en_rss_map* %10, %struct.mlx4_en_rss_map** %4, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %47

15:                                               ; preds = %1
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  %23 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @mlx4_qp_modify(i32 %18, i32* null, i32 %21, i32 %22, i32* null, i32 0, i32 0, i32* %25)
  %27 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @mlx4_qp_remove(i32 %29, i32* %32)
  %34 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @mlx4_qp_free(i32 %36, i32* %39)
  %41 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %15, %1
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %93, %47
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %48
  %55 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  %66 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @mlx4_qp_modify(i32 %57, i32* null, i32 %64, i32 %65, i32* null, i32 0, i32 0, i32* %71)
  %73 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @mlx4_qp_remove(i32 %75, i32* %81)
  %83 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @mlx4_qp_free(i32 %85, i32* %91)
  br label %93

93:                                               ; preds = %54
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %48

96:                                               ; preds = %48
  %97 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %104 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mlx4_qp_release_range(i32 %99, i32 %102, i32 %105)
  ret void
}

declare dso_local i32 @mlx4_qp_modify(i32, i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_qp_remove(i32, i32*) #1

declare dso_local i32 @mlx4_qp_free(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mlx4_qp_release_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
