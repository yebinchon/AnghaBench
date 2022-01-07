; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_port_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_port_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.team_port* }
%struct.team_port = type { i32 }
%struct.lb_port_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @lb_port_stats_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_port_stats_get(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_gsetter_ctx*, align 8
  %5 = alloca %struct.team_port*, align 8
  %6 = alloca %struct.lb_port_priv*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %4, align 8
  %7 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.team_port*, %struct.team_port** %10, align 8
  store %struct.team_port* %11, %struct.team_port** %5, align 8
  %12 = load %struct.team_port*, %struct.team_port** %5, align 8
  %13 = call %struct.lb_port_priv* @get_lb_port_priv(%struct.team_port* %12)
  store %struct.lb_port_priv* %13, %struct.lb_port_priv** %6, align 8
  %14 = load %struct.lb_port_priv*, %struct.lb_port_priv** %6, align 8
  %15 = getelementptr inbounds %struct.lb_port_priv, %struct.lb_port_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32* %16, i32** %20, align 8
  %21 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  ret i32 0
}

declare dso_local %struct.lb_port_priv* @get_lb_port_priv(%struct.team_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
