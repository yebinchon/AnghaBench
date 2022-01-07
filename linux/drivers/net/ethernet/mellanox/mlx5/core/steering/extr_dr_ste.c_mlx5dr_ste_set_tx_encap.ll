; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_set_tx_encap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_set_tx_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ste_sx_transmit = common dso_local global i32 0, align 4
@action_type = common dso_local global i32 0, align 4
@DR_STE_ACTION_TYPE_ENCAP_L3 = common dso_local global i32 0, align 4
@DR_STE_ACTION_TYPE_ENCAP = common dso_local global i32 0, align 4
@action_description = common dso_local global i32 0, align 4
@encap_pointer_vlan_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_ste_set_tx_encap(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @ste_sx_transmit, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @action_type, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @DR_STE_ACTION_TYPE_ENCAP_L3, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @DR_STE_ACTION_TYPE_ENCAP, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @MLX5_SET(i32 %9, i8* %10, i32 %11, i32 %19)
  %21 = load i32, i32* @ste_sx_transmit, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @action_description, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 2
  %26 = call i32 @MLX5_SET(i32 %21, i8* %22, i32 %23, i32 %25)
  %27 = load i32, i32* @ste_sx_transmit, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @encap_pointer_vlan_data, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @MLX5_SET(i32 %27, i8* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
