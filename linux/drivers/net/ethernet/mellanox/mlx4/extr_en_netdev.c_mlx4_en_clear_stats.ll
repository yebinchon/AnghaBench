; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_clear_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32*, i32, %struct.TYPE_2__**, %struct.mlx4_en_tx_ring***, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_en_dev* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.mlx4_en_tx_ring = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx4_en_dev = type { i32 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed dumping statistics\0A\00", align 1
@TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mlx4_en_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_clear_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca %struct.mlx4_en_tx_ring**, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx4_en_priv* %8, %struct.mlx4_en_priv** %3, align 8
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 13
  %11 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  store %struct.mlx4_en_dev* %11, %struct.mlx4_en_dev** %4, align 8
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mlx4_is_slave(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @mlx4_en_DUMP_ETH_STATS(%struct.mlx4_en_dev* %18, i32 %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @HW, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %27 = call i32 @en_dbg(i32 %25, %struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %17
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 11
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 10
  %35 = call i32 @memset(i32* %34, i32 0, i32 4)
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 9
  %38 = call i32 @memset(i32* %37, i32 0, i32 4)
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 8
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 7
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 6
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %48, i32 0, i32 5
  %50 = call i32 @memset(i32* %49, i32 0, i32 4)
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 4
  %53 = call i32 @memset(i32* %52, i32 0, i32 4)
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 3
  %56 = load %struct.mlx4_en_tx_ring***, %struct.mlx4_en_tx_ring**** %55, align 8
  %57 = load i64, i64* @TX, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %56, i64 %57
  %59 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %58, align 8
  store %struct.mlx4_en_tx_ring** %59, %struct.mlx4_en_tx_ring*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %118, %29
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @TX, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %61, %67
  br i1 %68, label %69, label %121

69:                                               ; preds = %60
  %70 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %70, i64 %72
  %74 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %73, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %74, i32 0, i32 7
  store i64 0, i64* %75, align 8
  %76 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %76, i64 %78
  %80 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %79, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %80, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %82, i64 %84
  %86 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %85, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %88, i64 %90
  %92 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %91, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %94, i64 %96
  %98 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %97, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %100, i64 %102
  %104 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %103, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %106, i64 %108
  %110 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %109, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %112, i64 %114
  %116 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %115, align 8
  %117 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %69
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %60

121:                                              ; preds = %60
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %169, %121
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %172

128:                                              ; preds = %122
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %131, i64 %133
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %139, i64 %141
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %146 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %147, i64 %149
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  store i64 0, i64* %152, align 8
  %153 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %154 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %155, i64 %157
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %162 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %163, i64 %165
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %128
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %122

172:                                              ; preds = %122
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_is_slave(i32) #1

declare dso_local i64 @mlx4_en_DUMP_ETH_STATS(%struct.mlx4_en_dev*, i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
