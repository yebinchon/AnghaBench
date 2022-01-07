; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_default_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_default_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_en_cq***, i64*, i64*, i32*, i32, i32, %struct.mlx4_en_cq**, %struct.TYPE_2__* }
%struct.mlx4_en_cq = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MLX4_EN_RX_COAL_TARGET = common dso_local global i32 0, align 4
@MLX4_EN_RX_COAL_TIME = common dso_local global i32 0, align 4
@MLX4_EN_TX_COAL_PKTS = common dso_local global i32 0, align 4
@MLX4_EN_TX_COAL_TIME = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Default coalescing params for mtu:%d - rx_frames:%d rx_usecs:%d\0A\00", align 1
@MLX4_EN_AUTO_CONF = common dso_local global i32 0, align 4
@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@MLX4_EN_RX_RATE_LOW = common dso_local global i32 0, align 4
@MLX4_EN_RX_COAL_TIME_LOW = common dso_local global i32 0, align 4
@MLX4_EN_RX_RATE_HIGH = common dso_local global i32 0, align 4
@MLX4_EN_RX_COAL_TIME_HIGH = common dso_local global i32 0, align 4
@MLX4_EN_SAMPLE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*)* @mlx4_en_set_default_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_set_default_moderation(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca %struct.mlx4_en_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %6 = load i32, i32* @MLX4_EN_RX_COAL_TARGET, align 4
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 17
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MLX4_EN_RX_COAL_TIME, align 4
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 16
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @MLX4_EN_TX_COAL_PKTS, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @MLX4_EN_TX_COAL_TIME, align 4
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @INTR, align 4
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 19
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @en_dbg(i32 %18, %struct.mlx4_en_priv* %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %75, %1
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %32
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 18
  %41 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %41, i64 %43
  %45 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %44, align 8
  store %struct.mlx4_en_cq* %45, %struct.mlx4_en_cq** %3, align 8
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %46, i32 0, i32 17
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MLX4_EN_AUTO_CONF, align 4
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 15
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 14
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 0, i64* %68, align 8
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %69, i32 0, i32 13
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %38
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %32

78:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %120, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %116, %83
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %85, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %84
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %95, i32 0, i32 12
  %97 = load %struct.mlx4_en_cq***, %struct.mlx4_en_cq**** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %97, i64 %99
  %101 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %101, i64 %103
  %105 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %104, align 8
  store %struct.mlx4_en_cq* %105, %struct.mlx4_en_cq** %3, align 8
  %106 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %107 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %115 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %94
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %84

119:                                              ; preds = %84
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %79

123:                                              ; preds = %79
  %124 = load i32, i32* @MLX4_EN_RX_RATE_LOW, align 4
  %125 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %126 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @MLX4_EN_RX_COAL_TIME_LOW, align 4
  %128 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %129 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @MLX4_EN_RX_RATE_HIGH, align 4
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @MLX4_EN_RX_COAL_TIME_HIGH, align 4
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @MLX4_EN_SAMPLE_INTERVAL, align 4
  %137 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %140 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %142 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %141, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %144 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
