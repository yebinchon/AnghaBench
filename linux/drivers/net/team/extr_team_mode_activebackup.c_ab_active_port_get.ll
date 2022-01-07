; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_activebackup.c_ab_active_port_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_activebackup.c_ab_active_port_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.team_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @ab_active_port_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab_active_port_get(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_gsetter_ctx*, align 8
  %5 = alloca %struct.team_port*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %4, align 8
  %6 = load %struct.team*, %struct.team** %3, align 8
  %7 = call %struct.TYPE_6__* @ab_priv(%struct.team* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.team*, %struct.team** %3, align 8
  %11 = getelementptr inbounds %struct.team, %struct.team* %10, i32 0, i32 0
  %12 = call i32 @lockdep_is_held(i32* %11)
  %13 = call %struct.team_port* @rcu_dereference_protected(i32 %9, i32 %12)
  store %struct.team_port* %13, %struct.team_port** %5, align 8
  %14 = load %struct.team_port*, %struct.team_port** %5, align 8
  %15 = icmp ne %struct.team_port* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.team_port*, %struct.team_port** %5, align 8
  %18 = getelementptr inbounds %struct.team_port, %struct.team_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %16
  ret i32 0
}

declare dso_local %struct.team_port* @rcu_dereference_protected(i32, i32) #1

declare dso_local %struct.TYPE_6__* @ab_priv(%struct.team*) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
