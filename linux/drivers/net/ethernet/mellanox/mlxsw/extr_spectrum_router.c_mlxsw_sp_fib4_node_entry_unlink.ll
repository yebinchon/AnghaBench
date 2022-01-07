; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_node_entry_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_node_entry_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib4_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib4_entry*)* @mlxsw_sp_fib4_node_entry_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib4_node_entry_unlink(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib4_entry* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fib4_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_fib4_entry* %1, %struct.mlxsw_sp_fib4_entry** %4, align 8
  %5 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %6 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %4, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %6, i32 0, i32 0
  %8 = call i32 @mlxsw_sp_fib_node_entry_del(%struct.mlxsw_sp* %5, %struct.TYPE_3__* %7)
  %9 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %4, align 8
  %10 = call i32 @mlxsw_sp_fib4_node_list_remove(%struct.mlxsw_sp_fib4_entry* %9)
  %11 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %19 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %19, i32 0, i32 0
  %21 = call i32 @mlxsw_sp_fib_entry_decap_fini(%struct.mlxsw_sp* %18, %struct.TYPE_3__* %20)
  br label %22

22:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @mlxsw_sp_fib_node_entry_del(%struct.mlxsw_sp*, %struct.TYPE_3__*) #1

declare dso_local i32 @mlxsw_sp_fib4_node_list_remove(%struct.mlxsw_sp_fib4_entry*) #1

declare dso_local i32 @mlxsw_sp_fib_entry_decap_fini(%struct.mlxsw_sp*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
