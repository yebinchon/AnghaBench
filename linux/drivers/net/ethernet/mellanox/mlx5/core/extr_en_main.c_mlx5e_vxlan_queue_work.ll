; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_vxlan_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_vxlan_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_vxlan_work = type { i32, i32, %struct.mlx5e_priv* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@mlx5e_vxlan_add_work = common dso_local global i32 0, align 4
@mlx5e_vxlan_del_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i32, i32)* @mlx5e_vxlan_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_vxlan_queue_work(%struct.mlx5e_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_vxlan_work*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.mlx5e_vxlan_work* @kmalloc(i32 16, i32 %8)
  store %struct.mlx5e_vxlan_work* %9, %struct.mlx5e_vxlan_work** %7, align 8
  %10 = load %struct.mlx5e_vxlan_work*, %struct.mlx5e_vxlan_work** %7, align 8
  %11 = icmp ne %struct.mlx5e_vxlan_work* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %39

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.mlx5e_vxlan_work*, %struct.mlx5e_vxlan_work** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5e_vxlan_work, %struct.mlx5e_vxlan_work* %17, i32 0, i32 0
  %19 = load i32, i32* @mlx5e_vxlan_add_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.mlx5e_vxlan_work*, %struct.mlx5e_vxlan_work** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5e_vxlan_work, %struct.mlx5e_vxlan_work* %22, i32 0, i32 0
  %24 = load i32, i32* @mlx5e_vxlan_del_work, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %28 = load %struct.mlx5e_vxlan_work*, %struct.mlx5e_vxlan_work** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5e_vxlan_work, %struct.mlx5e_vxlan_work* %28, i32 0, i32 2
  store %struct.mlx5e_priv* %27, %struct.mlx5e_priv** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mlx5e_vxlan_work*, %struct.mlx5e_vxlan_work** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_vxlan_work, %struct.mlx5e_vxlan_work* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5e_vxlan_work*, %struct.mlx5e_vxlan_work** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5e_vxlan_work, %struct.mlx5e_vxlan_work* %36, i32 0, i32 0
  %38 = call i32 @queue_work(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %26, %12
  ret void
}

declare dso_local %struct.mlx5e_vxlan_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
