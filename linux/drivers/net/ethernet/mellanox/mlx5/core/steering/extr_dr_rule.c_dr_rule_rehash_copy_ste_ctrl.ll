; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash_copy_ste_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash_copy_ste_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i32 }
%struct.mlx5dr_ste = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mlx5dr_ste* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste*, %struct.mlx5dr_ste*)* @dr_rule_rehash_copy_ste_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_rule_rehash_copy_ste_ctrl(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_ste* %2, %struct.mlx5dr_ste* %3) #0 {
  %5 = alloca %struct.mlx5dr_matcher*, align 8
  %6 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %7 = alloca %struct.mlx5dr_ste*, align 8
  %8 = alloca %struct.mlx5dr_ste*, align 8
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %5, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  store %struct.mlx5dr_ste* %2, %struct.mlx5dr_ste** %7, align 8
  store %struct.mlx5dr_ste* %3, %struct.mlx5dr_ste** %8, align 8
  %9 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %12, i32 0, i32 2
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %20 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mlx5dr_ste_is_last_in_rule(%struct.mlx5dr_matcher_rx_tx* %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %27 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.mlx5dr_ste* %26, %struct.mlx5dr_ste** %30, align 8
  br label %31

31:                                               ; preds = %25, %4
  %32 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %32, i32 0, i32 1
  %34 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %34, i32 0, i32 1
  %36 = call i32 @refcount_read(i32* %35)
  %37 = call i32 @refcount_set(i32* %33, i32 %36)
  %38 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %39 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %40 = call i32 @mlx5dr_rule_update_rule_member(%struct.mlx5dr_ste* %38, %struct.mlx5dr_ste* %39)
  %41 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %44, i32 0, i32 0
  %46 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %46, i32 0, i32 0
  %48 = call i32 @list_splice_tail_init(i32* %45, i32* %47)
  ret void
}

declare dso_local i32 @mlx5dr_ste_is_last_in_rule(%struct.mlx5dr_matcher_rx_tx*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @mlx5dr_rule_update_rule_member(%struct.mlx5dr_ste*, %struct.mlx5dr_ste*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
