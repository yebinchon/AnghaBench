; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_domain_destroy(%struct.mlx5dr_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_domain*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  %4 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %4, i32 0, i32 2
  %6 = call i32 @refcount_read(i32* %5)
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mlx5dr_cmd_sync_steering(i32 %14)
  %16 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %17 = call i32 @dr_domain_uninit_cache(%struct.mlx5dr_domain* %16)
  %18 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %19 = call i32 @dr_domain_uninit_resources(%struct.mlx5dr_domain* %18)
  %20 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %21 = call i32 @dr_domain_caps_uninit(%struct.mlx5dr_domain* %20)
  %22 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %22, i32 0, i32 0
  %24 = call i32 @mutex_destroy(i32* %23)
  %25 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %26 = call i32 @kfree(%struct.mlx5dr_domain* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %11, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @mlx5dr_cmd_sync_steering(i32) #1

declare dso_local i32 @dr_domain_uninit_cache(%struct.mlx5dr_domain*) #1

declare dso_local i32 @dr_domain_uninit_resources(%struct.mlx5dr_domain*) #1

declare dso_local i32 @dr_domain_caps_uninit(%struct.mlx5dr_domain*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
