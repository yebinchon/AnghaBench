; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib4_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib4_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.fib_entry_notifier_info = type { i32 }
%struct.mlxsw_sp_fib4_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_fib_node* }
%struct.mlxsw_sp_fib_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.fib_entry_notifier_info*)* @mlxsw_sp_router_fib4_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_router_fib4_del(%struct.mlxsw_sp* %0, %struct.fib_entry_notifier_info* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.fib_entry_notifier_info*, align 8
  %5 = alloca %struct.mlxsw_sp_fib4_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_node*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.fib_entry_notifier_info* %1, %struct.fib_entry_notifier_info** %4, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %16 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %4, align 8
  %17 = call %struct.mlxsw_sp_fib4_entry* @mlxsw_sp_fib4_entry_lookup(%struct.mlxsw_sp* %15, %struct.fib_entry_notifier_info* %16)
  store %struct.mlxsw_sp_fib4_entry* %17, %struct.mlxsw_sp_fib4_entry** %5, align 8
  %18 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %5, align 8
  %19 = icmp ne %struct.mlxsw_sp_fib4_entry* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %39

25:                                               ; preds = %14
  %26 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %28, align 8
  store %struct.mlxsw_sp_fib_node* %29, %struct.mlxsw_sp_fib_node** %6, align 8
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %31 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %5, align 8
  %32 = call i32 @mlxsw_sp_fib4_node_entry_unlink(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_fib4_entry* %31)
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %34 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %5, align 8
  %35 = call i32 @mlxsw_sp_fib4_entry_destroy(%struct.mlxsw_sp* %33, %struct.mlxsw_sp_fib4_entry* %34)
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %37 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %6, align 8
  %38 = call i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp* %36, %struct.mlxsw_sp_fib_node* %37)
  br label %39

39:                                               ; preds = %25, %24, %13
  ret void
}

declare dso_local %struct.mlxsw_sp_fib4_entry* @mlxsw_sp_fib4_entry_lookup(%struct.mlxsw_sp*, %struct.fib_entry_notifier_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_fib4_node_entry_unlink(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib4_entry*) #1

declare dso_local i32 @mlxsw_sp_fib4_entry_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib4_entry*) #1

declare dso_local i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
