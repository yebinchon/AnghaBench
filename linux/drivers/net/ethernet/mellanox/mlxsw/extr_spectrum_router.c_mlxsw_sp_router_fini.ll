; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_router_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %3 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %4 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %7 = call i32 @unregister_fib_notifier(i32* %6)
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = call i32 @unregister_netevent_notifier(i32* %11)
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %14 = call i32 @mlxsw_sp_neigh_fini(%struct.mlxsw_sp* %13)
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %16 = call i32 @mlxsw_sp_vrs_fini(%struct.mlxsw_sp* %15)
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %18 = call i32 @mlxsw_sp_mr_fini(%struct.mlxsw_sp* %17)
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %20 = call i32 @mlxsw_sp_lpm_fini(%struct.mlxsw_sp* %19)
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = call i32 @rhashtable_destroy(i32* %24)
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @rhashtable_destroy(i32* %29)
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %32 = call i32 @mlxsw_sp_ipips_fini(%struct.mlxsw_sp* %31)
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %34 = call i32 @mlxsw_sp_rifs_fini(%struct.mlxsw_sp* %33)
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %36 = call i32 @__mlxsw_sp_router_fini(%struct.mlxsw_sp* %35)
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @unregister_inet6addr_notifier(i32* %40)
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @unregister_inetaddr_notifier(i32* %45)
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @kfree(%struct.TYPE_2__* %49)
  ret void
}

declare dso_local i32 @unregister_fib_notifier(i32*) #1

declare dso_local i32 @unregister_netevent_notifier(i32*) #1

declare dso_local i32 @mlxsw_sp_neigh_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_vrs_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_mr_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_lpm_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @mlxsw_sp_ipips_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_rifs_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @__mlxsw_sp_router_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @unregister_inet6addr_notifier(i32*) #1

declare dso_local i32 @unregister_inetaddr_notifier(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
