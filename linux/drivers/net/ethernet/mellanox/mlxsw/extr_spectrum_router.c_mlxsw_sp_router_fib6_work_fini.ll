; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib6_work_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib6_work_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib6_event_work = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_fib6_event_work*)* @mlxsw_sp_router_fib6_work_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_router_fib6_work_fini(%struct.mlxsw_sp_fib6_event_work* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fib6_event_work*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_sp_fib6_event_work* %0, %struct.mlxsw_sp_fib6_event_work** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlxsw_sp_fib6_event_work*, %struct.mlxsw_sp_fib6_event_work** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_fib6_event_work, %struct.mlxsw_sp_fib6_event_work* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.mlxsw_sp_fib6_event_work*, %struct.mlxsw_sp_fib6_event_work** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_fib6_event_work, %struct.mlxsw_sp_fib6_event_work* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mlxsw_sp_rt6_release(i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.mlxsw_sp_fib6_event_work*, %struct.mlxsw_sp_fib6_event_work** %2, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_fib6_event_work, %struct.mlxsw_sp_fib6_event_work* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  ret void
}

declare dso_local i32 @mlxsw_sp_rt6_release(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
