; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_remove_middle_ste.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_remove_middle_ste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32, i32 }
%struct.mlx5dr_ste_send_info = type { i32 }
%struct.list_head = type { i32 }
%struct.mlx5dr_ste_htbl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@miss_list_node = common dso_local global i32 0, align 4
@DR_STE_SIZE_REDUCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_ste*, %struct.mlx5dr_ste_send_info*, %struct.list_head*, %struct.mlx5dr_ste_htbl*)* @dr_ste_remove_middle_ste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_remove_middle_ste(%struct.mlx5dr_ste* %0, %struct.mlx5dr_ste_send_info* %1, %struct.list_head* %2, %struct.mlx5dr_ste_htbl* %3) #0 {
  %5 = alloca %struct.mlx5dr_ste*, align 8
  %6 = alloca %struct.mlx5dr_ste_send_info*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %9 = alloca %struct.mlx5dr_ste*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5dr_ste* %0, %struct.mlx5dr_ste** %5, align 8
  store %struct.mlx5dr_ste_send_info* %1, %struct.mlx5dr_ste_send_info** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.mlx5dr_ste_htbl* %3, %struct.mlx5dr_ste_htbl** %8, align 8
  %11 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %5, align 8
  %12 = load i32, i32* @miss_list_node, align 4
  %13 = call %struct.mlx5dr_ste* @list_prev_entry(%struct.mlx5dr_ste* %11, i32 %12)
  store %struct.mlx5dr_ste* %13, %struct.mlx5dr_ste** %9, align 8
  %14 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %15 = icmp ne %struct.mlx5dr_ste* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx5dr_ste_get_miss_addr(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @mlx5dr_ste_set_miss_addr(i32 %28, i32 %29)
  %31 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %32 = load i32, i32* @DR_STE_SIZE_REDUCED, align 4
  %33 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %6, align 8
  %37 = load %struct.list_head*, %struct.list_head** %7, align 8
  %38 = call i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste* %31, i32 %32, i32 0, i32 %35, %struct.mlx5dr_ste_send_info* %36, %struct.list_head* %37, i32 1)
  %39 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %39, i32 0, i32 0
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %8, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.mlx5dr_ste* @list_prev_entry(%struct.mlx5dr_ste*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlx5dr_ste_get_miss_addr(i32) #1

declare dso_local i32 @mlx5dr_ste_set_miss_addr(i32, i32) #1

declare dso_local i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste*, i32, i32, i32, %struct.mlx5dr_ste_send_info*, %struct.list_head*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
