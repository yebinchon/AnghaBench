; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_add_member.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_add_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule_rx_tx = type { i32 }
%struct.mlx5dr_ste = type { i32 }
%struct.mlx5dr_rule_member = type { i32, i32, %struct.mlx5dr_ste* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_ste*)* @dr_rule_add_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_add_member(%struct.mlx5dr_rule_rx_tx* %0, %struct.mlx5dr_ste* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_rule_rx_tx*, align 8
  %5 = alloca %struct.mlx5dr_ste*, align 8
  %6 = alloca %struct.mlx5dr_rule_member*, align 8
  store %struct.mlx5dr_rule_rx_tx* %0, %struct.mlx5dr_rule_rx_tx** %4, align 8
  store %struct.mlx5dr_ste* %1, %struct.mlx5dr_ste** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mlx5dr_rule_member* @kvzalloc(i32 16, i32 %7)
  store %struct.mlx5dr_rule_member* %8, %struct.mlx5dr_rule_member** %6, align 8
  %9 = load %struct.mlx5dr_rule_member*, %struct.mlx5dr_rule_member** %6, align 8
  %10 = icmp ne %struct.mlx5dr_rule_member* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %5, align 8
  %16 = load %struct.mlx5dr_rule_member*, %struct.mlx5dr_rule_member** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_rule_member, %struct.mlx5dr_rule_member* %16, i32 0, i32 2
  store %struct.mlx5dr_ste* %15, %struct.mlx5dr_ste** %17, align 8
  %18 = load %struct.mlx5dr_rule_member*, %struct.mlx5dr_rule_member** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_rule_member, %struct.mlx5dr_rule_member* %18, i32 0, i32 1
  %20 = load %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_rule_rx_tx** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, %struct.mlx5dr_rule_rx_tx* %20, i32 0, i32 0
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  %23 = load %struct.mlx5dr_rule_member*, %struct.mlx5dr_rule_member** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_rule_member, %struct.mlx5dr_rule_member* %23, i32 0, i32 0
  %25 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %14, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mlx5dr_rule_member* @kvzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
