; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.lb_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@lb_options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*)* @lb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lb_exit(%struct.team* %0) #0 {
  %2 = alloca %struct.team*, align 8
  %3 = alloca %struct.lb_priv*, align 8
  store %struct.team* %0, %struct.team** %2, align 8
  %4 = load %struct.team*, %struct.team** %2, align 8
  %5 = call %struct.lb_priv* @get_lb_priv(%struct.team* %4)
  store %struct.lb_priv* %5, %struct.lb_priv** %3, align 8
  %6 = load %struct.team*, %struct.team** %2, align 8
  %7 = load i32, i32* @lb_options, align 4
  %8 = load i32, i32* @lb_options, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = call i32 @team_options_unregister(%struct.team* %6, i32 %7, i32 %9)
  %11 = load %struct.team*, %struct.team** %2, align 8
  %12 = call i32 @lb_bpf_func_free(%struct.team* %11)
  %13 = load %struct.lb_priv*, %struct.lb_priv** %3, align 8
  %14 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  %19 = load %struct.lb_priv*, %struct.lb_priv** %3, align 8
  %20 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @free_percpu(i32 %21)
  %23 = load %struct.lb_priv*, %struct.lb_priv** %3, align 8
  %24 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @kfree(%struct.TYPE_4__* %25)
  ret void
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

declare dso_local i32 @team_options_unregister(%struct.team*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @lb_bpf_func_free(%struct.team*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
