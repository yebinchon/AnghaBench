; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_port** }
%struct.mlxsw_sp_port = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLXSW_PORT_SWID_DISABLED_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i64)* @mlxsw_sp_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_remove(%struct.mlxsw_sp* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, i64 %9
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %10, align 8
  store %struct.mlxsw_sp_port* %11, %struct.mlxsw_sp_port** %5, align 8
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %21 = call i32 @mlxsw_sp_port_ptp_clear(%struct.mlxsw_sp_port* %20)
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %27 = call i32 @mlxsw_core_port_clear(i32 %24, i64 %25, %struct.mlxsw_sp* %26)
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @unregister_netdev(i32 %30)
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 1
  %34 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %34, i64 %35
  store %struct.mlxsw_sp_port* null, %struct.mlxsw_sp_port** %36, align 8
  %37 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %38 = call i32 @mlxsw_sp_port_vlan_flush(%struct.mlxsw_sp_port* %37, i32 1)
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %40 = call i32 @mlxsw_sp_port_nve_fini(%struct.mlxsw_sp_port* %39)
  %41 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %42 = call i32 @mlxsw_sp_tc_qdisc_fini(%struct.mlxsw_sp_port* %41)
  %43 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %44 = call i32 @mlxsw_sp_port_fids_fini(%struct.mlxsw_sp_port* %43)
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %46 = call i32 @mlxsw_sp_port_dcb_fini(%struct.mlxsw_sp_port* %45)
  %47 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %48 = call i32 @mlxsw_sp_port_tc_mc_mode_set(%struct.mlxsw_sp_port* %47, i32 0)
  %49 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %50 = load i32, i32* @MLXSW_PORT_SWID_DISABLED_PORT, align 4
  %51 = call i32 @mlxsw_sp_port_swid_set(%struct.mlxsw_sp_port* %49, i32 %50)
  %52 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %53 = call i32 @mlxsw_sp_port_module_unmap(%struct.mlxsw_sp_port* %52)
  %54 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kfree(i32 %56)
  %58 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @free_percpu(i32 %60)
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %62, i32 0, i32 1
  %64 = call i32 @list_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ON_ONCE(i32 %67)
  %69 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @free_netdev(i32 %71)
  %73 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @mlxsw_core_port_fini(i32 %75, i64 %76)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mlxsw_sp_port_ptp_clear(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_core_port_clear(i32, i64, %struct.mlxsw_sp*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_flush(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_nve_fini(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_tc_qdisc_fini(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_fids_fini(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_dcb_fini(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_tc_mc_mode_set(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_swid_set(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_module_unmap(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @mlxsw_core_port_fini(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
