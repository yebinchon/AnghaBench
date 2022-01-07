; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_config_rss_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_config_rss_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_11__*, %struct.mlx4_en_dev* }
%struct.TYPE_11__ = type { i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_en_rx_ring = type { %struct.TYPE_12__, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.mlx4_qp_context = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate qp #%x\0A\00", align 1
@mlx4_en_sqp_event = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_FCS_KEEP = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, i32, %struct.mlx4_en_rx_ring*, i32*, %struct.mlx4_qp*)* @mlx4_en_config_rss_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_config_rss_qp(%struct.mlx4_en_priv* %0, i32 %1, %struct.mlx4_en_rx_ring* %2, i32* %3, %struct.mlx4_qp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_rx_ring*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mlx4_qp*, align 8
  %12 = alloca %struct.mlx4_en_dev*, align 8
  %13 = alloca %struct.mlx4_qp_context*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_en_rx_ring* %2, %struct.mlx4_en_rx_ring** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.mlx4_qp* %4, %struct.mlx4_qp** %11, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 1
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlx4_qp_context* @kmalloc(i32 8, i32 %18)
  store %struct.mlx4_qp_context* %19, %struct.mlx4_qp_context** %13, align 8
  %20 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %21 = icmp ne %struct.mlx4_qp_context* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %130

25:                                               ; preds = %5
  %26 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %31 = call i32 @mlx4_qp_alloc(%struct.TYPE_13__* %28, i32 %29, %struct.mlx4_qp* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @en_err(%struct.mlx4_en_priv* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %126

38:                                               ; preds = %25
  %39 = load i32, i32* @mlx4_en_sqp_event, align 4
  %40 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %41 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %43 = call i32 @memset(%struct.mlx4_qp_context* %42, i32 0, i32 8)
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %45 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %56 = call i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv* %44, i32 %47, i32 %50, i32 0, i32 0, i32 %51, i32 %54, i32 -1, %struct.mlx4_qp_context* %55)
  %57 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cpu_to_be64(i32 %61)
  %63 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %64 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MLX4_DEV_CAP_FLAG_FCS_KEEP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %38
  %75 = call i32 @cpu_to_be32(i32 536870912)
  %76 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %77 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NETIF_F_RXFCS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %74
  %89 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %95

91:                                               ; preds = %74
  %92 = load i64, i64* @ETH_FCS_LEN, align 8
  %93 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %88
  br label %99

96:                                               ; preds = %38
  %97 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %95
  %100 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %104 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %107 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @mlx4_qp_to_ready(%struct.TYPE_13__* %102, i32* %105, %struct.mlx4_qp_context* %106, %struct.mlx4_qp* %107, i32* %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %99
  %113 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %117 = call i32 @mlx4_qp_remove(%struct.TYPE_13__* %115, %struct.mlx4_qp* %116)
  %118 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %122 = call i32 @mlx4_qp_free(%struct.TYPE_13__* %120, %struct.mlx4_qp* %121)
  br label %123

123:                                              ; preds = %112, %99
  %124 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %125 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %124)
  br label %126

126:                                              ; preds = %123, %34
  %127 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %128 = call i32 @kfree(%struct.mlx4_qp_context* %127)
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %126, %22
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.mlx4_qp_context* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_qp_alloc(%struct.TYPE_13__*, i32, %struct.mlx4_qp*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @memset(%struct.mlx4_qp_context*, i32, i32) #1

declare dso_local i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv*, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_qp_context*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_qp_to_ready(%struct.TYPE_13__*, i32*, %struct.mlx4_qp_context*, %struct.mlx4_qp*, i32*) #1

declare dso_local i32 @mlx4_qp_remove(%struct.TYPE_13__*, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_qp_free(%struct.TYPE_13__*, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @kfree(%struct.mlx4_qp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
