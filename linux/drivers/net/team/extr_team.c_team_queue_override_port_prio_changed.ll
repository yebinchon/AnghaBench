; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_queue_override_port_prio_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_queue_override_port_prio_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*, %struct.team_port*)* @team_queue_override_port_prio_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @team_queue_override_port_prio_changed(%struct.team* %0, %struct.team_port* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_port*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_port* %1, %struct.team_port** %4, align 8
  %5 = load %struct.team_port*, %struct.team_port** %4, align 8
  %6 = getelementptr inbounds %struct.team_port, %struct.team_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.team_port*, %struct.team_port** %4, align 8
  %11 = call i64 @team_port_enabled(%struct.team_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  br label %23

14:                                               ; preds = %9
  %15 = load %struct.team*, %struct.team** %3, align 8
  %16 = load %struct.team_port*, %struct.team_port** %4, align 8
  %17 = call i32 @__team_queue_override_port_del(%struct.team* %15, %struct.team_port* %16)
  %18 = load %struct.team*, %struct.team** %3, align 8
  %19 = load %struct.team_port*, %struct.team_port** %4, align 8
  %20 = call i32 @__team_queue_override_port_add(%struct.team* %18, %struct.team_port* %19)
  %21 = load %struct.team*, %struct.team** %3, align 8
  %22 = call i32 @__team_queue_override_enabled_check(%struct.team* %21)
  br label %23

23:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @team_port_enabled(%struct.team_port*) #1

declare dso_local i32 @__team_queue_override_port_del(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @__team_queue_override_port_add(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @__team_queue_override_enabled_check(%struct.team*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
