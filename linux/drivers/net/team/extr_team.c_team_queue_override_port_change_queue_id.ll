; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_queue_override_port_change_queue_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_queue_override_port_change_queue_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_port = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*, %struct.team_port*, i8*)* @team_queue_override_port_change_queue_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @team_queue_override_port_change_queue_id(%struct.team* %0, %struct.team_port* %1, i8* %2) #0 {
  %4 = alloca %struct.team*, align 8
  %5 = alloca %struct.team_port*, align 8
  %6 = alloca i8*, align 8
  store %struct.team* %0, %struct.team** %4, align 8
  store %struct.team_port* %1, %struct.team_port** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.team_port*, %struct.team_port** %5, align 8
  %8 = call i64 @team_port_enabled(%struct.team_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.team*, %struct.team** %4, align 8
  %12 = load %struct.team_port*, %struct.team_port** %5, align 8
  %13 = call i32 @__team_queue_override_port_del(%struct.team* %11, %struct.team_port* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.team_port*, %struct.team_port** %5, align 8
  %16 = getelementptr inbounds %struct.team_port, %struct.team_port* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.team*, %struct.team** %4, align 8
  %18 = load %struct.team_port*, %struct.team_port** %5, align 8
  %19 = call i32 @__team_queue_override_port_add(%struct.team* %17, %struct.team_port* %18)
  %20 = load %struct.team*, %struct.team** %4, align 8
  %21 = call i32 @__team_queue_override_enabled_check(%struct.team* %20)
  br label %26

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.team_port*, %struct.team_port** %5, align 8
  %25 = getelementptr inbounds %struct.team_port, %struct.team_port* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %22, %10
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
