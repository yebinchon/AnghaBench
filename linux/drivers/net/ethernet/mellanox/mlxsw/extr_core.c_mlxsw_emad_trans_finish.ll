; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_trans_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_trans_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_trans = type { i32, i32, i32, i32, %struct.mlxsw_core* }
%struct.mlxsw_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_reg_trans*, i32)* @mlxsw_emad_trans_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_emad_trans_finish(%struct.mlxsw_reg_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_reg_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  store %struct.mlxsw_reg_trans* %0, %struct.mlxsw_reg_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %6, i32 0, i32 4
  %8 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  store %struct.mlxsw_core* %8, %struct.mlxsw_core** %5, align 8
  %9 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_kfree_skb(i32 %11)
  %13 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %17, i32 0, i32 2
  %19 = call i32 @list_del_rcu(i32* %18)
  %20 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %27, i32 0, i32 1
  %29 = call i32 @complete(i32* %28)
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
