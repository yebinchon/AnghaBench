; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_build_tc_tx_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_build_tc_tx_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_ets = type { i32*, i32* }

@MLX5E_MAX_BW_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee_ets*, i32*, i32*, i32)* @mlx5e_build_tc_tx_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_tc_tx_bw(%struct.ieee_ets* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee_ets* %0, %struct.ieee_ets** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %40, %4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %19 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 130
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %28 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %26, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @MLX5E_MAX_BW_ALLOC, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %43
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %101, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %104

55:                                               ; preds = %51
  %56 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %57 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %100 [
    i32 128, label %63
    i32 129, label %69
    i32 130, label %75
  ]

63:                                               ; preds = %55
  %64 = load i32, i32* @MLX5E_MAX_BW_ALLOC, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %100

69:                                               ; preds = %55
  %70 = load i32, i32* @MLX5E_MAX_BW_ALLOC, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %100

75:                                               ; preds = %55
  %76 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %77 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %86 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  br label %94

92:                                               ; preds = %75
  %93 = load i32, i32* %9, align 4
  br label %94

94:                                               ; preds = %92, %84
  %95 = phi i32 [ %91, %84 ], [ %93, %92 ]
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %55, %94, %69, %63
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %51

104:                                              ; preds = %51
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* @MLX5E_MAX_BW_ALLOC, align 4
  %109 = load i32, i32* %11, align 4
  %110 = srem i32 %108, %109
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %107, %104
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
