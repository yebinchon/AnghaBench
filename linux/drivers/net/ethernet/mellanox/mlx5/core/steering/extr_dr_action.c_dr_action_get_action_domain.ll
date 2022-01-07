; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_get_action_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_get_action_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DR_ACTION_DOMAIN_NIC_INGRESS = common dso_local global i32 0, align 4
@DR_ACTION_DOMAIN_NIC_EGRESS = common dso_local global i32 0, align 4
@MLX5DR_STE_TYPE_RX = common dso_local global i32 0, align 4
@DR_ACTION_DOMAIN_FDB_INGRESS = common dso_local global i32 0, align 4
@DR_ACTION_DOMAIN_FDB_EGRESS = common dso_local global i32 0, align 4
@DR_ACTION_DOMAIN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dr_action_get_action_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_action_get_action_domain(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 128, label %9
    i32 130, label %11
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @DR_ACTION_DOMAIN_NIC_INGRESS, align 4
  store i32 %8, i32* %3, align 4
  br label %22

9:                                                ; preds = %2
  %10 = load i32, i32* @DR_ACTION_DOMAIN_NIC_EGRESS, align 4
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MLX5DR_STE_TYPE_RX, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @DR_ACTION_DOMAIN_FDB_INGRESS, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @DR_ACTION_DOMAIN_FDB_EGRESS, align 4
  store i32 %18, i32* %3, align 4
  br label %22

19:                                               ; preds = %2
  %20 = call i32 @WARN_ON(i32 1)
  %21 = load i32, i32* @DR_ACTION_DOMAIN_MAX, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %17, %15, %9, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
