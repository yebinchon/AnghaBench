; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_pair_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_transobj.c_mlx5_hairpin_pair_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hairpin = type { i32, i32*, i32, i32*, i32 }

@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@vhca_id = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_hairpin*)* @mlx5_hairpin_pair_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_hairpin_pair_queues(%struct.mlx5_hairpin* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_hairpin*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_hairpin* %0, %struct.mlx5_hairpin** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %7
  %14 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %25 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  %26 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @vhca_id, align 4
  %30 = call i32 @MLX5_CAP_GEN(i32 %28, i32 %29)
  %31 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlx5_hairpin_modify_sq(i32 %16, i32 %23, i32 %24, i32 %25, i32 %30, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %13
  br label %113

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %47
  %54 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %65 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %66 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @vhca_id, align 4
  %70 = call i32 @MLX5_CAP_GEN(i32 %68, i32 %69)
  %71 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %72 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mlx5_hairpin_modify_rq(i32 %56, i32 %63, i32 %64, i32 %65, i32 %70, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %53
  br label %87

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %47

86:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %137

87:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %94 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %104 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %105 = call i32 @mlx5_hairpin_modify_rq(i32 %95, i32 %102, i32 %103, i32 %104, i32 0, i32 0)
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %88

109:                                              ; preds = %88
  %110 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %111 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %41
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %120 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %3, align 8
  %123 = getelementptr inbounds %struct.mlx5_hairpin, %struct.mlx5_hairpin* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  %130 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %131 = call i32 @mlx5_hairpin_modify_sq(i32 %121, i32 %128, i32 %129, i32 %130, i32 0, i32 0)
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %114

135:                                              ; preds = %114
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %86
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @mlx5_hairpin_modify_sq(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_hairpin_modify_rq(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
