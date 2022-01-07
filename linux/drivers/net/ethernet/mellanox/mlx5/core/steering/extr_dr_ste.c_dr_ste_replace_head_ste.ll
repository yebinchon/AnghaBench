; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_replace_head_ste.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_replace_head_ste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32, i32, %struct.mlx5dr_ste_htbl* }
%struct.mlx5dr_ste_send_info = type { i32 }
%struct.list_head = type { i32 }
%struct.mlx5dr_ste_htbl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DR_STE_SIZE_REDUCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_ste*, %struct.mlx5dr_ste*, %struct.mlx5dr_ste_send_info*, %struct.list_head*, %struct.mlx5dr_ste_htbl*)* @dr_ste_replace_head_ste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_replace_head_ste(%struct.mlx5dr_ste* %0, %struct.mlx5dr_ste* %1, %struct.mlx5dr_ste_send_info* %2, %struct.list_head* %3, %struct.mlx5dr_ste_htbl* %4) #0 {
  %6 = alloca %struct.mlx5dr_ste*, align 8
  %7 = alloca %struct.mlx5dr_ste*, align 8
  %8 = alloca %struct.mlx5dr_ste_send_info*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %11 = alloca %struct.mlx5dr_ste_htbl*, align 8
  store %struct.mlx5dr_ste* %0, %struct.mlx5dr_ste** %6, align 8
  store %struct.mlx5dr_ste* %1, %struct.mlx5dr_ste** %7, align 8
  store %struct.mlx5dr_ste_send_info* %2, %struct.mlx5dr_ste_send_info** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store %struct.mlx5dr_ste_htbl* %4, %struct.mlx5dr_ste_htbl** %10, align 8
  %12 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %12, i32 0, i32 2
  %14 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %13, align 8
  store %struct.mlx5dr_ste_htbl* %14, %struct.mlx5dr_ste_htbl** %11, align 8
  %15 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %19 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %6, align 8
  %20 = call i32 @mlx5dr_rule_update_rule_member(%struct.mlx5dr_ste* %18, %struct.mlx5dr_ste* %19)
  %21 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %6, align 8
  %22 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %23 = call i32 @dr_ste_replace(%struct.mlx5dr_ste* %21, %struct.mlx5dr_ste* %22)
  %24 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %25 = call i32 @mlx5dr_htbl_put(%struct.mlx5dr_ste_htbl* %24)
  %26 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %6, align 8
  %27 = load i32, i32* @DR_STE_SIZE_REDUCED, align 4
  %28 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %8, align 8
  %32 = load %struct.list_head*, %struct.list_head** %9, align 8
  %33 = call i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste* %26, i32 %27, i32 0, i32 %30, %struct.mlx5dr_ste_send_info* %31, %struct.list_head* %32, i32 1)
  %34 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %10, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mlx5dr_rule_update_rule_member(%struct.mlx5dr_ste*, %struct.mlx5dr_ste*) #1

declare dso_local i32 @dr_ste_replace(%struct.mlx5dr_ste*, %struct.mlx5dr_ste*) #1

declare dso_local i32 @mlx5dr_htbl_put(%struct.mlx5dr_ste_htbl*) #1

declare dso_local i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste*, i32, i32, i32, %struct.mlx5dr_ste_send_info*, %struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
