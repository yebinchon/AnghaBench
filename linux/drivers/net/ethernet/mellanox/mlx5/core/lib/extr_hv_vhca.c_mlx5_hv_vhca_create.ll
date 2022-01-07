; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca = type { i32, %struct.mlx5_core_dev*, i32 }
%struct.mlx5_core_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mlx5_hv_vhca\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_hv_vhca* @mlx5_hv_vhca_create(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_hv_vhca*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_hv_vhca*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_hv_vhca* null, %struct.mlx5_hv_vhca** %4, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlx5_hv_vhca* @kzalloc(i32 24, i32 %5)
  store %struct.mlx5_hv_vhca* %6, %struct.mlx5_hv_vhca** %4, align 8
  %7 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %4, align 8
  %8 = icmp ne %struct.mlx5_hv_vhca* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.mlx5_hv_vhca* @ERR_PTR(i32 %11)
  store %struct.mlx5_hv_vhca* %12, %struct.mlx5_hv_vhca** %2, align 8
  br label %35

13:                                               ; preds = %1
  %14 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %4, align 8
  %23 = call i32 @kfree(%struct.mlx5_hv_vhca* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.mlx5_hv_vhca* @ERR_PTR(i32 %25)
  store %struct.mlx5_hv_vhca* %26, %struct.mlx5_hv_vhca** %2, align 8
  br label %35

27:                                               ; preds = %13
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %29, i32 0, i32 1
  store %struct.mlx5_core_dev* %28, %struct.mlx5_core_dev** %30, align 8
  %31 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %31, i32 0, i32 0
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %4, align 8
  store %struct.mlx5_hv_vhca* %34, %struct.mlx5_hv_vhca** %2, align 8
  br label %35

35:                                               ; preds = %27, %21, %9
  %36 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %2, align 8
  ret %struct.mlx5_hv_vhca* %36
}

declare dso_local %struct.mlx5_hv_vhca* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_hv_vhca* @ERR_PTR(i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @kfree(%struct.mlx5_hv_vhca*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
