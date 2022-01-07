; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mcast_rejoin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mcast_rejoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*)* @team_mcast_rejoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @team_mcast_rejoin(%struct.team* %0) #0 {
  %2 = alloca %struct.team*, align 8
  store %struct.team* %0, %struct.team** %2, align 8
  %3 = load %struct.team*, %struct.team** %2, align 8
  %4 = getelementptr inbounds %struct.team, %struct.team* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.team*, %struct.team** %2, align 8
  %10 = getelementptr inbounds %struct.team, %struct.team* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_running(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8, %1
  br label %28

15:                                               ; preds = %8
  %16 = load %struct.team*, %struct.team** %2, align 8
  %17 = getelementptr inbounds %struct.team, %struct.team* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.team*, %struct.team** %2, align 8
  %21 = getelementptr inbounds %struct.team, %struct.team* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @atomic_add(i32 %19, i32* %22)
  %24 = load %struct.team*, %struct.team** %2, align 8
  %25 = getelementptr inbounds %struct.team, %struct.team* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @schedule_delayed_work(i32* %26, i32 0)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
