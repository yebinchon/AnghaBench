; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32*, i32, i64*, i32, %struct.TYPE_4__*, i64*, i64**, i64**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*)* @mlx4_en_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_free_resources(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %111, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %114

9:                                                ; preds = %5
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %91, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %94

20:                                               ; preds = %10
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 7
  %23 = load i64**, i64*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64*, i64** %23, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %20
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 7
  %32 = load i64**, i64*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %29
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 7
  %46 = load i64**, i64*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64*, i64** %46, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = call i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv* %43, i64* %53)
  br label %55

55:                                               ; preds = %42, %29, %20
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %56, i32 0, i32 6
  %58 = load i64**, i64*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %90

64:                                               ; preds = %55
  %65 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %65, i32 0, i32 6
  %67 = load i64**, i64*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %64
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %79 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %79, i32 0, i32 6
  %81 = load i64**, i64*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %78, i64* %88)
  br label %90

90:                                               ; preds = %77, %64, %55
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %10

94:                                               ; preds = %10
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %95, i32 0, i32 7
  %97 = load i64**, i64*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64*, i64** %97, i64 %99
  %101 = load i64*, i64** %100, align 8
  %102 = call i32 @kfree(i64* %101)
  %103 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %104 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %103, i32 0, i32 6
  %105 = load i64**, i64*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64*, i64** %105, i64 %107
  %109 = load i64*, i64** %108, align 8
  %110 = call i32 @kfree(i64* %109)
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %5

114:                                              ; preds = %5
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %166, %114
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %118 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %115
  %122 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %123 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %122, i32 0, i32 5
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %121
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %132 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %133 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %132, i32 0, i32 5
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %139 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %138, i32 0, i32 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %144 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv* %131, i64* %137, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %130, %121
  %148 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %148, i32 0, i32 2
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %158 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %159 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %158, i32 0, i32 2
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %157, i64* %163)
  br label %165

165:                                              ; preds = %156, %147
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %3, align 4
  br label %115

169:                                              ; preds = %115
  ret void
}

declare dso_local i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv*, i64*) #1

declare dso_local i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv*, i64*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
