; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_modify_header_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_modify_header_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_modify_hdr = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_root_namespace = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlx5_flow_root_namespace*, i32, i32, i8*, %struct.mlx5_modify_hdr*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_modify_hdr* @mlx5_modify_header_alloc(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.mlx5_modify_hdr*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %11 = alloca %struct.mlx5_modify_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.mlx5_flow_root_namespace* @get_root_namespace(%struct.mlx5_core_dev* %13, i32 %14)
  store %struct.mlx5_flow_root_namespace* %15, %struct.mlx5_flow_root_namespace** %10, align 8
  %16 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %17 = icmp ne %struct.mlx5_flow_root_namespace* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mlx5_modify_hdr* @ERR_PTR(i32 %20)
  store %struct.mlx5_modify_hdr* %21, %struct.mlx5_modify_hdr** %5, align 8
  br label %55

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mlx5_modify_hdr* @kzalloc(i32 4, i32 %23)
  store %struct.mlx5_modify_hdr* %24, %struct.mlx5_modify_hdr** %11, align 8
  %25 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %11, align 8
  %26 = icmp ne %struct.mlx5_modify_hdr* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.mlx5_modify_hdr* @ERR_PTR(i32 %29)
  store %struct.mlx5_modify_hdr* %30, %struct.mlx5_modify_hdr** %5, align 8
  br label %55

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %11, align 8
  %34 = getelementptr inbounds %struct.mlx5_modify_hdr, %struct.mlx5_modify_hdr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %36 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mlx5_flow_root_namespace*, i32, i32, i8*, %struct.mlx5_modify_hdr*)*, i32 (%struct.mlx5_flow_root_namespace*, i32, i32, i8*, %struct.mlx5_modify_hdr*)** %38, align 8
  %40 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %11, align 8
  %45 = call i32 %39(%struct.mlx5_flow_root_namespace* %40, i32 %41, i32 %42, i8* %43, %struct.mlx5_modify_hdr* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %11, align 8
  %50 = call i32 @kfree(%struct.mlx5_modify_hdr* %49)
  %51 = load i32, i32* %12, align 4
  %52 = call %struct.mlx5_modify_hdr* @ERR_PTR(i32 %51)
  store %struct.mlx5_modify_hdr* %52, %struct.mlx5_modify_hdr** %5, align 8
  br label %55

53:                                               ; preds = %31
  %54 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %11, align 8
  store %struct.mlx5_modify_hdr* %54, %struct.mlx5_modify_hdr** %5, align 8
  br label %55

55:                                               ; preds = %53, %48, %27, %18
  %56 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %5, align 8
  ret %struct.mlx5_modify_hdr* %56
}

declare dso_local %struct.mlx5_flow_root_namespace* @get_root_namespace(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_modify_hdr* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_modify_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_modify_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
