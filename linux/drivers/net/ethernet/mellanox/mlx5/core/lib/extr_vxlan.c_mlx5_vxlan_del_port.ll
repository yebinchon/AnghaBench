; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_vxlan.c_mlx5_vxlan_del_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_vxlan.c_mlx5_vxlan_del_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_vxlan = type { i32, i32, i32, i32 }
%struct.mlx5_vxlan_port = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vxlan_del_port(%struct.mlx5_vxlan* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_vxlan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_vxlan_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_vxlan* %0, %struct.mlx5_vxlan** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.mlx5_vxlan_port* @mlx5_vxlan_lookup_port_locked(%struct.mlx5_vxlan* %14, i32 %15)
  store %struct.mlx5_vxlan_port* %16, %struct.mlx5_vxlan_port** %5, align 8
  %17 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %5, align 8
  %18 = icmp ne %struct.mlx5_vxlan_port* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_vxlan_port, %struct.mlx5_vxlan_port* %23, i32 0, i32 1
  %25 = call i64 @refcount_dec_and_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_vxlan_port, %struct.mlx5_vxlan_port* %28, i32 0, i32 0
  %30 = call i32 @hash_del(i32* %29)
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %33, i32 0, i32 3
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mlx5_vxlan_core_del_port_cmd(i32 %41, i32 %42)
  %44 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %5, align 8
  %45 = call i32 @kfree(%struct.mlx5_vxlan_port* %44)
  %46 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %38, %32
  %51 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mlx5_vxlan_port* @mlx5_vxlan_lookup_port_locked(%struct.mlx5_vxlan*, i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlx5_vxlan_core_del_port_cmd(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_vxlan_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
