; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_activebackup.c_ab_active_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_activebackup.c_ab_active_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_option_inst_info = type { i32 }
%struct.TYPE_2__ = type { %struct.team_option_inst_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_option_inst_info*)* @ab_active_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab_active_port_init(%struct.team* %0, %struct.team_option_inst_info* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_option_inst_info*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_option_inst_info* %1, %struct.team_option_inst_info** %4, align 8
  %5 = load %struct.team_option_inst_info*, %struct.team_option_inst_info** %4, align 8
  %6 = load %struct.team*, %struct.team** %3, align 8
  %7 = call %struct.TYPE_2__* @ab_priv(%struct.team* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.team_option_inst_info* %5, %struct.team_option_inst_info** %8, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @ab_priv(%struct.team*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
