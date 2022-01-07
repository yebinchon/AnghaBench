; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_destroy_flow_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_destroy_flow_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { i32 }
%struct.mlx5_flow_handle = type { %struct.mlx5_flow_handle**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx5_flow_destination = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_fte*, %struct.mlx5_flow_handle*, %struct.mlx5_flow_destination*, i32)* @destroy_flow_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_flow_handle(%struct.fs_fte* %0, %struct.mlx5_flow_handle* %1, %struct.mlx5_flow_destination* %2, i32 %3) #0 {
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca %struct.mlx5_flow_handle*, align 8
  %7 = alloca %struct.mlx5_flow_destination*, align 8
  %8 = alloca i32, align 4
  store %struct.fs_fte* %0, %struct.fs_fte** %5, align 8
  store %struct.mlx5_flow_handle* %1, %struct.mlx5_flow_handle** %6, align 8
  store %struct.mlx5_flow_destination* %2, %struct.mlx5_flow_destination** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %48, %4
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %8, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %14, i32 0, i32 0
  %16 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %16, i64 %18
  %20 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %19, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i64 @refcount_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %13
  %26 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %27 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %30, i32 0, i32 0
  %32 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %32, i64 %34
  %36 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %35, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %40, i32 0, i32 0
  %42 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %42, i64 %44
  %46 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %45, align 8
  %47 = call i32 @kfree(%struct.mlx5_flow_handle* %46)
  br label %48

48:                                               ; preds = %25, %13
  br label %9

49:                                               ; preds = %9
  %50 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  %51 = call i32 @kfree(%struct.mlx5_flow_handle* %50)
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
