; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_flow_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_flow_steering = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rhash_fte = common dso_local global i32 0, align 4
@FS_TYPE_FLOW_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_group* (%struct.mlx5_flow_steering*, i32, i8*, i32, i32)* @alloc_flow_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_group* @alloc_flow_group(%struct.mlx5_flow_steering* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_flow_group*, align 8
  %7 = alloca %struct.mlx5_flow_steering*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_flow_group*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_flow_steering* %0, %struct.mlx5_flow_steering** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx5_flow_group* @kmem_cache_zalloc(i32 %16, i32 %17)
  store %struct.mlx5_flow_group* %18, %struct.mlx5_flow_group** %12, align 8
  %19 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %20 = icmp ne %struct.mlx5_flow_group* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %23)
  store %struct.mlx5_flow_group* %24, %struct.mlx5_flow_group** %6, align 8
  br label %66

25:                                               ; preds = %5
  %26 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %26, i32 0, i32 5
  %28 = call i32 @rhashtable_init(i32* %27, i32* @rhash_fte)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %36 = call i32 @kmem_cache_free(i32 %34, %struct.mlx5_flow_group* %35)
  %37 = load i32, i32* %13, align 4
  %38 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %37)
  store %struct.mlx5_flow_group* %38, %struct.mlx5_flow_group** %6, align 8
  br label %66

39:                                               ; preds = %25
  %40 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %40, i32 0, i32 4
  %42 = call i32 @ida_init(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %45 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @memcpy(i32* %49, i8* %50, i32 4)
  %52 = load i32, i32* @FS_TYPE_FLOW_GROUP, align 4
  %53 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  %63 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  %64 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %12, align 8
  store %struct.mlx5_flow_group* %65, %struct.mlx5_flow_group** %6, align 8
  br label %66

66:                                               ; preds = %39, %31, %21
  %67 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  ret %struct.mlx5_flow_group* %67
}

declare dso_local %struct.mlx5_flow_group* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_group* @ERR_PTR(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.mlx5_flow_group*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
