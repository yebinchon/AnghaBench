; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_need_enlarge_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_need_enlarge_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_htbl = type { i64, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i64, i64, i64, i32 }
%struct.mlx5dr_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx5dr_domain_rx_tx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_ste_htbl*, %struct.mlx5dr_domain*, %struct.mlx5dr_domain_rx_tx*)* @dr_rule_need_enlarge_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_need_enlarge_hash(%struct.mlx5dr_ste_htbl* %0, %struct.mlx5dr_domain* %1, %struct.mlx5dr_domain_rx_tx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %8 = alloca %struct.mlx5dr_ste_htbl_ctrl*, align 8
  store %struct.mlx5dr_ste_htbl* %0, %struct.mlx5dr_ste_htbl** %5, align 8
  store %struct.mlx5dr_domain* %1, %struct.mlx5dr_domain** %6, align 8
  store %struct.mlx5dr_domain_rx_tx* %2, %struct.mlx5dr_domain_rx_tx** %7, align 8
  %9 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %9, i32 0, i32 1
  store %struct.mlx5dr_ste_htbl_ctrl* %10, %struct.mlx5dr_ste_htbl_ctrl** %8, align 8
  %11 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.mlx5dr_ste_htbl_ctrl*, %struct.mlx5dr_ste_htbl_ctrl** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %48

26:                                               ; preds = %20
  %27 = load %struct.mlx5dr_ste_htbl_ctrl*, %struct.mlx5dr_ste_htbl_ctrl** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mlx5dr_ste_htbl_ctrl*, %struct.mlx5dr_ste_htbl_ctrl** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.mlx5dr_ste_htbl_ctrl*, %struct.mlx5dr_ste_htbl_ctrl** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlx5dr_ste_htbl_ctrl*, %struct.mlx5dr_ste_htbl_ctrl** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load %struct.mlx5dr_ste_htbl_ctrl*, %struct.mlx5dr_ste_htbl_ctrl** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_ste_htbl_ctrl, %struct.mlx5dr_ste_htbl_ctrl* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %48

47:                                               ; preds = %34, %26
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46, %25, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
