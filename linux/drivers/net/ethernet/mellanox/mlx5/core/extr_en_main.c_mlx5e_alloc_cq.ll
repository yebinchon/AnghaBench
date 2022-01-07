; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_cq_param = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.mlx5e_cq = type { %struct.mlx5e_channel*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_cq_param*, %struct.mlx5e_cq*)* @mlx5e_alloc_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_cq(%struct.mlx5e_channel* %0, %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq* %2) #0 {
  %4 = alloca %struct.mlx5e_channel*, align 8
  %5 = alloca %struct.mlx5e_cq_param*, align 8
  %6 = alloca %struct.mlx5e_cq*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %4, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %5, align 8
  store %struct.mlx5e_cq* %2, %struct.mlx5e_cq** %6, align 8
  %9 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %7, align 8
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @cpu_to_node(i32 %16)
  %18 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @cpu_to_node(i32 %23)
  %25 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %34 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %5, align 8
  %35 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %6, align 8
  %36 = call i32 @mlx5e_alloc_cq_common(%struct.mlx5_core_dev* %33, %struct.mlx5e_cq_param* %34, %struct.mlx5e_cq* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %37, i32 0, i32 0
  %39 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %42 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %42, i32 0, i32 0
  store %struct.mlx5e_channel* %41, %struct.mlx5e_channel** %43, align 8
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i8* @cpu_to_node(i32) #1

declare dso_local i32 @mlx5e_alloc_cq_common(%struct.mlx5_core_dev*, %struct.mlx5e_cq_param*, %struct.mlx5e_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
