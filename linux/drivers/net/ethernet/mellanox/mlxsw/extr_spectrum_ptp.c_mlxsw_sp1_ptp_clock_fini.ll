; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_clock_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_clock_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_clock = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp1_ptp_clock_fini(%struct.mlxsw_sp_ptp_clock* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_ptp_clock*, align 8
  store %struct.mlxsw_sp_ptp_clock* %0, %struct.mlxsw_sp_ptp_clock** %2, align 8
  %3 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %2, align 8
  %4 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ptp_clock_unregister(i32 %5)
  %7 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %7, i32 0, i32 0
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %2, align 8
  %11 = call i32 @kfree(%struct.mlxsw_sp_ptp_clock* %10)
  ret void
}

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_ptp_clock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
