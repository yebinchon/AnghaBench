; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_update_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_update_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32*, i32, i32*, i32*, i32*, i32, i32*, i32* }

@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_priv*)* @mlx4_en_update_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_update_priv(%struct.mlx4_en_priv* %0, %struct.mlx4_en_priv* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_priv* %1, %struct.mlx4_en_priv** %4, align 8
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 8
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memcpy(i32* %8, i32* %11, i32 %17)
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memcpy(i32* %21, i32* %24, i32 %30)
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 6
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 6
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %81, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %41
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %37

84:                                               ; preds = %37
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @memcpy(i32* %97, i32* %100, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
