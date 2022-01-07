; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.team.0*, %struct.team_port*)* }
%struct.team.0 = type opaque
%struct.team_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*, %struct.team_port*)* @team_port_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @team_port_leave(%struct.team* %0, %struct.team_port* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_port*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_port* %1, %struct.team_port** %4, align 8
  %5 = load %struct.team*, %struct.team** %3, align 8
  %6 = getelementptr inbounds %struct.team, %struct.team* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.team.0*, %struct.team_port*)*, i32 (%struct.team.0*, %struct.team_port*)** %7, align 8
  %9 = icmp ne i32 (%struct.team.0*, %struct.team_port*)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.team*, %struct.team** %3, align 8
  %12 = getelementptr inbounds %struct.team, %struct.team* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.team.0*, %struct.team_port*)*, i32 (%struct.team.0*, %struct.team_port*)** %13, align 8
  %15 = load %struct.team*, %struct.team** %3, align 8
  %16 = bitcast %struct.team* %15 to %struct.team.0*
  %17 = load %struct.team_port*, %struct.team_port** %4, align 8
  %18 = call i32 %14(%struct.team.0* %16, %struct.team_port* %17)
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.team*, %struct.team** %3, align 8
  %21 = getelementptr inbounds %struct.team, %struct.team* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_put(i32 %22)
  ret void
}

declare dso_local i32 @dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
