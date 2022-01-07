; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.team.0*, %struct.team_port*)* }
%struct.team.0 = type opaque
%struct.team_port = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*, %struct.team_port*)* @team_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @team_port_enable(%struct.team* %0, %struct.team_port* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_port*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_port* %1, %struct.team_port** %4, align 8
  %5 = load %struct.team_port*, %struct.team_port** %4, align 8
  %6 = call i64 @team_port_enabled(%struct.team_port* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %51

9:                                                ; preds = %2
  %10 = load %struct.team*, %struct.team** %3, align 8
  %11 = getelementptr inbounds %struct.team, %struct.team* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = sext i32 %12 to i64
  %15 = load %struct.team_port*, %struct.team_port** %4, align 8
  %16 = getelementptr inbounds %struct.team_port, %struct.team_port* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.team_port*, %struct.team_port** %4, align 8
  %18 = getelementptr inbounds %struct.team_port, %struct.team_port* %17, i32 0, i32 1
  %19 = load %struct.team*, %struct.team** %3, align 8
  %20 = load %struct.team_port*, %struct.team_port** %4, align 8
  %21 = getelementptr inbounds %struct.team_port, %struct.team_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @team_port_index_hash(%struct.team* %19, i64 %22)
  %24 = call i32 @hlist_add_head_rcu(i32* %18, i32 %23)
  %25 = load %struct.team*, %struct.team** %3, align 8
  %26 = call i32 @team_adjust_ops(%struct.team* %25)
  %27 = load %struct.team*, %struct.team** %3, align 8
  %28 = load %struct.team_port*, %struct.team_port** %4, align 8
  %29 = call i32 @team_queue_override_port_add(%struct.team* %27, %struct.team_port* %28)
  %30 = load %struct.team*, %struct.team** %3, align 8
  %31 = getelementptr inbounds %struct.team, %struct.team* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.team.0*, %struct.team_port*)*, i32 (%struct.team.0*, %struct.team_port*)** %32, align 8
  %34 = icmp ne i32 (%struct.team.0*, %struct.team_port*)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %9
  %36 = load %struct.team*, %struct.team** %3, align 8
  %37 = getelementptr inbounds %struct.team, %struct.team* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.team.0*, %struct.team_port*)*, i32 (%struct.team.0*, %struct.team_port*)** %38, align 8
  %40 = load %struct.team*, %struct.team** %3, align 8
  %41 = bitcast %struct.team* %40 to %struct.team.0*
  %42 = load %struct.team_port*, %struct.team_port** %4, align 8
  %43 = call i32 %39(%struct.team.0* %41, %struct.team_port* %42)
  br label %44

44:                                               ; preds = %35, %9
  %45 = load %struct.team*, %struct.team** %3, align 8
  %46 = call i32 @team_notify_peers(%struct.team* %45)
  %47 = load %struct.team*, %struct.team** %3, align 8
  %48 = call i32 @team_mcast_rejoin(%struct.team* %47)
  %49 = load %struct.team_port*, %struct.team_port** %4, align 8
  %50 = call i32 @team_lower_state_changed(%struct.team_port* %49)
  br label %51

51:                                               ; preds = %44, %8
  ret void
}

declare dso_local i64 @team_port_enabled(%struct.team_port*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32) #1

declare dso_local i32 @team_port_index_hash(%struct.team*, i64) #1

declare dso_local i32 @team_adjust_ops(%struct.team*) #1

declare dso_local i32 @team_queue_override_port_add(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @team_notify_peers(%struct.team*) #1

declare dso_local i32 @team_mcast_rejoin(%struct.team*) #1

declare dso_local i32 @team_lower_state_changed(%struct.team_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
