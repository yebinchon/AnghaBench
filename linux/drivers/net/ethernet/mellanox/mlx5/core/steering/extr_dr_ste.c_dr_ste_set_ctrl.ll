; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_htbl = type { i32, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }

@DR_CHUNK_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_ste_htbl*)* @dr_ste_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_set_ctrl(%struct.mlx5dr_ste_htbl* %0) #0 {
  %2 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %3 = alloca %struct.mlx5dr_ste_htbl_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5dr_ste_htbl* %0, %struct.mlx5dr_ste_htbl** %2, align 8
  %5 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %5, i32 0, i32 1
  store %struct.mlx5dr_ste_htbl_ctrl* %6, %struct.mlx5dr_ste_htbl_ctrl** %3, align 8
  %7 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DR_CHUNK_SIZE_MAX, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlx5dr_icm_pool_chunk_size_to_entries(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = sdiv i32 %26, 2
  %28 = load %struct.mlx5dr_ste_htbl_ctrl*, %struct.mlx5dr_ste_htbl_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @mlx5dr_icm_pool_chunk_size_to_entries(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
