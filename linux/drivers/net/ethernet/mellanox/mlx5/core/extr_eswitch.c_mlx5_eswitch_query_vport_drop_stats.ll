; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_query_vport_drop_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_query_vport_drop_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i64 }
%struct.mlx5_vport = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5_vport_drop_stats = type { i32, i32 }

@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@receive_discard_vport_down = common dso_local global i32 0, align 4
@transmit_discard_vport_down = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_vport*, %struct.mlx5_vport_drop_stats*)* @mlx5_eswitch_query_vport_drop_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_eswitch_query_vport_drop_stats(%struct.mlx5_core_dev* %0, %struct.mlx5_vport* %1, %struct.mlx5_vport_drop_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_vport*, align 8
  %7 = alloca %struct.mlx5_vport_drop_stats*, align 8
  %8 = alloca %struct.mlx5_eswitch*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %6, align 8
  store %struct.mlx5_vport_drop_stats* %2, %struct.mlx5_vport_drop_stats** %7, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %15, align 8
  store %struct.mlx5_eswitch* %16, %struct.mlx5_eswitch** %8, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %106

28:                                               ; preds = %21
  %29 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %36 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mlx5_vport_drop_stats*, %struct.mlx5_vport_drop_stats** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_vport_drop_stats, %struct.mlx5_vport_drop_stats* %40, i32 0, i32 1
  %42 = call i32 @mlx5_fc_query(%struct.mlx5_core_dev* %35, i64 %39, i32* %41, i64* %11)
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %51 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mlx5_vport_drop_stats*, %struct.mlx5_vport_drop_stats** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5_vport_drop_stats, %struct.mlx5_vport_drop_stats* %55, i32 0, i32 0
  %57 = call i32 @mlx5_fc_query(%struct.mlx5_core_dev* %50, i64 %54, i32* %56, i64* %11)
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %60 = load i32, i32* @receive_discard_vport_down, align 4
  %61 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %65 = load i32, i32* @transmit_discard_vport_down, align 4
  %66 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %106

69:                                               ; preds = %63, %58
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %71 = load %struct.mlx5_vport*, %struct.mlx5_vport** %6, align 8
  %72 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mlx5_query_vport_down_stats(%struct.mlx5_core_dev* %70, i32 %73, i32 1, i64* %9, i64* %10)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %106

79:                                               ; preds = %69
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %81 = load i32, i32* @receive_discard_vport_down, align 4
  %82 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.mlx5_vport_drop_stats*, %struct.mlx5_vport_drop_stats** %7, align 8
  %87 = getelementptr inbounds %struct.mlx5_vport_drop_stats, %struct.mlx5_vport_drop_stats* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  br label %92

92:                                               ; preds = %84, %79
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %94 = load i32, i32* @transmit_discard_vport_down, align 4
  %95 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.mlx5_vport_drop_stats*, %struct.mlx5_vport_drop_stats** %7, align 8
  %100 = getelementptr inbounds %struct.mlx5_vport_drop_stats, %struct.mlx5_vport_drop_stats* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  br label %105

105:                                              ; preds = %97, %92
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %77, %68, %27
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @mlx5_fc_query(%struct.mlx5_core_dev*, i64, i32*, i64*) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_query_vport_down_stats(%struct.mlx5_core_dev*, i32, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
