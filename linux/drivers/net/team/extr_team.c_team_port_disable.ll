; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.team.0*, %struct.team_port*)* }
%struct.team.0 = type opaque
%struct.team_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*, %struct.team_port*)* @team_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @team_port_disable(%struct.team* %0, %struct.team_port* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_port*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_port* %1, %struct.team_port** %4, align 8
  %5 = load %struct.team_port*, %struct.team_port** %4, align 8
  %6 = call i32 @team_port_enabled(%struct.team_port* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %46

9:                                                ; preds = %2
  %10 = load %struct.team*, %struct.team** %3, align 8
  %11 = getelementptr inbounds %struct.team, %struct.team* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.team.0*, %struct.team_port*)*, i32 (%struct.team.0*, %struct.team_port*)** %12, align 8
  %14 = icmp ne i32 (%struct.team.0*, %struct.team_port*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.team*, %struct.team** %3, align 8
  %17 = getelementptr inbounds %struct.team, %struct.team* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.team.0*, %struct.team_port*)*, i32 (%struct.team.0*, %struct.team_port*)** %18, align 8
  %20 = load %struct.team*, %struct.team** %3, align 8
  %21 = bitcast %struct.team* %20 to %struct.team.0*
  %22 = load %struct.team_port*, %struct.team_port** %4, align 8
  %23 = call i32 %19(%struct.team.0* %21, %struct.team_port* %22)
  br label %24

24:                                               ; preds = %15, %9
  %25 = load %struct.team_port*, %struct.team_port** %4, align 8
  %26 = getelementptr inbounds %struct.team_port, %struct.team_port* %25, i32 0, i32 1
  %27 = call i32 @hlist_del_rcu(i32* %26)
  %28 = load %struct.team*, %struct.team** %3, align 8
  %29 = load %struct.team_port*, %struct.team_port** %4, align 8
  %30 = getelementptr inbounds %struct.team_port, %struct.team_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__reconstruct_port_hlist(%struct.team* %28, i32 %31)
  %33 = load %struct.team_port*, %struct.team_port** %4, align 8
  %34 = getelementptr inbounds %struct.team_port, %struct.team_port* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 4
  %35 = load %struct.team*, %struct.team** %3, align 8
  %36 = getelementptr inbounds %struct.team, %struct.team* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.team*, %struct.team** %3, align 8
  %40 = load %struct.team_port*, %struct.team_port** %4, align 8
  %41 = call i32 @team_queue_override_port_del(%struct.team* %39, %struct.team_port* %40)
  %42 = load %struct.team*, %struct.team** %3, align 8
  %43 = call i32 @team_adjust_ops(%struct.team* %42)
  %44 = load %struct.team_port*, %struct.team_port** %4, align 8
  %45 = call i32 @team_lower_state_changed(%struct.team_port* %44)
  br label %46

46:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @team_port_enabled(%struct.team_port*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @__reconstruct_port_hlist(%struct.team*, i32) #1

declare dso_local i32 @team_queue_override_port_del(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @team_adjust_ops(%struct.team*) #1

declare dso_local i32 @team_lower_state_changed(%struct.team_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
