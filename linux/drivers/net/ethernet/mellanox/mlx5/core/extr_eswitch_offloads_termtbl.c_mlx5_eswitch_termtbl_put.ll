; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_termtbl_handle = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_eswitch_termtbl_put(%struct.mlx5_eswitch* %0, %struct.mlx5_termtbl_handle* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_termtbl_handle*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.mlx5_termtbl_handle* %1, %struct.mlx5_termtbl_handle** %4, align 8
  %5 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %15, i32 0, i32 3
  %17 = call i32 @hash_del(i32* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx5_del_flow_rules(i32 %30)
  %32 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlx5_destroy_flow_table(i32 %34)
  %36 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %4, align 8
  %37 = call i32 @kfree(%struct.mlx5_termtbl_handle* %36)
  br label %38

38:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_del_flow_rules(i32) #1

declare dso_local i32 @mlx5_destroy_flow_table(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_termtbl_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
