; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_slave_num_gids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_slave_num_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_slaves_pport = type { i32 }
%struct.mlx4_active_ports = type { i32 }

@MLX4_ROCE_PF_GIDS = common dso_local global i32 0, align 4
@MLX4_ROCE_MAX_GIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_slave_num_gids(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_slaves_pport, align 4
  %12 = alloca %struct.mlx4_active_ports, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_slaves_pport, align 4
  %15 = alloca %struct.mlx4_active_ports, align 4
  %16 = alloca %struct.mlx4_active_ports, align 4
  %17 = alloca %struct.mlx4_slaves_pport, align 4
  %18 = alloca %struct.mlx4_slaves_pport, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  store i32 %23, i32* %4, align 4
  br label %125

24:                                               ; preds = %3
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %25, i32 %26)
  %28 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %14, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.mlx4_slaves_pport* %11 to i8*
  %30 = bitcast %struct.mlx4_slaves_pport* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %31, i32 %32)
  %34 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %15, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = bitcast %struct.mlx4_active_ports* %12 to i8*
  %36 = bitcast %struct.mlx4_active_ports* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @find_first_bit(i32 %38, i64 %42)
  %44 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @bitmap_weight(i32 %45, i64 %49)
  %51 = add nsw i32 %43, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %91, %24
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %16, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %61 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @bitmap_zero(i32 %59, i64 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sub i32 %65, 1
  %67 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %16, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_bit(i32 %66, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %91

74:                                               ; preds = %57
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %76 = call i32 @mlx4_phys_to_slaves_pport_actv(%struct.mlx4_dev* %75, %struct.mlx4_active_ports* %16)
  %77 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %18, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = bitcast %struct.mlx4_slaves_pport* %17 to i8*
  %79 = bitcast %struct.mlx4_slaves_pport* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %17, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %83 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  %88 = call i32 @bitmap_weight(i32 %81, i64 %87)
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %74, %73
  %92 = load i32, i32* %10, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %53

94:                                               ; preds = %53
  %95 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %11, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %98 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = call i32 @bitmap_weight(i32 %96, i64 %102)
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @MLX4_ROCE_MAX_GIDS, align 4
  %107 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = srem i32 %108, %109
  %111 = icmp sle i32 %105, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %94
  %113 = load i32, i32* @MLX4_ROCE_MAX_GIDS, align 4
  %114 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* %8, align 4
  %117 = sdiv i32 %115, %116
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %125

119:                                              ; preds = %94
  %120 = load i32, i32* @MLX4_ROCE_MAX_GIDS, align 4
  %121 = load i32, i32* @MLX4_ROCE_PF_GIDS, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %8, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %119, %112, %22
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @find_first_bit(i32, i64) #1

declare dso_local i32 @bitmap_weight(i32, i64) #1

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mlx4_phys_to_slaves_pport_actv(%struct.mlx4_dev*, %struct.mlx4_active_ports*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
