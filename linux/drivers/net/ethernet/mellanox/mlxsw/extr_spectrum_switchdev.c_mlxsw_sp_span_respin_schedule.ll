; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_span_respin_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_span_respin_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_span_respin_work = type { i32, %struct.mlxsw_sp* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@mlxsw_sp_span_respin_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*)* @mlxsw_sp_span_respin_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_span_respin_schedule(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.mlxsw_sp_span_respin_work*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.mlxsw_sp_span_respin_work* @kzalloc(i32 16, i32 %4)
  store %struct.mlxsw_sp_span_respin_work* %5, %struct.mlxsw_sp_span_respin_work** %3, align 8
  %6 = load %struct.mlxsw_sp_span_respin_work*, %struct.mlxsw_sp_span_respin_work** %3, align 8
  %7 = icmp ne %struct.mlxsw_sp_span_respin_work* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.mlxsw_sp_span_respin_work*, %struct.mlxsw_sp_span_respin_work** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_span_respin_work, %struct.mlxsw_sp_span_respin_work* %10, i32 0, i32 0
  %12 = load i32, i32* @mlxsw_sp_span_respin_work, align 4
  %13 = call i32 @INIT_WORK(i32* %11, i32 %12)
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %15 = load %struct.mlxsw_sp_span_respin_work*, %struct.mlxsw_sp_span_respin_work** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_span_respin_work, %struct.mlxsw_sp_span_respin_work* %15, i32 0, i32 1
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %16, align 8
  %17 = load %struct.mlxsw_sp_span_respin_work*, %struct.mlxsw_sp_span_respin_work** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_span_respin_work, %struct.mlxsw_sp_span_respin_work* %17, i32 0, i32 0
  %19 = call i32 @mlxsw_core_schedule_work(i32* %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.mlxsw_sp_span_respin_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mlxsw_core_schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
