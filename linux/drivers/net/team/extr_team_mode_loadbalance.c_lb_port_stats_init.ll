; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_port_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_port_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_option_inst_info = type { %struct.team_port* }
%struct.team_port = type { i32 }
%struct.lb_port_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.team_option_inst_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_option_inst_info*)* @lb_port_stats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_port_stats_init(%struct.team* %0, %struct.team_option_inst_info* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_option_inst_info*, align 8
  %5 = alloca %struct.team_port*, align 8
  %6 = alloca %struct.lb_port_priv*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_option_inst_info* %1, %struct.team_option_inst_info** %4, align 8
  %7 = load %struct.team_option_inst_info*, %struct.team_option_inst_info** %4, align 8
  %8 = getelementptr inbounds %struct.team_option_inst_info, %struct.team_option_inst_info* %7, i32 0, i32 0
  %9 = load %struct.team_port*, %struct.team_port** %8, align 8
  store %struct.team_port* %9, %struct.team_port** %5, align 8
  %10 = load %struct.team_port*, %struct.team_port** %5, align 8
  %11 = call %struct.lb_port_priv* @get_lb_port_priv(%struct.team_port* %10)
  store %struct.lb_port_priv* %11, %struct.lb_port_priv** %6, align 8
  %12 = load %struct.team_option_inst_info*, %struct.team_option_inst_info** %4, align 8
  %13 = load %struct.lb_port_priv*, %struct.lb_port_priv** %6, align 8
  %14 = getelementptr inbounds %struct.lb_port_priv, %struct.lb_port_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.team_option_inst_info* %12, %struct.team_option_inst_info** %15, align 8
  ret i32 0
}

declare dso_local %struct.lb_port_priv* @get_lb_port_priv(%struct.team_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
