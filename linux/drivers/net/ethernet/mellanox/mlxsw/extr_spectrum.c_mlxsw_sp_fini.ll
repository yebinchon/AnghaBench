; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_sp = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i64)*, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_core*)* @mlxsw_sp_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fini(%struct.mlxsw_core* %0) #0 {
  %2 = alloca %struct.mlxsw_core*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %2, align 8
  %4 = load %struct.mlxsw_core*, %struct.mlxsw_core** %2, align 8
  %5 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %4)
  store %struct.mlxsw_sp* %5, %struct.mlxsw_sp** %3, align 8
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %7 = call i32 @mlxsw_sp_ports_remove(%struct.mlxsw_sp* %6)
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = call i32 @mlxsw_sp_dpipe_fini(%struct.mlxsw_sp* %8)
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 3
  %12 = call i32 @unregister_netdevice_notifier(i32* %11)
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i64)*, i32 (i64)** %30, align 8
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 %31(i64 %34)
  br label %36

36:                                               ; preds = %17, %1
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %38 = call i32 @mlxsw_sp_router_fini(%struct.mlxsw_sp* %37)
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %40 = call i32 @mlxsw_sp_acl_fini(%struct.mlxsw_sp* %39)
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %42 = call i32 @mlxsw_sp_nve_fini(%struct.mlxsw_sp* %41)
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %44 = call i32 @mlxsw_sp_afa_fini(%struct.mlxsw_sp* %43)
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %46 = call i32 @mlxsw_sp_counter_pool_fini(%struct.mlxsw_sp* %45)
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %48 = call i32 @mlxsw_sp_switchdev_fini(%struct.mlxsw_sp* %47)
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %50 = call i32 @mlxsw_sp_span_fini(%struct.mlxsw_sp* %49)
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %52 = call i32 @mlxsw_sp_lag_fini(%struct.mlxsw_sp* %51)
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %54 = call i32 @mlxsw_sp_buffers_fini(%struct.mlxsw_sp* %53)
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %56 = call i32 @mlxsw_sp_devlink_traps_fini(%struct.mlxsw_sp* %55)
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %58 = call i32 @mlxsw_sp_traps_fini(%struct.mlxsw_sp* %57)
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %60 = call i32 @mlxsw_sp_fids_fini(%struct.mlxsw_sp* %59)
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %62 = call i32 @mlxsw_sp_kvdl_fini(%struct.mlxsw_sp* %61)
  ret void
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_sp_ports_remove(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @unregister_netdevice_notifier(i32*) #1

declare dso_local i32 @mlxsw_sp_router_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_acl_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_nve_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_afa_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_counter_pool_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_switchdev_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_span_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_lag_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_buffers_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_devlink_traps_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_traps_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_fids_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_kvdl_fini(%struct.mlxsw_sp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
