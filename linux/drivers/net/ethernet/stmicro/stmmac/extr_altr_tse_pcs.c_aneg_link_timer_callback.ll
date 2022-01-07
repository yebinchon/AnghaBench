; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_altr_tse_pcs.c_aneg_link_timer_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_altr_tse_pcs.c_aneg_link_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tse_pcs = type { i64 }
%struct.timer_list = type { i32 }

@aneg_link_timer = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@pcs = common dso_local global %struct.tse_pcs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @aneg_link_timer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aneg_link_timer_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tse_pcs*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.tse_pcs*, %struct.tse_pcs** %3, align 8
  %5 = ptrtoint %struct.tse_pcs* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @aneg_link_timer, align 4
  %8 = call %struct.tse_pcs* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.tse_pcs* %8, %struct.tse_pcs** %3, align 8
  %9 = load %struct.tse_pcs*, %struct.tse_pcs** %3, align 8
  %10 = getelementptr inbounds %struct.tse_pcs, %struct.tse_pcs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.tse_pcs*, %struct.tse_pcs** %3, align 8
  %16 = call i32 @auto_nego_timer_callback(%struct.tse_pcs* %15)
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.tse_pcs*, %struct.tse_pcs** %3, align 8
  %19 = getelementptr inbounds %struct.tse_pcs, %struct.tse_pcs* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AUTONEG_DISABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.tse_pcs*, %struct.tse_pcs** %3, align 8
  %25 = call i32 @pcs_link_timer_callback(%struct.tse_pcs* %24)
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %14
  ret void
}

declare dso_local %struct.tse_pcs* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @auto_nego_timer_callback(%struct.tse_pcs*) #1

declare dso_local i32 @pcs_link_timer_callback(%struct.tse_pcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
