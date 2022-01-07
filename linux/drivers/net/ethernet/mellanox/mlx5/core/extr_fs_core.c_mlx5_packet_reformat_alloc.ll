; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_packet_reformat_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_packet_reformat_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_pkt_reformat = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlx5_flow_root_namespace*, i32, i64, i8*, i32, %struct.mlx5_pkt_reformat*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_pkt_reformat* @mlx5_packet_reformat_alloc(%struct.mlx5_core_dev* %0, i32 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_pkt_reformat*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_pkt_reformat*, align 8
  %13 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.mlx5_flow_root_namespace* @get_root_namespace(%struct.mlx5_core_dev* %15, i32 %16)
  store %struct.mlx5_flow_root_namespace* %17, %struct.mlx5_flow_root_namespace** %13, align 8
  %18 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %13, align 8
  %19 = icmp ne %struct.mlx5_flow_root_namespace* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.mlx5_pkt_reformat* @ERR_PTR(i32 %22)
  store %struct.mlx5_pkt_reformat* %23, %struct.mlx5_pkt_reformat** %6, align 8
  br label %61

24:                                               ; preds = %5
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx5_pkt_reformat* @kzalloc(i32 8, i32 %25)
  store %struct.mlx5_pkt_reformat* %26, %struct.mlx5_pkt_reformat** %12, align 8
  %27 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %12, align 8
  %28 = icmp ne %struct.mlx5_pkt_reformat* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.mlx5_pkt_reformat* @ERR_PTR(i32 %31)
  store %struct.mlx5_pkt_reformat* %32, %struct.mlx5_pkt_reformat** %6, align 8
  br label %61

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %12, align 8
  %36 = getelementptr inbounds %struct.mlx5_pkt_reformat, %struct.mlx5_pkt_reformat* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %12, align 8
  %39 = getelementptr inbounds %struct.mlx5_pkt_reformat, %struct.mlx5_pkt_reformat* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %13, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.mlx5_flow_root_namespace*, i32, i64, i8*, i32, %struct.mlx5_pkt_reformat*)*, i32 (%struct.mlx5_flow_root_namespace*, i32, i64, i8*, i32, %struct.mlx5_pkt_reformat*)** %43, align 8
  %45 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %12, align 8
  %51 = call i32 %44(%struct.mlx5_flow_root_namespace* %45, i32 %46, i64 %47, i8* %48, i32 %49, %struct.mlx5_pkt_reformat* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %33
  %55 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %12, align 8
  %56 = call i32 @kfree(%struct.mlx5_pkt_reformat* %55)
  %57 = load i32, i32* %14, align 4
  %58 = call %struct.mlx5_pkt_reformat* @ERR_PTR(i32 %57)
  store %struct.mlx5_pkt_reformat* %58, %struct.mlx5_pkt_reformat** %6, align 8
  br label %61

59:                                               ; preds = %33
  %60 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %12, align 8
  store %struct.mlx5_pkt_reformat* %60, %struct.mlx5_pkt_reformat** %6, align 8
  br label %61

61:                                               ; preds = %59, %54, %29, %20
  %62 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %6, align 8
  ret %struct.mlx5_pkt_reformat* %62
}

declare dso_local %struct.mlx5_flow_root_namespace* @get_root_namespace(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_pkt_reformat* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_pkt_reformat* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_pkt_reformat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
