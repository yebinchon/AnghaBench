; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5dr_rule_rx_tx = type { i32 }
%struct.mlx5dr_ste_htbl = type { i32 }
%struct.list_head = type { i32 }

@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_ste_htbl* (%struct.mlx5dr_rule*, %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_ste_htbl*, i32, %struct.list_head*)* @dr_rule_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_ste_htbl* @dr_rule_rehash(%struct.mlx5dr_rule* %0, %struct.mlx5dr_rule_rx_tx* %1, %struct.mlx5dr_ste_htbl* %2, i32 %3, %struct.list_head* %4) #0 {
  %6 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %7 = alloca %struct.mlx5dr_rule*, align 8
  %8 = alloca %struct.mlx5dr_rule_rx_tx*, align 8
  %9 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.mlx5dr_domain*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5dr_rule* %0, %struct.mlx5dr_rule** %7, align 8
  store %struct.mlx5dr_rule_rx_tx* %1, %struct.mlx5dr_rule_rx_tx** %8, align 8
  store %struct.mlx5dr_ste_htbl* %2, %struct.mlx5dr_ste_htbl** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %14 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %19, align 8
  store %struct.mlx5dr_domain* %20, %struct.mlx5dr_domain** %12, align 8
  %21 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlx5dr_icm_next_higher_chunk(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @u32, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %12, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @min_t(i32 %25, i32 %26, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  store %struct.mlx5dr_ste_htbl* null, %struct.mlx5dr_ste_htbl** %6, align 8
  br label %46

38:                                               ; preds = %5
  %39 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %7, align 8
  %40 = load %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_rule_rx_tx** %8, align 8
  %41 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.list_head*, %struct.list_head** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.mlx5dr_ste_htbl* @dr_rule_rehash_htbl(%struct.mlx5dr_rule* %39, %struct.mlx5dr_rule_rx_tx* %40, %struct.mlx5dr_ste_htbl* %41, i32 %42, %struct.list_head* %43, i32 %44)
  store %struct.mlx5dr_ste_htbl* %45, %struct.mlx5dr_ste_htbl** %6, align 8
  br label %46

46:                                               ; preds = %38, %37
  %47 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %6, align 8
  ret %struct.mlx5dr_ste_htbl* %47
}

declare dso_local i32 @mlx5dr_icm_next_higher_chunk(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local %struct.mlx5dr_ste_htbl* @dr_rule_rehash_htbl(%struct.mlx5dr_rule*, %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_ste_htbl*, i32, %struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
