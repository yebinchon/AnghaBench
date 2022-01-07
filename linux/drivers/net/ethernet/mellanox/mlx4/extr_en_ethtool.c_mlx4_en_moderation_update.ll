; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_moderation_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_moderation_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32*, i32, %struct.TYPE_2__**, i64, i32*, i32, i32, i64, %struct.TYPE_2__***, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@MLX4_EN_AUTO_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_moderation_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_moderation_update(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %81, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %84

11:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %77, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %13, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %12
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 8
  %28 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %28, i64 %30
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %25, i32* %37, align 4
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %41, i32 0, i32 8
  %43 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %43, i64 %45
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %40, i32* %52, align 4
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %22
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %59, i32 0, i32 8
  %61 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %61, i64 %63
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %58, %struct.TYPE_2__* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %152

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %22
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %12

80:                                               ; preds = %12
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %7

84:                                               ; preds = %7
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %152

90:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %147, %90
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %150

97:                                               ; preds = %91
  %98 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %103, i64 %105
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %100, i32* %108, align 4
  %109 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %114, i64 %116
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %111, i32* %119, align 4
  %120 = load i32, i32* @MLX4_EN_AUTO_CONF, align 4
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  %127 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %97
  %132 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %133 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %134 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %135, i64 %137
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %132, %struct.TYPE_2__* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %131
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %152

145:                                              ; preds = %131
  br label %146

146:                                              ; preds = %145, %97
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %91

150:                                              ; preds = %91
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %143, %89, %73
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
